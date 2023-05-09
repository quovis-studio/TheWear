/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension ForecastViewModel {

    mutating func prepareIcon(with dayWeather: WeatherData?) {
            guard let weather = dayWeather,
                  let weatherIcon = weather.icon else {
            icon = ""
            return
        }
        icon = WeatherService.shared.getCorrectIconName(from: weatherIcon)
    }
    
    mutating func prepareLowTemperature(with lowTemp: Decimal?) {
        guard let lowTemp = lowTemp else {
            lowTempC = "-"
            lowTempF = "-"
            return
        }
        lowTempC = "\(lowTemp.int)º"
        lowTempF = "\((lowTemp * 9/5 + 32).int)º"
    }
    
    mutating func prepareHighTemperature(with highTemp: Decimal?) {
        guard let highTemp = highTemp else {
            highTempC = "-"
            highTempF = "-"
            return
        }
        highTempC = "\(highTemp.int)º"
        highTempF = "\((highTemp * 9/5 + 32).int)º"
    }
    
    mutating func prepareWeekday(with datetime: String?, timezone: String) {
        weekday = CalendarAndLocaleService.shared.getShortWeekday(
            from: datetime,
            timezone: timezone
        )
    }
    
}
