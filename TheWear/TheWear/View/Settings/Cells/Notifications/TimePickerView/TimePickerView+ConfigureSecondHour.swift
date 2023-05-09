/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView {
    
    func configureSecondHourCharacter(with string: String) -> Bool {
        defer {
            saveTimeInUserDefaults()
            focusOnMinute()
        }
        if CalendarAndLocaleService.shared.isTwelveTimePreference() {
            return configureSecondHourCharacterForTwelveSystem(with: string)
        } else {
            return configureSecondHourCharacterForTwentyFourSystem(with: string)
        }
    }
    
    private func configureSecondHourCharacterForTwelveSystem(with string: String) -> Bool {
        guard let text = hourTextField.text else { return false }
        switch string {
        case "3", "4", "5", "6", "7", "8", "9":
            if text == "0" {
                hourTextField.text = text + string
                return false
            } else if text == "1" {
                if string == "3" {
                    hourTextField.text = "01"
                } else if string == "4" {
                    hourTextField.text = "02"
                } else if string == "5" {
                    hourTextField.text = "03"
                } else if string == "6" {
                    hourTextField.text = "04"
                } else if string == "7" {
                    hourTextField.text = "05"
                } else if string == "8" {
                    hourTextField.text = "06"
                } else if string == "9" {
                    hourTextField.text = "07"
                }
                if hourSystemLabel.text == "AM" { hourSystemLabel.text = "PM" }
                return false
            } else {
                return false
            }
            
        case "0":
            if text == "0" {
                hourTextField.text = "12"
                if hourSystemLabel.text == "AM" { hourSystemLabel.text = "PM" }
                return false
            } else if text == "1" {
                hourTextField.text = "10"
                return false
            } else {
                return false
            }
            
        case "1", "2":
            hourTextField.text = text + string
            return false
            
        default:
            return false
        }
    }
    
    private func configureSecondHourCharacterForTwentyFourSystem(with string: String) -> Bool {
        guard let text = hourTextField.text else { return false }
        switch string {
        case "0", "1", "2", "3":
            hourTextField.text = text + string
            return false
            
        case "4", "5", "6", "7", "8", "9":
            if text == "0" || text == "1" {
                hourTextField.text = text + string
                return false
            } else {
                hourTextField.text = text + "0"
                return false
            }
            
        default:
            return false
        }
    }
    
}
