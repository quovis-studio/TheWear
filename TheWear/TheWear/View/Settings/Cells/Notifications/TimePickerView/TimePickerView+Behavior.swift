/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension TimePickerView: UIGestureRecognizerDelegate {
    
    func updateTimePickerViewIfNeeded() {
        guard CalendarAndLocaleService.shared.checkTimePreferenceDifference() else { return }
        endEditTime()
        if CalendarAndLocaleService.shared.isTwelveTimePreference() {
            minuteRightConstraintForTwentyFourSystem.isActive = false
            minuteRightConstraintForTwelveSystem.isActive = true
            hourSystemLabel.alpha = 1
        } else {
            minuteRightConstraintForTwelveSystem.isActive = false
            minuteRightConstraintForTwentyFourSystem.isActive = true
            hourSystemLabel.alpha = 0
        }
        layoutIfNeeded()
        configureNotificationTime()
    }
    
    func beginEditTime() {
        [hourTextField, hourCoverView, minuteTextField, minuteCoverView, hourSystemLabel].forEach {
            $0.isUserInteractionEnabled = true
        }
        focusOnHour()
    }
    
    func endEditTime() {
        endEditing(true)
        [hourTextField, hourCoverView, minuteTextField, minuteCoverView, hourSystemLabel].forEach {
            $0.isUserInteractionEnabled = false
        }
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            options: .transitionCrossDissolve
        ) { [self] in
            hourSystemLabel.textColor = Color.label.secondary
            colonLabel.textColor = Color.label.secondary
            hourTextField.textColor = Color.label.secondary
            minuteTextField.textColor = Color.label.secondary
        }
    }
    
    func saveTimeInUserDefaults() {
        var stringHour = hourTextField.text ?? "09"
        let stringMinute = minuteTextField.text  ?? "00"
        
        if CalendarAndLocaleService.shared.isTwelveTimePreference() {
            let hourSystem = hourSystemLabel.text ?? "AM"
            let hour = Int(stringHour) ?? 9
            
            // AM in twelveSystem
            if hourSystem == "AM" {
                
                // 12 = 00 in notifications
                if hour == 12 {
                    stringHour = "00"
                    
                // 1, 2, 3, 4, 5, 6, 7, 8, 9 = {01...09} in notifications
                } else if hour < 10 {
                    stringHour = "0\(hour)"
                    
                } else if hour == 10 || hour == 11 {
                    stringHour = "\(hour)"
                }
            
            // PM in twelveSystem
            } else if hourSystem == "PM" {
                
                // 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 = {13...23} in notifications
                if hour < 12 {
                    stringHour = "\(hour + 12)"
                
                // 12 = 12 in notifications
                } else if hour == 12 {
                    stringHour = "12"
                }
            }
        }

        UD.shared.save(Key.notificationsTime, "\(stringHour):\(stringMinute)")
    }
    
}
