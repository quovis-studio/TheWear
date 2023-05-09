/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView {
    
    @objc func handleTapOnHourTextField(_ recognizer: UILongPressGestureRecognizer) {
        hourCoverView.handleTapGesture(recognizer) {
            necessaryTimeCompletionIfNeeded()
            focusOnHour()
        }
    }
    
    @objc func handleTapOnMinuteTextField(_ recognizer: UILongPressGestureRecognizer) {
        minuteCoverView.handleTapGesture(recognizer) {
            necessaryTimeCompletionIfNeeded()
            focusOnMinute()
        }
    }
    
    @objc func handleTapOnHourSystemLabel(_ recognizer: UILongPressGestureRecognizer) {
        hourSystemLabel.handleTapGesture(recognizer) {
            necessaryTimeCompletionIfNeeded()
            hourTextField.becomeFirstResponder()
            focusOnHourSystem()
            hourSystemLabel.text = hourSystemLabel.text == "AM" ? "PM" : "AM"
            saveTimeInUserDefaults()
        }
    }
    
    func focusOnHour() {
        hourTextField.becomeFirstResponder()
        let endPosition = hourTextField.endOfDocument
        hourTextField.selectedTextRange = hourTextField.textRange(from: endPosition, to: endPosition)
        
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            options: .transitionCrossDissolve
        ) { [self] in
            hourSystemLabel.textColor = Color.black.quaternary
            colonLabel.textColor = Color.black.quaternary
            hourTextField.textColor = WeatherService.shared.currentColor
            minuteTextField.textColor = Color.black.quaternary
        }
    }
    
    func focusOnMinute() {
        minuteTextField.becomeFirstResponder()
        let endPosition = minuteTextField.endOfDocument
        minuteTextField.selectedTextRange = minuteTextField.textRange(from: endPosition, to: endPosition)
        
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            options: .transitionCrossDissolve
        ) { [self] in
            hourSystemLabel.textColor = Color.black.quaternary
            hourTextField.textColor = Color.black.quaternary
            minuteTextField.textColor = WeatherService.shared.currentColor
        }
    }
    
    func focusOnHourSystem() {
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            options: .transitionCrossDissolve
        ) { [self] in
            hourSystemLabel.textColor = WeatherService.shared.currentColor
            hourTextField.textColor = Color.black.quaternary
            minuteTextField.textColor = Color.black.quaternary
        }
    }
    
}
