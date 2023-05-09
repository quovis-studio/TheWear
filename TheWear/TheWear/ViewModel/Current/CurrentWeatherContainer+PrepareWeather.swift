/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension CurrentWeatherContainer {
    
    mutating func prepareTemperature(with temp: Double?) {
        guard let temp = temp else {
            tempC = "-"
            tempF = "-"
            return
        }
        tempC = "\(Int(temp))º"
        tempF = "\(Int(temp * 9/5 + 32))º"
    }
    
    mutating func prepareFeelsLike(with appTemp: Double?) {
        guard let appTemp = appTemp else {
            feelsLikeTempC = "-"
            feelsLikeTempF = "-"
            return
        }
        feelsLikeTempC = "feels_like".localized + " \(Int(appTemp))º"
        feelsLikeTempF = "feels_like".localized + " \(Int(appTemp * 9/5 + 32))º"
    }
    
    mutating func prepareCondition(with weatherData: WeatherData?) {
        guard let weatherData = weatherData,
              let weatherIcon = weatherData.icon else {
            condition = "-"
            return
        }
        condition = weatherIcon.localized
    }
    
    mutating func prepareDescription(with appTemp: Double?) {
        guard let appTemp = appTemp else {
            description = "Look outside to get more information"
            descriptionShort = "Look outside to get more information"
            return
        }
        description = CommentService.shared.getClothesComment(for: Int(appTemp))
        descriptionShort = CommentService.shared.getClothesShortComment(for: Int(appTemp))
    }
    
    mutating func prepareColorCode(with weatherData: WeatherData?) {
        guard let weatherData = weatherData, let weatherIcon = weatherData.icon else {
            return
        }
        colorCode = weatherIcon
    }

}
