/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class TimePickerView: UIView {
    
    var minuteRightConstraintForTwelveSystem: NSLayoutConstraint!
    var minuteRightConstraintForTwentyFourSystem: NSLayoutConstraint!
    
    let hourCoverView = UIView()
    let hourTextField = TimeTextField(textAlignment: .right)
    
    let colonLabel: UILabel = {
        let label = UILabel()
        label.font = Font.body
        label.text = ":"
        label.textColor = Color.label.secondary
        label.textAlignment = .center
        return label
    }()
    
    let minuteCoverView = UIView()
    let minuteTextField = TimeTextField(textAlignment: .left)
    
    let hourSystemLabel: UILabel = {
        let label = UILabel()
        label.font = Font.body
        label.alpha = CalendarAndLocaleService.shared.isTwelveTimePreference() ? 1 : 0
        label.textColor = Color.label.secondary
        label.textAlignment = .right
        label.isUserInteractionEnabled = false
        label.isExclusiveTouch = true
        return label
    }()
    
    private func configureMinuteTextFieldConstraints() {
        minuteRightConstraintForTwelveSystem = minuteTextField.trailingAnchor.constraint(equalTo: hourSystemLabel.leadingAnchor, constant: -Size.padding.xxxSmall)
        minuteRightConstraintForTwentyFourSystem = minuteTextField.trailingAnchor.constraint(equalTo: trailingAnchor)
    }
    
    private func configureHourSystemLabel() {
        addSubview(hourSystemLabel)
        hourSystemLabel.constraints(
            top: self.top,
            bottom: self.bottom,
            right: self.right,
            centerY: self.centerY,
            width: .equalToConstant(Size.cell.settings)
        )
    }
    
    private func configureMinuteTextField() {
        addSubview(minuteTextField)
        minuteTextField.delegate = self
        if CalendarAndLocaleService.shared.isTwelveTimePreference() {
            minuteRightConstraintForTwentyFourSystem.isActive = false
            minuteRightConstraintForTwelveSystem.isActive = true
        } else {
            minuteRightConstraintForTwelveSystem.isActive = false
            minuteRightConstraintForTwentyFourSystem.isActive = true
        }
        minuteTextField.constraints(
            top: self.top,
            bottom: self.bottom,
            width: .equalToConstant(Size.padding.large)
        )
    }
    
    private func configureMinuteCoverView() {
        addSubview(minuteCoverView)
        minuteCoverView.match(view: minuteTextField)
        minuteCoverView.isUserInteractionEnabled = false
    }
    
    private func configureColonLabel() {
        addSubview(colonLabel)
        colonLabel.constraints(
            top: self.top,
            bottom: self.bottom,
            right: minuteTextField.left,
            width: .equalToConstant(Size.padding.xSmall)
        )
    }
    
    private func configureHourTextField() {
        addSubview(hourTextField)
        hourTextField.delegate = self
        hourTextField.constraints(
            top: self.top,
            bottom: self.bottom,
            right: colonLabel.left,
            width: .equalToConstant(Size.padding.large)
        )
    }
    
    private func configureHourCoverView() {
        addSubview(hourCoverView)
        hourCoverView.match(view: hourTextField)
        hourCoverView.isUserInteractionEnabled = false
    }
    
    private func configureHourCoverViewTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleTapOnHourTextField(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        hourCoverView.addGestureRecognizer(tapRecognizer)
    }
    
    private func configureMinuteCoverViewTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleTapOnMinuteTextField(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        minuteCoverView.addGestureRecognizer(tapRecognizer)
    }
    
    private func configureHourSystemLabelTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleTapOnHourSystemLabel(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        hourSystemLabel.addGestureRecognizer(tapRecognizer)
    }
    
    func configureTimePickerView() {
        configureMinuteTextFieldConstraints()
        configureHourSystemLabel()
        configureMinuteTextField()
        configureMinuteCoverView()
        configureColonLabel()
        configureHourTextField()
        configureHourCoverView()
        configureHourCoverViewTapRecognizer()
        configureMinuteCoverViewTapRecognizer()
        configureHourSystemLabelTapRecognizer()
        configureNotificationTime()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTimePickerView()
    }
    
    func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
