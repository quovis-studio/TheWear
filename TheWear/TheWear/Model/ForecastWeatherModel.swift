/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct ForecastWeatherResponse: Codable {
    let city_name: String?
    let timezone: String?
    let lat: Decimal?
    let lon: Decimal?
    let data: [ForecastWeatherModel]?
}

struct ForecastWeatherModel: Codable {
    let sunrise_ts: Int?
    let sunset_ts: Int?
    let wind_spd: Decimal?
    let app_max_temp: Decimal?
    let app_min_temp: Decimal?
    let weather: WeatherData?
    let vis: Decimal?
    let uv: Decimal?
    let rh: Decimal?
    let pop: Decimal?
    let high_temp: Decimal?
    let low_temp: Decimal?
    let datetime: String?
    let pres: Float?
    let temp: Decimal?
    let max_temp: Decimal?
    let min_temp: Decimal?
}
