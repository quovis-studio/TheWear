/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit
import BackgroundTasks

class BackgroundFetchService {
    
    static let shared = BackgroundFetchService()
    private let identifier = "backgroundFetch"
    
    func register() {
        BGTaskScheduler.shared.register(
            forTaskWithIdentifier: identifier,
            using: nil
        ) { task in
            
            // Вызывается, если система сама заканчивает таск по таймауту
            task.expirationHandler = {
                task.setTaskCompleted(success: false)
            }
            
            var location: Location!
            if LocationService.shared.locationServiceEnabled {
                guard let currentLocation = LocationService.shared.getCurrentLocation() else { return }
                location = currentLocation
            } else {
                guard let cityLocation = LocationService.shared.getNotCurrentLastLocation() else { return }
                location = cityLocation
            }
            
            WeatherService.shared.fetchWeatherForNotifications(for: location)
        }
    }
    
    func submit() {
        do {
            let request = BGAppRefreshTaskRequest(identifier: identifier)
            request.earliestBeginDate = Date().addingTimeInterval(TimeInterval(1))
            try BGTaskScheduler.shared.submit(request)
            
        } catch {
            print("Failed to submit background task: \(error)")
        }
    }
    
    private init() {  }
    
}
