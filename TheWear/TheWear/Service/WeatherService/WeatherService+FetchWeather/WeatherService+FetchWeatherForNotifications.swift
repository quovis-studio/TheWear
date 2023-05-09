/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension WeatherService {
    
    func fetchWeatherForNotifications(for location: Location) {
        let queue = DispatchQueue(label: "weather_fetch", attributes: .concurrent)
        let group = DispatchGroup()
        
        var timezone: String?
        var completeLocation = location
        var hoursWeatherData: [HourWeatherModel]?
        var forecastWeatherData: [ForecastWeatherModel]?
        
        // Fetch hours weather
        group.enter()
        queue.async(group: group) {
            WeatherService.shared.fetchHoursWeather(for: location.coordinates) {
                if let hours = $0 {
                    hoursWeatherData = hours
                    UD.shared.saveHours(hours)
                }
                group.leave()
            }
        }
        
        // Fetch forecast weather
        group.enter()
        queue.async(group: group) {
            WeatherService.shared.fetchForecastWeather(for: location.coordinates) { forecast, forecastTimezone  in
                if let forecast = forecast,
                   let forecastTimezone = forecastTimezone {
                    forecastWeatherData = forecast
                    UD.shared.saveForecast(forecast)
                    timezone = forecastTimezone
                    UD.shared.save(Key.timezone, timezone ?? TimeZone.current.identifier)
                }
                group.leave()
            }
        }
        
        // Fetch city if needed
        group.enter()
        queue.async(group: group) {
            if location.city == nil {
                LocationService.shared.getCurrentLocationCity(
                    with: location.coordinates
                ) { city in
                    if let city = city { completeLocation.city = city }
                    group.leave()
                }
                
            } else {
                group.leave()
            }
        }
        
        group.notify(queue: .global(qos: .utility)) {
            guard let forecastWeatherData = forecastWeatherData,
                  let hoursWeatherData = hoursWeatherData,
                  let timezone = timezone,
                  let city = completeLocation.city
            else { return }
            
            UD.shared.save(Key.timezone, timezone)
            NotificationService.shared.configureNotifications(
                hours: hoursWeatherData,
                forecast: forecastWeatherData,
                timeZone: timezone,
                city: city
            )
        }
    }
    
}
