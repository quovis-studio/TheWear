/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct FeaturesModel: Codable {
    let features: [PropertiesModel]?
}

struct PropertiesModel: Codable {
    let properties: PropertyItemsModel?
}

struct PropertyItemsModel: Codable {
    let name: String?
    let city: String?
    let country: String?
    let lon: Double?
    let lat: Double?
}
