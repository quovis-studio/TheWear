/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension NotificationService {
    
    func getDayOffset(
        hourNow: Int = Calendar.current.component(.hour, from: Date()),
        minuteNow: Int = Calendar.current.component(.minute, from: Date()),
        hour: Int,
        minute: Int
    ) -> Int {
        if hourNow > hour || (hourNow == hour && minuteNow > minute) {
            return 1
        } else {
            return 0
        }
    }

    func getDateWhenShowNotificationForCity(
        timeZone: String,
        date: Date
    ) -> Date {
        // Разница в секундах между таймзоной города и таймзоной девайса
        let timeZonesSecondDifference = (TimeZone(identifier: timeZone)?.secondsFromGMT() ?? 0) - TimeZone.current.secondsFromGMT()
        
        // Смещение времени для отображения уведомления на девайсе на этот оффсет
        // Получаем дату и время в таймзоне города
        return Calendar.current.date(
            byAdding: .hour,
            value: timeZonesSecondDifference / 3600,
            to: date
        ) ?? date
    }
    
}
