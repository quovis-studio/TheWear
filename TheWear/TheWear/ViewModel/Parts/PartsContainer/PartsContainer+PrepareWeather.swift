/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {
    
    func prepareTemperature(with temp: Double?, fahrenheit: Bool = false) -> String {
        guard let temp = temp else { return "-" }
        if !fahrenheit {
            return "\(Int(temp))º"
        } else {
            return "\(Int(temp * 9/5 + 32))º"
        }
    }
    
    func prepareFeelsLike(with appTemp: Double?, fahrenheit: Bool = false) -> String {
        guard let appTemp = appTemp else { return "-" }
        if !fahrenheit {
            return "feels_like".localized + " \(Int(appTemp))º"
        } else {
            return "feels_like".localized + " \(Int(appTemp * 9/5 + 32))º"
        }
    }
    
    func prepareCondition(with weatherData: WeatherData?) -> String {
        guard let weatherData = weatherData, let weatherIcon = weatherData.icon else {
            return "-"
        }
        return weatherIcon.localized
    }
    
    func prepareDescription(with appTemp: Double?) -> String {
        guard let appTemp = appTemp else {
            return "Look outside to get more information"
        }
        return CommentService.shared.getClothesComment(for: Int(appTemp))
    }
    
    func prepareColorCode(with weatherData: WeatherData?) -> String {
        guard let weatherData = weatherData,
              let weatherIcon = weatherData.icon else {
            return "c01d"
        }
        return weatherIcon
    }
    
}
