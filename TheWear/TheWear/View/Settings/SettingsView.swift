/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SettingsView: ModalView {
    
    weak var settingsDelegate: SettingsDelegate?
    weak var notificationsTableViewCellDelegate: NotificationsTableViewCellDelegate?
    
    let unitCell = "unitCell"
    let weatherFeelingCell = "weatherFeelingCell"
    let personCell = "personCell"
    let notificationsCell = "notificationsCell"
    let supportCell = "supportCell"

    let settingsModel = [
        SettingsSectionModel(name: .units, unitItems: [.temperature, .wind, .pressure, .visibility]),
        SettingsSectionModel(name: .weatherFeeling),
        SettingsSectionModel(name: .person),
        SettingsSectionModel(name: .notifications),
        SettingsSectionModel(name: .support, supportItems: [.rateTheApp, .writeToDev])
    ]
    
    var outerKeyboardView: UIView!
    
    lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.automaticallyAdjustsScrollIndicatorInsets = false
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.estimatedRowHeight = Size.cell.estimated
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    private func configureNotificationObserverForKeyboard() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardDidShowNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardDidHide),
            name: UIResponder.keyboardDidHideNotification,
            object: nil
        )
    }
    
    private func configureSettingsTableView() {
        substrateView.insertSubview(settingsTableView, at: 0)
        settingsTableView.constraints(
            top: panView.bottom(Size.padding.small),
            left: substrateView.left,
            bottom: substrateView.bottom,
            right: substrateView.right
        )
    }
    
    private func registerCells() {
        settingsTableView.register(SettingsUnitTableViewCell.self, forCellReuseIdentifier: unitCell)
        settingsTableView.register(SettingsWeatherFeelingTableViewCell.self, forCellReuseIdentifier: weatherFeelingCell)
        settingsTableView.register(SettingsPersonTableViewCell.self, forCellReuseIdentifier: personCell)
        settingsTableView.register(SettingsNotificationsTableViewCell.self, forCellReuseIdentifier: notificationsCell)
        settingsTableView.register(SettingsSupportTableViewCell.self, forCellReuseIdentifier: supportCell)
    }
    
    override init(following: Bool = false, enableToClose: Bool = true) {
        super.init(following: following, enableToClose: enableToClose)
        configureNotificationObserverForKeyboard()
        configureSettingsTableView()
        registerCells()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
