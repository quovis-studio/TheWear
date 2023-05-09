/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension HoursWeatherContainer {
    
    func checkForMissingSunsetSunrise(
        timestamp: String?,
        sunrise: [Int],
        sunset: [Int],
        timezone: String
    ) -> (hour: HourViewModel?, index: Int) {
        var calendar = CalendarAndLocaleService.shared.calendarGregorian
        calendar.timeZone = TimeZone(identifier: timezone) ?? TimeZone.autoupdatingCurrent
        let currentHour = Double(calendar.component(.hour, from: Date()))
        let currentMinute = Double(calendar.component(.minute, from: Date()))
        
        let todaySunrise: Double = Double(sunrise[0]) + Double(Double(sunrise[1]) / 60.0)
        let todaySunset: Double = Double(sunset[0]) + Double(Double(sunset[1]) / 60.0)
        
        guard let timestamp = timestamp else {return (nil, 0)}
        let dateParts = timestamp.split(separator: "T")
        let timeParts = String(dateParts[1]).split(separator: ":")
        let hour = Int(timeParts[0]) ?? 0
        
        var index = 0
        
        if Int(currentHour) == Int(todaySunset) || Int(currentHour) == Int(todaySunset) - 1 {
            if hour == Int(todaySunset) + 1 {
                if currentHour == Double(sunset[0]) && currentMinute < Double(sunset[1]) {
                    index = (hour == sunset[0] + 1) ? 0 : 1
                    if sunset[1] == 0 { index -= 1 }
                    return (HourViewModel(
                        hour12: getSunstateFor12HourSystem(with: sunset),
                        hour24: getSunstateFor24HourSystem(with: sunset),
                        icon: "sunset",
                        tempC: "sunset".localized,
                        tempF: "sunset".localized,
                        date: ""), index)
                }
            }
            
        } else if Int(currentHour) == Int(todaySunrise) || Int(currentHour) == Int(todaySunrise) - 1 {
            if hour == Int(todaySunrise) + 1 {
                if currentHour == Double(sunrise[0]) && currentMinute < Double(sunrise[1]) {
                    index = (hour == sunrise[0] + 1) ? 0 : 1
                    if sunset[1] == 0 && index != 0 { index -= 1 }
                    
                    return (HourViewModel(
                        hour12: getSunstateFor12HourSystem(with: sunrise),
                        hour24: getSunstateFor24HourSystem(with: sunrise),
                        icon: "sunrise",
                        tempC: "sunrise".localized,
                        tempF: "sunrise".localized,
                        date: ""), index)
                }
            }
        }
        
        return (nil, 0)
    }
    
}
