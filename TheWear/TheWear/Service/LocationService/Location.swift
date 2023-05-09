/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct Location: Codable {
    
    var current: Bool
    var coordinates: Coordinates
    var city: String?
    
    init(current: Bool, coordinates: Coordinates, city: String?) {
        self.current = current
        self.coordinates = coordinates
        self.city = city
    }
    
}

struct Coordinates: Codable {
    
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
}

extension Coordinates: Hashable, Equatable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(latitude)
    }
    
    static func ==(c1: Coordinates, c2: Coordinates) -> Bool {
        return c1.latitude == c2.latitude
    }
    
}
