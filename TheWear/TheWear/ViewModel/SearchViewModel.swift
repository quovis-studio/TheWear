/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct CityViewModel: Codable {
    
    let name: String
    let city: String
    let country: String
    let lat: Double
    let lon: Double
    
    init(_ property: PropertyItemsModel) {
        self.name = "\(property.city!), \(property.country!)"
        self.city = property.city!
        self.country = property.country!
        self.lat = property.lat!
        self.lon = property.lon!
    }
    
}

extension CityViewModel: Hashable, Equatable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func ==(city1: CityViewModel, city2: CityViewModel) -> Bool {
        return city1.name == city2.name
    }
    
}
