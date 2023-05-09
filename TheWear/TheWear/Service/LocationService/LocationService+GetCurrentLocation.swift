/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit
import CoreLocation

extension LocationService {
    
    func getCurrentLocation() -> Location? {
        guard let coordinates = getCoordinates() else { return nil }
        return Location(current: true, coordinates: coordinates, city: nil)
    }
    
    func getCoordinates() -> Coordinates? {
        guard let latitude = manager.location?.coordinate.latitude else { return nil }
        guard let longtitude = manager.location?.coordinate.longitude else { return nil }
        return Coordinates(latitude: latitude, longitude: longtitude)
    }
    
    func getCurrentLocationCity(
        with coordinates: Coordinates,
        _ completion: @escaping (String?) -> Void
    ) {
        let latitude: CLLocationDegrees = coordinates.latitude
        let longitude: CLLocationDegrees = coordinates.longitude
        let location = CLLocation(latitude: latitude, longitude: longitude)
        
        geocoder.reverseGeocodeLocation(location) { placemarks, error in
            guard error == nil, let city = placemarks?.first?.locality else {
                completion(nil)
                return
            }
            completion(city)
        }
    }
    
}
