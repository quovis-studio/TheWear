/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WeatherService {
    
    func getCorrectIconName(from icon: String) -> String {
        switch icon {
        case "u00d", "u00n": // Unknown precipitation
            return "r01d"
        case "c04d", "c04n": // Overcast
            return "c04d"
        case "c02d", "c03d": // Cloudy
            return "c02d"
        case "c02n", "c03n": // Cloudy
            return "c02n"
        case "c01d":         // Sunny
            return "c01d"
        case "c01n":         // Clear
            return "c01n"
        case "a01d", "a01n", // Mist
             "a02d", "a02n",
             "a03d", "a03n",
             "a04d", "a04n",
             "a05d", "a05n",
             "a06d", "a06n":
            return "a01d"
        case "s01d", "s01n", // Snow
             "s02d", "s02n",
             "s03d", "s03n",
             "s06d", "s06n":
            return "s01d"
        case "s04d", "s04n", // Sleet
             "s05d", "s05n":
            return "s04d"
        case "r01d", "r01n", // Rain and drizzle
             "d01d", "d01n",
             "r02d", "r02n",
             "d02d", "d02n",
             "r04d", "r04n",
             "f01d", "f01n":
            return "r01d"
        case "d03d", "d03n", // Heavy rain
             "r03d", "r03n",
             "r05d", "r05n",
             "r06d", "r06n":
            return "r03d"
        case "t01d", "t01n", // Thunderstorm with rain
             "t02d", "t02n",
             "t03d", "t03n",
             "t04d", "t04n":
            return "t01d"
        case "t05d", "t05n": // Thunderstorm with hail
            return "t05d"
        case "sunrise":
            return "sunrise"
        case "sunset":
            return "sunset"
        default:
            return ""
        }
    }
    
    func getSunstate(with sunstate: Int?, timezone: String) -> [Int] {
        guard let sunstate = sunstate else { return [0, 0] }
        var calendar = CalendarAndLocaleService.shared.calendarGregorian
        calendar.timeZone = TimeZone(identifier: timezone) ?? TimeZone.autoupdatingCurrent
        let dateOfSunrise = Date(timeIntervalSince1970: TimeInterval(sunstate))
        let hour = Int(calendar.component(.hour, from: dateOfSunrise))
        let minute = Int(calendar.component(.minute, from: dateOfSunrise))
        return [hour, minute]
    }
    
    func getRain(with weatherIcon: String) -> Bool {
        if weatherIcon == "u00d" ||
           weatherIcon == "u00n" ||
           weatherIcon == "r01d" ||
           weatherIcon == "r01n" ||
           weatherIcon == "r02d" ||
           weatherIcon == "r02n" ||
           weatherIcon == "r03d" ||
           weatherIcon == "r03n" ||
           weatherIcon == "r04d" ||
           weatherIcon == "r04n" ||
           weatherIcon == "r05d" ||
           weatherIcon == "r05n" ||
           weatherIcon == "r06d" ||
           weatherIcon == "r06n" ||
           weatherIcon == "f01d" ||
           weatherIcon == "f01n" ||
           weatherIcon == "d01d" ||
           weatherIcon == "d01n" ||
           weatherIcon == "d02d" ||
           weatherIcon == "d02n" ||
           weatherIcon == "d03d" ||
           weatherIcon == "d03n" ||
           weatherIcon == "t01d" ||
           weatherIcon == "t01n" ||
           weatherIcon == "t02d" ||
           weatherIcon == "t02n" ||
           weatherIcon == "t03d" ||
           weatherIcon == "t03n" ||
           weatherIcon == "t04d" ||
           weatherIcon == "t04n" ||
           weatherIcon == "t05d" ||
           weatherIcon == "t05n" {
            return true
        } else {
            return false
        }
    }
    
    func getWeatherColor(with colorCode: String) -> UIColor {
        let weatherColor = Color.weather.self
        
        guard !colorCode.dropFirst(3).contains("n") else {
            return weatherColor.night
        }
        
        switch colorCode {
        case "c01d":
            return weatherColor.sunny
        case "c02d", "c03d":
            return weatherColor.cloudy
        case "c04d":
            return weatherColor.overcast
        case "u00d":
            return weatherColor.precipitation
        case "a01d", "a02d", "a03d", "a04d", "a05d", "a06d":
            return weatherColor.mist
        case "r01d", "r02d", "r04d", "r05d", "f01d", "d01d", "d02d", "d03d":
            return weatherColor.rain
        case "r03d", "r06d":
            return weatherColor.heavyRain
        case "s04d", "s05d":
            return weatherColor.sleet
        case "s01d", "s02d":
            return weatherColor.snow
        case "s03d", "s06d":
            return weatherColor.heavySnow
        case "t01d", "t02d", "t03d", "t04d", "t05d":
            return weatherColor.thunderstorm
        default:
            return weatherColor.sunny
        }
    }
    
}
