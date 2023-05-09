/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct PartsContainer {
    
    var partsViewModel: [PartViewModel]?
    var unitsViewModel: [UnitViewModel]?
    
    init(
        _ currentWeatherContainer: CurrentWeatherContainer,
        _ hoursWeatherData: [HourWeatherModel],
        _ forecastWeatherData: [ForecastWeatherModel],
        _ timezone: String
    ) {
        prepareParts(
            currentWeatherContainer,
            hoursWeatherData,
            forecastWeatherData,
            timezone
        )
    }
    
}
