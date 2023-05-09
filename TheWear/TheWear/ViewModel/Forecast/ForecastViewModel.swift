/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct ForecastViewModel {
    
    var weekday = ""
    var icon = ""
    var lowTempC = ""
    var lowTempF = ""
    var highTempC = ""
    var highTempF = ""

    init(
        day: ForecastWeatherModel,
        timezone: String
    ) {
        prepareIcon(with: day.weather)
        prepareLowTemperature(with: day.low_temp)
        prepareHighTemperature(with: day.high_temp)
        prepareWeekday(with: day.datetime, timezone: timezone)
    }
    
}
