/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WeatherService {
    
    func fetchWeatherForWidget(_ completion: @escaping (CurrentWeatherEntry?) -> ()) {
        guard NetworkService.shared.isConnected else { completion(nil); return }
        guard let location = getLocationForWidget() else { completion(nil); return }
        
        let queue = DispatchQueue(label: "weather_fetch", attributes: .concurrent)
        let group = DispatchGroup()
        
        var currentWeatherEntry: CurrentWeatherEntry?
        
        queue.async(group: group) {
            WeatherService.shared.fetchCurrentWeather(for: location.coordinates) { [weak self] in
                if let current = $0 {
                    let currentWeatherContainer = CurrentWeatherContainer(current)
                    currentWeatherEntry = self?.configureCurrentWeatherEntry(with: currentWeatherContainer)
                }
                group.leave()
            }
        }
        
        group.notify(queue: .global(qos: .utility)) {
            completion(currentWeatherEntry)
        }
    }
    
    private func getLocationForWidget() -> Location? {
        if let location = LocationService.shared.getNotCurrentLastLocation() {
            return location
        } else {
            guard LocationService.shared.locationServiceEnabled else { return nil }
            guard let location = LocationService.shared.getCurrentLocation() else { return nil }
            return location
        }
    }
    
    private func configureCurrentWeatherEntry(with currentWeatherContainer: CurrentWeatherContainer) -> CurrentWeatherEntry? {
        var currentWeatherEntry: CurrentWeatherEntry?
        
        let temperature = UD.shared.isCelsius() ? currentWeatherContainer.tempC : currentWeatherContainer.tempF
        let comment = currentWeatherContainer.descriptionShort
        currentWeatherEntry = CurrentWeatherEntry(date: Date(), temperature: temperature, comment: comment)
        
        return currentWeatherEntry
    }
    
}
