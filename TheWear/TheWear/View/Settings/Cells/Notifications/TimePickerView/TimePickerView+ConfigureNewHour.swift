/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView {
    
    func configureNewHour(with string: String) -> Bool {
        if CalendarAndLocaleService.shared.isTwelveTimePreference() {
            return configureNewHourForTwelveSystem(with: string)
        } else {
            return configureNewHourForTwentyFourSystem(with: string)
        }
    }
    
    private func configureNewHourForTwelveSystem(with string: String) -> Bool {
        switch string {
        case "2", "3", "4", "5", "6", "7", "8", "9":
            hourTextField.text = "0" + string
            saveTimeInUserDefaults()
            focusOnMinute()
            return false
        
        case "0", "1":
            hourTextField.text = string
            return false
            
        default:
            return false
        }
    }
    
    private func configureNewHourForTwentyFourSystem(with string: String) -> Bool {
        switch string {
        case "3", "4", "5", "6", "7", "8", "9":
            hourTextField.text = "0" + string
            saveTimeInUserDefaults()
            focusOnMinute()
            return false
            
        case "0", "1", "2":
            hourTextField.text = string
            return false
            
        default:
            return false
        }
    }
    
}
