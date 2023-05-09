/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension NotificationService {
    
    // Подготовка всех уведомлений
    func configureNotifications(
        hours: [HourWeatherModel],
        forecast: [ForecastWeatherModel],
        timeZone: String,
        city: String
    ) {
        guard NotificationService.shared.notificationIsAllowed() else {return}
        NotificationService.shared.removeAllNotifications()
        
        let notificationTime = UD.shared.retrieve(Key.notificationsTime) ?? "09:00"
        let notificationHour = Int(notificationTime.split(separator: ":")[0]) ?? 9
        let notificationMinute = Int(notificationTime.split(separator: ":")[1]) ?? 0
        
        // 1. Определение когда будет уведомление по времени девайса (считаем смещение в будущее)
        let dayOffset = getDayOffset(hour: notificationHour, minute: notificationMinute)
        let dateWhenShowNotification = CalendarAndLocaleService.shared.makeDateWithGMT0(
            year: Calendar.current.component(.year, from: Date()),
            month: Calendar.current.component(.month, from: Date()),
            day: Calendar.current.component(.day, from: Date()) + dayOffset,
            hour: notificationHour,
            minute: notificationMinute,
            second: 0
        )
        
        // 2. Определение какая дата и время будут в выбранном городе в то время, когда уведомление придет на девайс
        let dateWhenShowNotificationForCity = getDateWhenShowNotificationForCity(
            timeZone: timeZone,
            date: dateWhenShowNotification
        )
        
        // 3. Определение наполнения уведомления
        let notificationsText = getNotificationText(
            hours: hours,
            forecast: forecast,
            timeZone: timeZone,
            date: dateWhenShowNotification,
            dateForCity: dateWhenShowNotificationForCity,
            notificationHour: notificationHour,
            notificationMinute: notificationMinute
        )
        
        //  4. Скеджулинг большого уведомления
        scheduleNotification(
            date: dateWhenShowNotification,
            city: city,
            text: notificationsText
        )
        
        // 5. Подготовка коротких уведомлений
        confiureShortNotifications(
            dateOfMainNotification: dateWhenShowNotification,
            forecast: forecast,
            city: city,
            timeZone: timeZone
        )
    }
    
    // Подготовка уведомлений при смене времени пользователем в настройках
    func configureNotificationsWhenTimeChanged(_ update: Bool) {
        guard update && notificationIsAllowed() else {
            removeAllNotifications()
            return
        }
        
        guard let hours = UD.shared.retrieveHours() else { return }
        guard let forecast = UD.shared.retrieveForecast() else { return }
        let timeZone = UD.shared.retrieve(Key.timezone) ?? TimeZone.current.identifier
        guard let city = UD.shared.retrieveLastLocation()?.city else { return }
        configureNotifications(
            hours: hours,
            forecast: forecast,
            timeZone: timeZone,
            city: city
        )
    }
    
    // Подготовка коротких уведомлений
    private func confiureShortNotifications(
        dateOfMainNotification: Date,
        forecast: [ForecastWeatherModel],
        city: String,
        timeZone: String
    ) {
        let notificationDates = CalendarAndLocaleService.shared.getDaysForShortNotifications(startingFrom: dateOfMainNotification)
        for item in 0...5 {
            guard let text = getShortNotificationText(with: forecast[item]) else { continue }
            scheduleNotification(
                date: notificationDates[item],
                city: city,
                text: text
            )
        }
    }
    
}
