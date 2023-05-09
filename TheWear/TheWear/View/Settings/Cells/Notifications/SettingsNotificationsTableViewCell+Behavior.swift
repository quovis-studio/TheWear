/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SettingsNotificationsTableViewCell {
    
    @objc func updateNotificationsCell() {
        notificationsSwitcher.subviews.first?.subviews.first?.backgroundColor = Color.black.quinarySolid
        NotificationService.shared.updateNotificationsPermission()
        changeCellIfNeeded()
    }
    
    @objc func doubleUpdateNotificationsCell() {
        NotificationService.shared.updateNotificationsPermission()
        timePickerView.updateTimePickerViewIfNeeded()
        changeCellIfNeeded()
    }
    
    @objc func changeSwitcher(_ switcher: UISwitch) {
        if UD.shared.retrieve(Key.notificationsPermission) == false && switcher.isOn {
            switcher.setOn(false, animated: true)
            showAlert?()
            return
        
        } else if UD.shared.retrieve(Key.notificationsPermission) == true {
            UD.shared.save(Key.notificationsPreference, switcher.isOn)
            if switcher.isOn {
                expandCell()
                AnalyticsService.shared.sendEvent(.notificationsSwitcherOn)
            } else {
                collapseCell()
                AnalyticsService.shared.sendEvent(.notificationsSwitcherOff)
            }
        }
    }
    
    private func collapseCell() {
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) { [self] in
            [timeNameLabel, timePickerView].forEach {
                $0.alpha = 0
            }
        } completion: { _ in
            self.notificationsChanged?(true)
        }
    }
    
    private func changeCellIfNeeded() {
        if UD.shared.retrieve(Key.notificationsPermission) == false && notificationsSwitcher.isOn {
            notificationsSwitcher.setOn(false, animated: true)
            collapseCell()
        } else if intendToAllowNotifications && UD.shared.retrieve(Key.notificationsPermission) == true {
            UD.shared.save(Key.notificationsPreference, true)
            notificationsSwitcher.setOn(true, animated: true)
            expandCell()
        }
        intendToAllowNotifications = false
    }
    
    private func expandCell() {
        self.notificationsChanged?(false)
    }
    
    func showExpandedViews() {
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) { [self] in
            [timeNameLabel, timePickerView].forEach {
                $0.alpha = 1
            }
        }
    }
    
    @objc func handleTimeEdit(_ recognizer: UILongPressGestureRecognizer) {
        timePickerView.handleTapGesture(recognizer) {
            timePickerView.beginEditTime()
            timePickerViewRecognizer.isEnabled = false
        }
    }
    
    func cancelGestureRecognizer() {
        timePickerView.gestureRecognizers?.forEach { $0.cancel() }
        timePickerView.hourCoverView.gestureRecognizers?.forEach { $0.cancel() }
        timePickerView.minuteCoverView.gestureRecognizers?.forEach { $0.cancel() }
        timePickerView.hourSystemLabel.gestureRecognizers?.forEach { $0.cancel() }
    }
    
}
