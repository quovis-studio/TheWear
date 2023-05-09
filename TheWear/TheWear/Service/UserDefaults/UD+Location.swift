/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension UD {

    func saveLastLocation(_ location: Location) {
        do {
            let data = try JSONEncoder().encode(location)
            UserDefaults.standard.set(data, forKey: Key.lastLocation)
        } catch {
            return
        }
    }
    
    func retrieveLastLocation() -> Location? {
        if let data = UserDefaults.standard.data(forKey: Key.lastLocation) {
            do {
                let city = try JSONDecoder().decode(Location.self, from: data)
                return city
            } catch {
                return nil
            }
        }
        return nil
    }
    
}
