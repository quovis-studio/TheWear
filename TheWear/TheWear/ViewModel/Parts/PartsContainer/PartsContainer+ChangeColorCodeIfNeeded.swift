/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {

    func changeCodeIfNeeded(
        code: String,
        timeZone: String,
        forecastForDay: ForecastWeatherModel
    ) -> String {
        var calendar = CalendarAndLocaleService.shared.calendarGregorian
        calendar.timeZone = TimeZone(identifier: timeZone) ?? TimeZone.autoupdatingCurrent
        let currentHour = Int(calendar.component(.hour, from: Date()))
        let currentMinute = Int(calendar.component(.minute, from: Date()))
        let sunset = WeatherService.shared.getSunstate(
            with: forecastForDay.sunset_ts,
            timezone: timeZone
        )
        let sunrise = WeatherService.shared.getSunstate(
            with: forecastForDay.sunrise_ts,
            timezone: timeZone
        )
        if currentHour <= sunset[0] &&
            currentMinute < sunset[1] &&
            currentHour >= sunrise[0] &&
            currentMinute > sunrise[1] { // день
            if code.last == "n" {
                var prevIcon = code.dropLast()
                prevIcon.append("d")
                return String(prevIcon)
            }
        } else if (currentHour >= sunset[0] && currentMinute > sunset[1]) ||
                   (currentHour <= sunrise[0] && currentMinute < sunrise[1]) { // ночь
            if code.last == "d" {
                var prevIcon = code.dropLast()
                prevIcon.append("n")
                return String(prevIcon)
            }
        }
        return code
    }
    
}
