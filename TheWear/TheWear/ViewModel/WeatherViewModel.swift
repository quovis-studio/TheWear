/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct WeatherViewModel {
    
    var parts: [PartViewModel]
    var hours: [HourViewModel]
    var forecast: [ForecastViewModel]
    var units: [UnitViewModel]
    var city: String
    
    init(
        parts: [PartViewModel],
        hours: [HourViewModel],
        forecast: [ForecastViewModel],
        units: [UnitViewModel],
        city: String
    ) {
        self.parts = parts
        self.hours = hours
        self.forecast = forecast
        self.units = units
        self.city = city
    }
    
}
