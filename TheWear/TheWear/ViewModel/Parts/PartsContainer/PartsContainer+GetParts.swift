/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {
    
    func getParts(
        with forecastWeatherData: ForecastWeatherModel,
        timezone: String
    ) -> (dayParts: [String], times: [[Double]]) {
        var calendar = CalendarAndLocaleService.shared.calendarGregorian
        calendar.timeZone = TimeZone(identifier: timezone) ?? TimeZone.autoupdatingCurrent
        let hour = Double(calendar.component(.hour, from: Date()))
        let minute = Double(calendar.component(.minute, from: Date()))
        let currentTime = Double(hour + (minute / 60.0))
        
        let sunrise = WeatherService.shared.getSunstate(
            with: forecastWeatherData.sunrise_ts,
            timezone: timezone
        )
        let sunset = WeatherService.shared.getSunstate(
            with: forecastWeatherData.sunset_ts,
            timezone: timezone
        )
        
        var dayParts = [
            DayPart.night.localizedString,
            DayPart.morning.localizedString,
            DayPart.day.localizedString,
            DayPart.evening.localizedString
        ]
        
        let sunriseTime = Double(Double(sunrise[0]) + (Double(sunrise[1]) / 60.0))
        let sunsetTime = Double(Double(sunset[0]) + (Double(sunset[1]) / 60.0))
        
        var times = [[Double]]()
        let defaultPreMorning: Double = 5.0 + 59/60
        let defaultPreDay: Double = 11.0 + 59/60
        let defaultPreEvening: Double = 16.0 + 59/60
        let defaultPreNight: Double = 23.0 + 59/60
        
        times.append([0.0, (sunriseTime < 6.0 ? sunriseTime : defaultPreMorning)])
        times.append([(sunriseTime < 6.0 ? sunriseTime : 6.0), defaultPreDay])
        times.append([12.0, (sunsetTime < 17.0 ? sunsetTime : defaultPreEvening)])
        times.append([(sunsetTime < 17.0 ? sunsetTime : 17.0), defaultPreNight])
        
        for part in 0..<dayParts.count {
            if currentTime >= times[part][0] && currentTime <= times[part][1] {
                dayParts[part] = DayPart.now.localizedString
                // dayParts = Array(dayParts.dropFirst(part))
                break
            }
        }

        // dayParts[0] = DayPart.now.localizedString // Вот тут dayParts иногда пустой
        return (dayParts, times)
    }
    
}
