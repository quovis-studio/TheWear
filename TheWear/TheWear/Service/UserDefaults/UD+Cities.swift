/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension UD {
    
    func saveCities(_ value: [CityViewModel]) {
        do {
            let data = try JSONEncoder().encode(value)
            UserDefaults.standard.set(data, forKey: Key.savedCities)
        } catch {
            return
        }
    }
    
    func retrieveCities() -> [CityViewModel] {
        if let data = UserDefaults.standard.data(forKey: Key.savedCities) {
            do {
                let cities = try JSONDecoder().decode([CityViewModel].self, from: data)
                return cities
            } catch {
                return []
            }
        }
        return []
    }
    
}
