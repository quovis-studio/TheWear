/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension NotificationService {
    
    func getNotificationTextForAllDay(
        hours: [HourWeatherModel],
        forecast: [ForecastWeatherModel],
        timeZone: String,
        dayOffset: Int,
        hour: Int,
        day: Int,
        month: Int,
        date: Date
    ) -> String {
        let days = getNextDays(hours: hours, timeZone: timeZone)
        let firstHour = days.firstHour
        guard days.dayOne.count != 0 && days.dayTwo.count != 0 && firstHour != -1 else {
            return "check_forecast".localized
        }

        let dayToUse = getDayToUse(dayOne: days.dayOne, dayTwo: days.dayTwo, dayOffset: dayOffset)
        
        let clothesComment = getClothesComment(for: dayToUse)
        let temperatureComment = getTemperatureComment(dayToUse: dayToUse, localHour: hour)
        let rainSnowComment = getRainSnowComment(firstHour: firstHour, dayToUse: dayToUse, dayOffset: dayOffset)
        
        return clothesComment + " " + temperatureComment + " " + rainSnowComment
    }
    
    private func getNextDays(
        hours: [HourWeatherModel],
        timeZone: String
    ) -> (dayOne: [HourWeatherModel], dayTwo: [HourWeatherModel], firstHour: Int) {
        CalendarAndLocaleService.shared.dateformatter.timeZone =  TimeZone(identifier: timeZone) ?? TimeZone.autoupdatingCurrent
        CalendarAndLocaleService.shared.dateformatter.dateFormat =  "yyyy-MM-dd'T'HH:mm:ss"
        
        let dateParts = (hours[0].timestamp_local ?? "").split(separator: "T")
        let timeParts = String((dateParts[1])).split(separator: ":")
        let fistHour = Int(timeParts[0]) ?? -1
        
        var dayOne = [HourWeatherModel]()
        var dayTwo = [HourWeatherModel]()
        let dayOneCount = 24 - fistHour
        var count = 0
        for hour in hours {
            // Берем все часы, относящиеся к текущим суткам
            if count < dayOneCount {
                dayOne.append(hour)
                count = count + 1
            }
            // Добавим следующие 24 часа (следующий день)
            if count >= dayOneCount{
                dayTwo = Array(hours[dayOneCount..<dayOneCount + 24])
                break
            }
        }
        
        return (dayOne: dayOne, dayTwo: dayTwo, firstHour: fistHour)
    }
    
    private func getDayToUse(
        dayOne: [HourWeatherModel],
        dayTwo: [HourWeatherModel],
        dayOffset: Int
    ) -> [HourWeatherModel] {
        var dayToUse = dayOne
        if dayOffset == 1 {
            dayToUse = dayTwo
        }
        return dayToUse
    }
    
    private func getClothesComment(for dayToUse: [HourWeatherModel]) -> String {
        let appTemp = getAverageFeelsLikeTemperature(for: dayToUse)
        return CommentService.shared.getClothesComment(for: appTemp)
    }
    
    private func getAverageFeelsLikeTemperature(for day: [HourWeatherModel]) -> Int {
        let averageFeelsLike = Decimal(day.map {
            $0.app_temp ?? 0.0
        }.reduce(0.0, +))
        return Int(averageFeelsLike.int / day.count)
    }
    
    private func getTemperatureComment(
        dayToUse: [HourWeatherModel],
        localHour: Int
    ) -> String {
        var temperatures = [Int]()
        for day in dayToUse {
            let dateParts = day.timestamp_local?.split(separator: "T")
            let time = String(dateParts![1]).split(separator: ":")
            let hour = Int(time[0]) ?? 0
            if hour > localHour { temperatures.append(Int(day.app_temp ?? 0.0)) }
        }
        
        if UD.shared.retrieve(Key.temperature) == Temperature.celsius.rawValue {
            let minTemp = "min".localized + " \(temperatures.min() ?? 0)º"
            let maxTemp = "max".localized + " \(temperatures.max() ?? 0)º."
            return "forecast_today".localized + ": " + minTemp + ", " + maxTemp
        } else {
            let minTemp = "min".localized + " \((temperatures.min() ?? 0) * 9/5 + 32)º"
            let maxTemp = "max".localized + " \((temperatures.min() ?? 0) * 9/5 + 32)º."
            return "forecast_today".localized + ": " + minTemp + ", " + maxTemp
        }
    }
    
    private func getRainSnowComment(
        firstHour: Int,
        dayToUse: [HourWeatherModel],
        dayOffset: Int
    ) -> String {
        let rain = getRainFactor(firstHour: firstHour, dayToUse: dayToUse, dayOffset: dayOffset)
        let snow = getSnowFactor(firstHour: firstHour, dayToUse: dayToUse, dayOffset: dayOffset)
        var rainSnowComment = ""
        
        let summaryRainFactor = rain.night + rain.morning + rain.day + rain.evening
        let summarySnowFactor = snow.night + snow.morning + snow.day + snow.evening
        
        if summarySnowFactor > 0 {
            if summaryRainFactor == 0 {
                // Пойдет только снег
                if summarySnowFactor == 1 {
                    if snow.night == 1 {
                        rainSnowComment = Comment.snow.night
                    } else if snow.morning == 1 {
                        rainSnowComment = Comment.snow.morning
                    } else if snow.day == 1 {
                        rainSnowComment = Comment.snow.afteroon
                    } else if snow.evening == 1 {
                        rainSnowComment = Comment.snow.evening
                    }
                } else if summarySnowFactor > 1 {
                    rainSnowComment = Comment.snow.allDay
                }
                
            } else {
                // Пойдет дождь со снегом
                rainSnowComment = Comment.snow.withRain
            }
            
        } else {
            // Пойдет только дождь
            if summaryRainFactor == 1 {
                if rain.night == 1 {
                    rainSnowComment = Comment.rain.night
                } else if rain.morning == 1 {
                    rainSnowComment = Comment.rain.morning
                } else if rain.day == 1 {
                    rainSnowComment = Comment.rain.afternoon
                } else if rain.evening == 1 {
                    rainSnowComment = Comment.rain.evening
                }
            } else if summaryRainFactor > 1 {
                rainSnowComment = Comment.rain.allDay
            }
        }
        
        return rainSnowComment
    }
    
    // Archive
    private func getShortDate(day: Int, date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        let monthName = dateFormatter.string(from: date)
        return "\(day) \(monthName)"
    }
    
}
