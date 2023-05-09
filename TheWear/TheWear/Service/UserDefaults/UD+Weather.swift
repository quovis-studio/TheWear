/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension UD {
    
    func saveCurrent(_ value: CurrentWeatherResponse?) {
        do {
            let data = try PropertyListEncoder().encode(value)
            UserDefaults.standard.set(data, forKey: Key.current)
        } catch {
            return
        }
    }
    
    func retrieveCurrent() -> CurrentWeatherResponse? {
        if let data = UserDefaults.standard.data(forKey: Key.current) {
            do {
                let current = try PropertyListDecoder().decode(CurrentWeatherResponse.self, from: data)
                return current
            } catch {
                return nil
            }
        }
        return nil
    }
    
    func saveHours(_ value: [HourWeatherModel]?) {
        do {
            let data = try PropertyListEncoder().encode(value)
            UserDefaults.standard.set(data, forKey: Key.hours)
        } catch {
            return
        }
    }
    
    func retrieveHours() -> [HourWeatherModel]? {
        if let data = UserDefaults.standard.data(forKey: Key.hours) {
            do {
                let hours = try PropertyListDecoder().decode([HourWeatherModel].self, from: data)
                return hours
            } catch {
                return nil
            }
        }
        return nil
    }
    
    func saveForecast(_ value: [ForecastWeatherModel]?) {
        do {
            let data = try PropertyListEncoder().encode(value)
            UserDefaults.standard.set(data, forKey: Key.forecast)
        } catch {
            return
        }
    }
    
    func retrieveForecast() -> [ForecastWeatherModel]? {
        if let data = UserDefaults.standard.data(forKey: Key.forecast) {
            do {
                let forecast = try PropertyListDecoder().decode([ForecastWeatherModel].self, from: data)
                return forecast
            } catch {
                return nil
            }
        }
        return nil
    }
    
}
