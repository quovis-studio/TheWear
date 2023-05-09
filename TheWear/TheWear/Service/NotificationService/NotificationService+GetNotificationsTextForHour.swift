/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension NotificationService {
    
    func getNotificationsTextForHour(
        hours: [HourWeatherModel],
        forecast: [ForecastWeatherModel],
        timeZone: String,
        dayOffset: Int,
        hour: Int,
        day: Int,
        month: Int,
        date : Date
    ) -> String {
        let hourIndex = getNotificationsHourIndex(hour: hour, hours: hours)
        let clothesComment = getClothesComment(hours: hours, hourIndex: hourIndex)
        let temperatureComment = getTemperatureComment(hours: hours, hourIndex: hourIndex)
        let rainSnowComment = getRainSnowComment(hours: hours, hourIndex: hourIndex)
        let windComment = getWindComment(hours: hours, hourIndex: hourIndex)
        return clothesComment + " " + temperatureComment + " " + rainSnowComment + " " + windComment
    }
    
    // Getting hour index
    private func getNotificationsHourIndex(hour: Int, hours: [HourWeatherModel]) -> Int {
        let dateParts = (hours[0].timestamp_local ?? "").split(separator: "T")
        let timeParts = String((dateParts[1])).split(separator: ":")
        let firstHour = Int(timeParts[0]) ?? 0
        
        var hourIndex = Int(hour + 1 - firstHour) > 1 ?  Int(hour + 1 - firstHour) : Int(24 - firstHour + hour + 1)
        if hour == firstHour || (hour == 0) {
            hourIndex = 0
            
        } else if firstHour == hour + 1 || firstHour == 0 && hour == 23 {
            hourIndex = 0
            
        } else if hour == 23 {
            hourIndex = hourIndex + 1
            
        } else if hour > 0 && hour != 0 && hour != 23 {
            hourIndex = hourIndex + (24 - (firstHour == 0 ? 23 : firstHour))
        }
        
        return hourIndex
    }
    
    private func getClothesComment(hours: [HourWeatherModel], hourIndex: Int) -> String {
        let temperature = Int(hours[hourIndex].app_temp ?? 0.0)
        return CommentService.shared.getClothesComment(for: temperature)
    }
    
    // Getting temperature comment
    private func getTemperatureComment(hours: [HourWeatherModel], hourIndex: Int) -> String {
        if UD.shared.retrieve(Key.temperature) == Temperature.celsius.rawValue {
            return "forecast_next_hour".localized + " \(Int(hours[hourIndex].app_temp ?? 0.0))º."
        } else {
            return "forecast_next_hour".localized + " \(Int((hours[hourIndex].app_temp ?? 0.0) * 9/5 + 32))º."
        }
    }
    
    private func getRainSnowComment(hours: [HourWeatherModel], hourIndex: Int) -> String {
        let snowHours = (hours[hourIndex...hourIndex + 1].map {
            ($0.weather?.icon?.prefix(1) ?? "0").contains("s") ? 1 : 0
        }.reduce(0, +)) > 0 ? 1 : 0
        
        let rainHours = (hours[hourIndex...hourIndex + 1].map {
            ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
        }.reduce(0, +) + hours[hourIndex...hourIndex + 1].map {
            ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
        }.reduce(0, +) + hours[hourIndex...hourIndex + 1].map {
            ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
        }.reduce(0, +)) > 0 ? 1 : 0
        
        var rainSnowComment = ""
        if snowHours > 0 && rainHours == 0 {
            rainSnowComment = Comment.snow.forHour
        }else if snowHours == 0 && rainHours > 0 {
            rainSnowComment = Comment.rain.forHour + " " + "umbrella".localized
        }else if snowHours > 0 && rainHours > 0 {
            rainSnowComment = Comment.snow.forHour
        }
        
        return rainSnowComment
    }
    
    private func getWindComment(hours: [HourWeatherModel], hourIndex: Int) -> String {
        return (hours[hourIndex].wind_spd ?? 0.0) > 12 ? Comment.wind.strong + "." : ((hours[hourIndex].wind_spd ?? 0.0) > 20 ? Comment.wind.galeforce + "." : "")
    }
    
    // Archive
    // Getting forecast comment
    private func getForecastForComment(hour: Int, day: Int, date : Date) -> String {
        let hourToShow = getHourToShow(with: hour)
        let shortDate = getShortDate(hour: hour, day: day, date: date)
        return "\("forecast_for".localized) \(hourToShow), \(shortDate):"
    }
    
    private func getHourToShow(with localHour: Int) -> String {
        var hourToShow = ""
        
        if CalendarAndLocaleService.shared.isTwelveTimePreference() {
            if localHour > 11 {
                hourToShow = "\(localHour - 11) PM"
                
            }else if localHour > 0 && localHour < 11 {
                hourToShow = "\(localHour) AM"
                
            }else if localHour == 23 {
                hourToShow = "12 AM"
                
            }else if localHour == 11 {
                hourToShow = "12 PM"
            }
        } else {
            hourToShow = "\(localHour == 23 ? "0" : "")\(localHour == 23 ? 0 : localHour + 1):00"
        }
        
        return hourToShow
    }
    
    private func getShortDate(hour: Int, day: Int, date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "MMM"
        let monthName = dateFormatter.string(from: date)
        return "\(day + (hour == 23 ? 1 : 0))" + " " + monthName
    }
    
}
