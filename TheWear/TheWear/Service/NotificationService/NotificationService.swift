/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation
import UserNotifications

class NotificationService {
    
    static let shared = NotificationService()
    let center = UNUserNotificationCenter.current()
    
    // Проверка на доступность уведомлений с точки зрения системы и разрешения пользователя
    func notificationIsAllowed() -> Bool {
        if UD.shared.hasNotificationsPreference() && UD.shared.hasNotificationsPermission() {
            return true
        } else {
            return false
        }
    }
    
    // Запрос на показ уведомлений
    func requestPermission() {
        center.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if !granted {
                UD.shared.save(Key.notificationsPermission, false)
                if UD.shared.retrieve(Key.notificationsPermissionAlertShown) == true {} else {
                    UD.shared.save(Key.notificationsPermissionAlertShown, true)
                    AnalyticsService.shared.sendEvent(.notificationsDenied)
                }
            } else if granted {
                UD.shared.save(Key.notificationsPermission, true)
                if UD.shared.retrieve(Key.notificationsPermissionAlertShown) == true {} else {
                    UD.shared.save(Key.notificationsPermissionAlertShown, true)
                    AnalyticsService.shared.sendEvent(.notificationsAllowed)
                }
            }
        }
    }
    
    // Обновление разрешения на показ уведомлений в UD
    func updateNotificationsPermission() {
        center.getNotificationSettings(completionHandler: { settings in
            switch settings.authorizationStatus {
            case .authorized, .provisional:
                UD.shared.save(Key.notificationsPermission, true)
            case .denied:
                UD.shared.save(Key.notificationsPermission, false)
            case .ephemeral:
                UD.shared.save(Key.notificationsPermission, true)
            case .notDetermined:
                return
            @unknown default:
                return
            }
        })
    }
    
    // Удаление всех запланированных уведомлений
    func removeAllNotifications() {
        NotificationService.shared.center.removeAllPendingNotificationRequests()
        NotificationService.shared.center.removeAllDeliveredNotifications()
    }
    
}
