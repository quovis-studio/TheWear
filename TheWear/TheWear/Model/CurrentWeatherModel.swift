/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct CurrentWeatherResponse: Codable {
    let data: [CurrentWeatherModel]?
    let count: Int?
}

struct CurrentWeatherModel: Codable {
    let lat: Double?
    let lon: Double?
    let pres: Double?
    let precip: Double?
    let wind_spd: Double?
    let vis: Double?
    let uv: Double?
    let weather: WeatherData?
    let temp: Double?
    let app_temp: Double?
    let rh: Double?
}

struct WeatherData: Codable {
    let icon: String?
}
