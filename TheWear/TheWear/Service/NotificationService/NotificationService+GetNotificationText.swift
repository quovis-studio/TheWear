/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension NotificationService {
    
    func getNotificationText(
        hours: [HourWeatherModel],
        forecast: [ForecastWeatherModel],
        timeZone: String,
        date: Date,
        dateForCity: Date,
        notificationHour: Int,
        notificationMinute: Int
    ) -> String {
        // Вытаскиваем час и минуту из даты в городе, учитывая его таймзону
        var cityCalendar = CalendarAndLocaleService.shared.calendarGregorian
        cityCalendar.timeZone = TimeZone(identifier: timeZone) ?? TimeZone.autoupdatingCurrent
        let cityCalendarComponents = cityCalendar.dateComponents(
            in: TimeZone(secondsFromGMT: 0) ?? TimeZone.autoupdatingCurrent,
            from: dateForCity
        )
        let cityHour = cityCalendarComponents.hour ?? notificationHour
        let cityMinute = cityCalendarComponents.minute ?? notificationMinute
        
        // Определить, какой день из [прогноза] нужно взять для расчёта (учитывать таймзону города)
        let dateNowForCity = cityCalendar.dateComponents(
            in: TimeZone(identifier: timeZone) ?? TimeZone.autoupdatingCurrent,
            from: Date()
        )
        let dayOffset = getDayOffset(
            hourNow: dateNowForCity.hour ?? Calendar.current.component(.hour, from: Date()),
            minuteNow: dateNowForCity.minute ?? Calendar.current.component(.minute, from: Date()),
            hour: cityHour,
            minute: cityMinute
        )
        
        let day = cityCalendarComponents.day ?? Calendar.current.component(.day, from: Date())
        let month = cityCalendarComponents.month ?? Calendar.current.component(.month, from: Date())
        
        if cityHour < 12 {
            return getNotificationTextForAllDay(
                hours: hours,
                forecast: forecast,
                timeZone: timeZone,
                dayOffset: dayOffset,
                hour: cityHour,
                day: day,
                month: month,
                date: date
            )
        } else {
            return getNotificationsTextForHour(
                hours: hours,
                forecast: forecast,
                timeZone: timeZone,
                dayOffset: dayOffset,
                hour: cityHour,
                day: day,
                month: month,
                date: date
            )
        }
    }
    
    func getShortNotificationText(with forecastWeatherModel: ForecastWeatherModel) -> String? {
        guard let minTemperature = forecastWeatherModel.low_temp?.int else { return nil }
        guard let maxTemperature = forecastWeatherModel.high_temp?.int else { return nil }
        
        var minTextPart = ""
        var maxTextPart = ""
        let checkTextPart = "check_forecast".localized
        if UD.shared.retrieve(Key.temperature) == Temperature.celsius.rawValue {
            minTextPart = "min_temp_is".localized + " \(minTemperature)º, "
            maxTextPart = "max_temp_is".localized + " \(maxTemperature)º. "
        } else {
            minTextPart = "Min temp is".localized + " \(minTemperature * 9/5 + 32)º, "
            maxTextPart = "max temp is".localized + " \(maxTemperature * 9/5 + 32)º. "
        }
        return minTextPart + maxTextPart + checkTextPart
    }
    
}
