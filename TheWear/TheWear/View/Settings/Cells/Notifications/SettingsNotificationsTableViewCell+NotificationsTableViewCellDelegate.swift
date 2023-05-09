/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol NotificationsTableViewCellDelegate: AnyObject {
    func endTimeChanging()
}

extension SettingsNotificationsTableViewCell: NotificationsTableViewCellDelegate {
    
    func endTimeChanging() {
        timePickerView.endEditTime()
        timePickerView.configureNotificationTime()
        timePickerViewRecognizer.isEnabled = true
        AnalyticsService.shared.sendEvent(.notificationsTimeChanged)
        updateNotifications?()
    }
    
}
