/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct HoursWeatherResponse: Codable {
    let data: [HourWeatherModel]?
    let city_name: String?
    let timezone: String?
    let lat: Decimal?
    let lon: Decimal?
}

struct HourWeatherModel: Codable {
    let timestamp_utc: String?
    let timestamp_local: String?
    let datetime: String?
    let ts: Double?
    let pres: Double?
    let precip: Double?
    let wind_spd: Double?
    let vis: Double?
    let uv: Double?
    let weather: WeatherData?
    let temp: Double?
    let app_temp: Double?
    let rh: Double?
    let pop: Double?
    let pod: String?
}
