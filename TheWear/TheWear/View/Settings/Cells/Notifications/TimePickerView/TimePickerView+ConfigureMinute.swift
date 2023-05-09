/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView {
    
    func configureNewMinute(with string: String) -> Bool {
        switch string {
        case "6", "7", "8", "9":
            minuteTextField.text = "0" + string
            saveTimeInUserDefaults()
            focusOnHour()
            return false
            
        case "0", "1", "2", "3", "4", "5":
            minuteTextField.text = string
            return false
            
        default:
            return false
        }
    }
    
    func configureSecondMinuteCharacter(with string: String) -> Bool {
        guard let text = minuteTextField.text else { return false }
        switch string {
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            minuteTextField.text = text + string
            saveTimeInUserDefaults()
            focusOnHour()
            return false
            
        default:
            return false
        }
    }
    
}
