/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {

    func prepareClothes(
        with appTemp: Double?
    ) -> (
        top: [ClothesItem],
        bottom: [ClothesItem],
        shoes: [ClothesItem],
        accessories: [ClothesItem]
    ) {
        return PersonService.shared.configureClothes(with: appTemp)
    }
    
    func prepareRain(with weatherData: WeatherData?) -> Bool {
        guard let weatherData = weatherData,
              let weatherIcon = weatherData.icon else {
            return false
        }
        return WeatherService.shared.getRain(with: weatherIcon)
    }
    
}
