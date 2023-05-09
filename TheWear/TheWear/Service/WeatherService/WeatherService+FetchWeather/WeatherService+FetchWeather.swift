/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension WeatherService {
    
    func fetchWeather(
        for location: Location,
        _ completion: @escaping (WeatherViewModel?) -> Void
    ) {
        let queue = DispatchQueue(label: "weather_fetch", attributes: .concurrent)
        let group = DispatchGroup()
        
        var timezone: String?
        var completeLocation = location
        var hoursWeatherData: [HourWeatherModel]?
        var forecastWeatherData: [ForecastWeatherModel]?
        
        var currentWeatherContainer: CurrentWeatherContainer?
        var hoursWeatherContainer: HoursWeatherContainer?
        var partsContainer: PartsContainer?
        
        // Fetch current weather
        group.enter()
        queue.async(group: group) {
            WeatherService.shared.fetchCurrentWeather(for: location.coordinates) {
                if let current = $0 {
                    currentWeatherContainer = CurrentWeatherContainer(current)
                }
                group.leave()
            }
        }
        
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
        
        group.notify(queue: .main) {
            
            // Проверяем, что все данные пришли
            guard let forecastWeatherData = forecastWeatherData,
                  let hoursWeatherData = hoursWeatherData,
                  let currentWeatherContainer = currentWeatherContainer,
                  let timezone = timezone,
                  let city = completeLocation.city
            else {
                completion(nil)
                return
            }
            
            // Заполняем forecastViewModel
            let forecastViewModel = forecastWeatherData.map {
                ForecastViewModel(day: $0, timezone: timezone)
            }
            
            // Заполняем hoursViewModel
            hoursWeatherContainer = HoursWeatherContainer(
                forecastWeatherData,
                hoursWeatherData,
                timezone
            )
            let hoursViewModel = hoursWeatherContainer?.hours
            
            // Заполняем partsViewModel и unitsViewModel
            partsContainer = PartsContainer(
                currentWeatherContainer,
                hoursWeatherData,
                forecastWeatherData,
                timezone
            )
            let partsViewModel = partsContainer?.partsViewModel
            let unitsViewModel = partsContainer?.unitsViewModel
            
            // Обновляем уведомления
            UD.shared.save(Key.timeBeforeBackground, Date().timeIntervalSinceReferenceDate)
            NotificationService.shared.configureNotifications(
                hours: hoursWeatherData,
                forecast: forecastWeatherData,
                timeZone: timezone,
                city: city
            )
            
            // Обновляем последнюю локацию
            UD.shared.saveLastLocation(completeLocation)
            
            // Проверяем, что все вьюмодели сформированы
            guard let partsViewModel = partsViewModel,
                  let hoursViewModel = hoursViewModel,
                  let unitsViewModel = unitsViewModel
            else {
                completion(nil)
                return
            }
            
            // Отправляем на обновление интерфейса
            let weatherViewModel = WeatherViewModel(
                parts: partsViewModel,
                hours: hoursViewModel,
                forecast: forecastViewModel,
                units: unitsViewModel,
                city: city
            )
            completion(weatherViewModel)
        }
    }

}
