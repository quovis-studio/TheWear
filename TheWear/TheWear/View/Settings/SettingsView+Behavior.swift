/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit
import StoreKit

extension SettingsView {
    
    override func opened() {
        super.opened()
        AnalyticsService.shared.sendEvent(.settingsOpened)
    }
    
    override func closed() {
        super.closed()
        AnalyticsService.shared.sendEvent(.settingsClosed)
    }
    
    override func viewBeginPan() {
        super.viewBeginPan()
        cancelCellsGestureRecognizersOnBeginPan()
    }
    
    override func viewTapOutside() {
        super.viewTapOutside()
        if outerKeyboardView != nil {
            notificationsTableViewCellDelegate?.endTimeChanging()
        }
    }
    
    override func scrolledToTop() {
        super.scrolledToTop()
        if outerKeyboardView != nil {
            notificationsTableViewCellDelegate?.endTimeChanging()
        }
    }
    
    private func cancelCellsGestureRecognizersOnBeginPan() {
        settingsTableView.visibleCells.forEach {
            if let cell = $0 as? SettingsUnitTableViewCell { cell.cancelGestureRecognizer() }
            if let cell = $0 as? SettingsPersonTableViewCell { cell.cancelGestureRecognizer() }
            if let cell = $0 as? SettingsNotificationsTableViewCell { cell.cancelGestureRecognizer() }
            if let cell = $0 as? SettingsSupportTableViewCell { cell.cancelGestureRecognizer() }
        }
    }
    
}
