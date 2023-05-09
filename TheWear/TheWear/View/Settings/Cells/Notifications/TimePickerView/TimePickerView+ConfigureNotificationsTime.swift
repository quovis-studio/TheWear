/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView {
    
    func configureNotificationTime() {
        let time = UD.shared.retrieve(Key.notificationsTime) ?? "07:00"
        let timeComponents = getTimeComponents(from: time)
        
        hourTextField.text = timeComponents.hour
        minuteTextField.text = timeComponents.minute
        if let hourSystem = timeComponents.hourSystem {
            hourSystemLabel.text = hourSystem
        }
    }
    
    private func getTimeComponents(from time: String) -> (hour: String, minute: String, hourSystem: String?) {
        let timeComponents = time.split(separator: ":")
        let stringHourComponent = timeComponents[0]
        let minuteComponent = timeComponents[1]
        let hourComponent = Int(stringHourComponent) ?? 7
        let hourComponents = getHourComponents(from: hourComponent)
        return (hour: hourComponents.hour, minute: String(minuteComponent), hourSystem: hourComponents.hourSystem)
    }
    
    private func getHourComponents(from hourComponent: Int) -> (hour: String, hourSystem: String?) {
        var hourSystem: String?
        var hourString = ""
        
        if CalendarAndLocaleService.shared.isTwelveTimePreference() {
            // 13, 14, 15, 16, 17, 18, 19, 20, 21 = 01...09 PM in twelveSystem
            if hourComponent > 12 && hourComponent < 22 {
                hourString = "0\(hourComponent - 12)"
                hourSystem = "PM"
                
            // 22, 23 = 10, 11 PM in twelveSystem
            } else if hourComponent == 22 || hourComponent == 23 {
                hourString = "\(hourComponent - 12)"
                hourSystem = "PM"
            
            // 00 = 12 AM in twelveSystem
            } else if hourComponent == 0 {
                hourString = "12"
                hourSystem = "AM"
            
            // 12 = 12 PM in twelveSystem
            } else if hourComponent == 12 {
                hourString = "12"
                hourSystem = "PM"
                
            // 1, 2, 3, 4, 5, 6, 7, 8, 9 = 01...09 AM in twelveSystem
            } else if hourComponent > 0 && hourComponent <= 9 {
                hourString = "0\(hourComponent)"
                hourSystem = "AM"

            // 10, 11 = 10, 11 AM in twelveSystem
            } else if hourComponent == 10 || hourComponent == 11 {
                hourString = "\(hourComponent)"
                hourSystem = "AM"
            }
            
        } else {
            // 1, 2, 3, 4, 5, 6, 7, 8, 9
            if hourComponent < 10 {
                hourString = "0\(hourComponent)"
                
            // 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
            } else {
                hourString = "\(hourComponent)"
            }
        }
        
        return (hour: hourString, hourSystem: hourSystem)
    }
    
}
