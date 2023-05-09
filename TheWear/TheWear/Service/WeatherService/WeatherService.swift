/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

class WeatherService {
    
    static let shared = WeatherService()
    var currentColor = Color.weather.sunny
    
    let current = "https://api.weatherbit.io/v2.0/current/"
    let hours = "https://api.weatherbit.io/v2.0/forecast/hourly"
    let days = "https://api.weatherbit.io/v2.0/forecast/daily"
    
    func getStringLocation(with coordinates: Coordinates) -> String {
        return"?lat=\(coordinates.latitude)&lon=\(coordinates.longitude)"
    }
    
    func getUrlString(with components: String...) -> String {
        var urlString = ""
        components.forEach {urlString += $0}
        urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        urlString = urlString.folding(options: .diacriticInsensitive, locale: .current)
        return urlString
    }
    
    func getAPIKey() -> String {
        if let apiKey = Bundle.main.infoDictionary?["WEATHER_API_KEY"] as? String {
            return "&key=" + apiKey
        } else {
            return ""
        }
    }
    
    private init() {  }
    
}
