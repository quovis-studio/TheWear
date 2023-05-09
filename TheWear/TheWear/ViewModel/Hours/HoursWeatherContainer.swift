/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct HoursWeatherContainer {
    
    var hours: [HourViewModel]?
    
    init(
        _ forecastWeatherData: [ForecastWeatherModel],
        _ hoursWeatherData: [HourWeatherModel],
        _ timezone: String
    ) {
        hours = prepareHours(forecastWeatherData, hoursWeatherData, timezone)
    }
    
}
