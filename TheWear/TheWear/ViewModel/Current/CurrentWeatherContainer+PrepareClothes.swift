/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension CurrentWeatherContainer {

    mutating func prepareClothes(with appTemp: Double?) {
        guard let appTemp = appTemp else { return }
        let clothes = PersonService.shared.configureClothes(with: appTemp)
        topClothes = clothes.top
        bottomClothes = clothes.bottom
        shoes = clothes.shoes
        accessories = clothes.accessories
    }
    
    mutating func prepareRain(with weatherData: WeatherData?) {
        guard let weatherData = weatherData,
              let weatherIcon = weatherData.icon else {
            rain = false
            return
        }
        rain = WeatherService.shared.getRain(with: weatherIcon)
    }
    
}
