/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension HoursWeatherContainer {
    
    func getDate(
        from timestamp: String?,
        timezone: String
    ) -> String {
        guard let timestamp = timestamp else { return "" }
        let dateParts = timestamp.split(separator: "T")
        let date = String(dateParts[0])
        let day = String(date.split(separator: "-")[2])
        let month = CalendarAndLocaleService.shared.getShortMonth(from: date, timezone: timezone)
        return day + " " + month
    }
    
    func getHourComponent(from timestamp: String?) -> Double {
        guard let timestamp = timestamp else { return 0.0 }
        let dateParts = timestamp.split(separator: "T")
        let timeParts = String(dateParts[1]).split(separator: ":")
        return Double(timeParts[0]) ?? 0.0
    }
    
}
