/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView {
    
    func necessaryTimeCompletionIfNeeded() {
        necessaryHourCompletionIfNeeded()
        necessaryMinuteCompletionIfNeeded()
        saveTimeInUserDefaults()
    }
    
    private func necessaryHourCompletionIfNeeded() {
        guard let text = hourTextField.text else { return }
        if text.count == 1 {
            if CalendarAndLocaleService.shared.isTwelveTimePreference() {
                hourTextField.text = completeHourForTwelveSystem(with: text)
            } else {
                hourTextField.text = completeHourForTwentyFourSystem(with: text)
            }
        } else if text.count == 0 {
            hourTextField.text = CalendarAndLocaleService.shared.isTwelveTimePreference() ? "12" : "00"
        }
    }
    
    private func completeHourForTwelveSystem(with text: String) -> String {
        switch text {
        case "0":
            return "12"
            
        case "1", "2", "3", "4", "5", "6", "7", "8", "9":
            return "0" + text
            
        default:
            return "12"
        }
    }
    
    private func completeHourForTwentyFourSystem(with text: String) -> String {
        switch text {
        case "0":
            return "00"
            
        case "1", "2", "3", "4", "5", "6", "7", "8", "9":
            return "0" + text
            
        default:
            return "00"
        }
    }
    
    private func necessaryMinuteCompletionIfNeeded() {
        guard let text = minuteTextField.text else { return }
        if text.count == 0 {
            minuteTextField.text = "00"
        } else if text.count == 1 {
            minuteTextField.text = "0" + text
        }
    }
    
}
