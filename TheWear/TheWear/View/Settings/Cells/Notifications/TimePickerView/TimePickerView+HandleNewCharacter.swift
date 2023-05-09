/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView: UITextFieldDelegate {
    
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String
    ) -> Bool {
        if hourSystemLabel.textColor == WeatherService.shared.currentColor { focusOnHour() }
        guard let text = textField.text else { return false }
        
        // Backspace tapped
        if string == "" {
            let newText = text.dropLast()
            textField.text = String(newText)
            return false
        }
        
        // New or already 2
        if text.count == 2 || text.count == 0 {
            if textField === hourTextField {
                return configureNewHour(with: string)
            } else {
                return configureNewMinute(with: string)
            }
        
        // One digit done
        } else if text.count < 2 {
            if textField === hourTextField {
                return configureSecondHourCharacter(with: string)
            } else {
                return configureSecondMinuteCharacter(with: string)
            }
        
        // God knows what's happening, but we're just skipping this
        } else {
            return false
            
        }
    }
    
}
