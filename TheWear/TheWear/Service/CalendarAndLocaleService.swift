/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
 */

import Foundation

enum TimePreference {
    case twelve
    case twentyFour
}

class CalendarAndLocaleService {
    
    static let shared = CalendarAndLocaleService()
    let dateformatter = DateFormatter()
    
    var previousTimePreference = TimePreference.twentyFour
    var timePreference = TimePreference.twentyFour
    
    var userCalendar = Calendar.current
    var calendarGMT0 = Calendar(identifier: .gregorian)
    var calendarGregorian = Calendar(identifier: .gregorian)
    
    func getDefaultTempUnits()->Temperature{
        let locale = NSLocale.current as NSLocale
        let obj = locale.object(forKey: NSLocale.Key(rawValue: "kCFLocaleTemperatureUnitKey"))
        guard obj != nil else {return Temperature.celsius}
        let unit = String((obj! as AnyObject).debugDescription)
        print("\(unit)")
        return unit.contains("F") ? Temperature.fahrenheit : Temperature.celsius
    }
    
    func isTwelveTimePreference() -> Bool {
        return timePreference == .twelve ? true : false
    }
    
    func getShortWeekday(from date: String?, timezone: String) -> String {
        guard let date = date else { return "-" }
        dateformatter.dateFormat = "yyyy-MM-dd"
        dateformatter.timeZone = TimeZone(identifier: timezone)
        guard let date = dateformatter.date(from: date) else { return "-" }
        dateformatter.dateFormat = "EEE"
        let weekday = dateformatter.string(from: date)
        return weekday.last == "." ? String(weekday.dropLast()) : weekday
    }
    
    func getShortMonth(from date: String, timezone: String) -> String {
        dateformatter.timeZone = TimeZone(identifier: timezone)
        dateformatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateformatter.date(from: date) else { return "" }
        dateformatter.dateFormat = "MMM"
        return dateformatter.string(from: date)
    }
    
    func getDateToday() -> String? {
        let format = "yyyy-MM-dd"
        if NSLocale.autoupdatingCurrent.debugDescription.contains("sr") {
            dateformatter.locale = Locale(identifier: "sr_Latn")
        }
        dateformatter.dateFormat = format
        return dateformatter.string(from: Date())
    }
    
    func checkTimePreferenceDifference() -> Bool {
        return previousTimePreference != timePreference ? true : false
    }
    
    func updateTimePreference() {
        previousTimePreference = timePreference
        let locale = NSLocale.autoupdatingCurrent
        let dateFormat = DateFormatter.dateFormat(
            fromTemplate: "j",
            options: 0,
            locale: locale
        )!
        timePreference = dateFormat.contains("a") ? .twelve : .twentyFour
    }
    
    func updateTempUnitPreference() {
        UD.shared.save(Key.temperature, CalendarAndLocaleService.shared.getDefaultTempUnits() == Temperature.celsius ? Temperature.celsius.rawValue : Temperature.fahrenheit.rawValue)
    }
    
    func makeDateWithGMT0(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int
    ) -> Date {
        calendarGMT0.timeZone = TimeZone(secondsFromGMT: 0) ?? TimeZone.autoupdatingCurrent
        let components = DateComponents(
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second
        )
        return calendarGMT0.date(from: components)!
    }
    
    func getComponentsFromDate(date: Date) -> DateComponents {
        calendarGMT0.timeZone =  TimeZone(secondsFromGMT: 0) ?? TimeZone.autoupdatingCurrent
        return calendarGMT0.dateComponents([
            Calendar.Component.minute,
            Calendar.Component.hour,
            Calendar.Component.day,
            Calendar.Component.month,
            Calendar.Component.year], from: date
        )
    }
    
    func getDaysForShortNotifications(startingFrom date: Date) -> [Date] {
        var dates = [Date]()
        var offset = 1
        calendarGMT0.timeZone = TimeZone(secondsFromGMT: 0) ?? TimeZone.autoupdatingCurrent
        for _ in 0...5 {
            dates.append(calendarGMT0.date(byAdding: .day, value: offset, to: date) ?? Date())
            offset = offset + 1
        }
        return dates
    }
    
    private init() {  }
    
}
