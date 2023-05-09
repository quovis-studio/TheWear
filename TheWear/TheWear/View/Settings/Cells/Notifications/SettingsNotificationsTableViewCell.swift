/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SettingsNotificationsTableViewCell: UITableViewCell {
    
    var intendToAllowNotifications = false
    var timePickerViewRecognizer: UILongPressGestureRecognizer!
    var showAlert: (() -> ())?
    var notificationsChanged: ((_ collapse: Bool) -> ())?
    var updateNotifications: (() -> ())?
    
    let notificationsLabel: UILabel = {
        let label = UILabel()
        label.text = "notifications".localized
        label.font = Font.body
        label.textColor = Color.black.primary
        label.textAlignment = .left
        return label
    }()
    
    lazy var notificationsSwitcher: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = WeatherService.shared.currentColor
        switcher.subviews[0].subviews[0].backgroundColor = Color.black.quinarySolid
        switcher.tintColor = Color.black.quinarySolid
        switcher.isOn = NotificationService.shared.notificationIsAllowed()
        switcher.isExclusiveTouch = true
        switcher.addTarget(self, action: #selector(changeSwitcher(_:)), for: .valueChanged)
        return switcher
    }()
    
    let timeNameLabel: UILabel = {
        let label = UILabel()
        label.text = "time".localized
        label.font = Font.body
        label.textColor = Color.black.primary
        label.textAlignment = .left
        return label
    }()
    
    let timePickerView = TimePickerView()
    
    private func configureCell() {
        backgroundColor = Color.white.primary
        selectionStyle = .none
    }
    
    private func configureNotificationsViews() {
        contentView.addSubviews(notificationsLabel, notificationsSwitcher)
        notificationsLabel.constraints(
            top: contentView.top,
            left: contentView.left(Size.padding.medium),
            height: .equalToConstant(Size.cell.settings)
        )
        notificationsSwitcher.constraints(
            right: contentView.right(Size.padding.medium),
            centerY: notificationsLabel.centerY
        )
    }
    
    private func configureTimeViews() {
        contentView.addSubviews(timeNameLabel, timePickerView)
        timePickerView.constraints(
            top: timeNameLabel.top,
            bottom: timeNameLabel.bottom,
            right: contentView.right(Size.padding.medium)
        )
        timeNameLabel.constraints(
            top: notificationsLabel.bottom,
            left: contentView.left(Size.padding.medium),
            right: timePickerView.left,
            height: .equalToConstant(Size.cell.settings)
        )
        
        [timeNameLabel, timePickerView].forEach {
            $0.alpha = NotificationService.shared.notificationIsAllowed() ? 1 : 0
        }
    }
    
    private func configureTimePickerViewTapRecognizer() {
        timePickerViewRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleTimeEdit(_:)))
        timePickerViewRecognizer.minimumPressDuration = 0
        timePickerViewRecognizer.delegate = self
        timePickerView.addGestureRecognizer(timePickerViewRecognizer)
    }
    
    private func configureEnterNotification() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateNotificationsCell),
            name: UIApplication.willEnterForegroundNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(doubleUpdateNotificationsCell),
            name: UIApplication.didBecomeActiveNotification,
            object: nil
        )
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
        configureNotificationsViews()
        configureTimeViews()
        configureTimePickerViewTapRecognizer()
        configureEnterNotification()
    }
    
    override func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
