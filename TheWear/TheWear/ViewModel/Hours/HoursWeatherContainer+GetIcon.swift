/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension HoursWeatherContainer {

    func getIcon(from hourWeather: WeatherData?) -> String {
        guard let hourWeather = hourWeather, let icon = hourWeather.icon else {
            return ""
        }
        return WeatherService.shared.getCorrectIconName(from: icon)
    }
    
    func changeIconIfNeeded(
        icon: String,
        hourDouble: Double,
        sunrise: [Int],
        sunset: [Int]
    ) -> String {
        var changedIcon = icon
        let sunriseDouble = Double(sunrise[0]) + Double(sunrise[1]) / 60
        let sunsetDouble = Double(sunset[0]) + Double(sunset[1]) / 60
        
        if hourDouble < sunsetDouble && hourDouble > sunriseDouble {
            if icon.last == "n" {
                var prevIcon = icon.dropLast()
                prevIcon.append("d")
                changedIcon = String(prevIcon)
            }
        } else if hourDouble > sunsetDouble || hourDouble < sunriseDouble {
            if icon == "c01d" || icon == "c02d" {
                var prevIcon = icon.dropLast()
                prevIcon.append("n")
                changedIcon = String(prevIcon)
            }
        }
        return changedIcon
    }
    
}
