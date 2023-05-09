/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SettingsView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(
        in tableView: UITableView
    ) -> Int {
        return settingsModel.count
    }
    
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        let count = settingsModel[section].items.count
        return count == 0 ? 1 : settingsModel[section].items.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        switch settingsModel[indexPath.section].name {
        case .units:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: unitCell,
                for: indexPath
            ) as! SettingsUnitTableViewCell
            let section = indexPath.section
            let row = indexPath.row
            if let unit = settingsModel[section].items[row] as? SettingsUnitItem {
                cell.unit = unit
            }
            cell.valueChanged = { [weak self] in
                self?.settingsDelegate?.updateWeather()
                if section == 0 && row == 0 {
                    self?.settingsDelegate?.updateNotifications(true)
                }
            }
            return cell
            
        case .weatherFeeling:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: weatherFeelingCell,
                for: indexPath
            ) as! SettingsWeatherFeelingTableViewCell
            cell.allowToPan = { [weak self] allow in
                self?.allowedToPan = allow
                if allow {
                    self?.settingsDelegate?.updatePartsWithChange()
                    self?.settingsDelegate?.updateNotifications(true)
                }
            }
            return cell
            
        case .person:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: personCell,
                for: indexPath
            ) as! SettingsPersonTableViewCell
            cell.withPersonChanged = { [weak self] collapse in
                self?.settingsDelegate?.updatePartsWithPerson(!collapse)
                if collapse {
                    self?.settingsTableView.performBatchUpdates(nil)
                } else {
                    self?.settingsTableView.performBatchUpdates(nil, completion: { _ in
                        cell.showExpandedViews()
                    })
                }
            }
            cell.genderChanged = { [weak self] in
                PersonService.shared.configureInitialUserDefaultsClothes()
                self?.settingsDelegate?.updatePartsWithChange()
                self?.settingsDelegate?.updateNotifications(true)
            }
            cell.appearanceChosen = { [unowned self] in
                self.settingsDelegate?.showAppearanceView(self)
            }
            cell.wardrobeChosen = { [unowned self] in
                self.settingsDelegate?.showWardrobeView(self)
            }
            return cell
            
        case .notifications:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: notificationsCell,
                for: indexPath
            ) as! SettingsNotificationsTableViewCell
            notificationsTableViewCellDelegate = cell
            cell.notificationsChanged = { [weak self] collapse in
                if collapse {
                    self?.settingsTableView.performBatchUpdates(nil)
                    self?.settingsDelegate?.updateNotifications(false)
                } else {
                    self?.settingsTableView.performBatchUpdates(nil, completion: { _ in
                        cell.showExpandedViews()
                    })
                    self?.settingsDelegate?.updateNotifications(true)
                }
            }
            cell.updateNotifications = { [weak self] in
                self?.settingsDelegate?.updateNotifications(true)
            }
            cell.showAlert = { [weak self] in
                self?.settingsDelegate?.showNotificationsAlertView() {
                    cell.intendToAllowNotifications = true
                }
            }
            return cell
            
        case .support:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: supportCell,
                for: indexPath
            ) as! SettingsSupportTableViewCell
            if let support = settingsModel[indexPath.section].items[indexPath.row] as? SettingsSupportItem {
                cell.support = support
            }
            return cell
            
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        switch settingsModel[indexPath.section].name {
        case .units:
            return Size.cell.settings
            
        case .weatherFeeling:
            return UITableView.automaticDimension
            
        case .person:
            if UD.shared.retrieve(Key.withPerson) == true {
                return 4 * Size.cell.settings
            } else {
                return Size.cell.settings
            }
            
        case .notifications:
            if UD.shared.hasNotificationsPermission() &&
               UD.shared.hasNotificationsPreference() {
                return 2 * Size.cell.settings
            } else {
                return Size.cell.settings
            }
            
        case .support:
            return Size.cell.settings
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        willDisplay cell: UITableViewCell,
        forRowAt indexPath: IndexPath
    ) {
        if let cell = cell as? SettingsWeatherFeelingTableViewCell {
            cell.updatePathViewConstraintsAfterLayoutIsDone()
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        heightForHeaderInSection section: Int
    ) -> CGFloat {
        return Size.font.footnote2 + Size.padding.small
    }
    
    func tableView(
        _ tableView: UITableView,
        viewForHeaderInSection section: Int
    ) -> UIView? {
        let headerView = UIView()
        headerView.frame = CGRect(
            x: 0,
            y: 0,
            width: tableView.frame.width,
            height: Size.font.footnote2 + Size.padding.small
        )
        
        let label = UILabel()
        label.text = settingsModel[section].name.localizedString
        label.font = Font.footnote2
        label.textAlignment = .left
        label.textColor = Color.black.tertiary
        headerView.addSubview(label)
        label.constraints(
            left: headerView.left(Size.padding.medium),
            bottom: headerView.bottom,
            right: headerView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.footnote2)
        )
        
        return headerView
    }
    
}
