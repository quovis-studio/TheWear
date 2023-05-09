/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation
import UserNotifications

extension NotificationService {
    
    // Планирование уведомления (на время по таймзоне девайса)
    func scheduleNotification(
        date: Date,
        city: String,
        text: String
    ) {
        let dateCommponents = CalendarAndLocaleService.shared.getComponentsFromDate(date: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateCommponents, repeats: false)
        let content = UNMutableNotificationContent()
        content.body = text
        content.title = "weather_forecast".localized + (city == "" ? "" : ": \(city)")
        content.sound = .default
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    
}
