/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SettingsPersonTableViewCell {
    
    @objc func updatePersonSwitcherOffColor() {
        personSwitcher.subviews.first?.subviews.first?.backgroundColor = Color.black.quinarySolid
    }
    
    @objc func changeSwitcher(_ switcher: UISwitch) {
        UD.shared.save(Key.withPerson, switcher.isOn)
        if switcher.isOn {
            expandCell()
            AnalyticsService.shared.sendEvent(.characterSwitcherOn)
        } else {
            collapseCell()
            AnalyticsService.shared.sendEvent(.characterSwitcherOff)
        }
    }
    
    private func collapseCell() {
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) { [self] in
            [genderNameLabel, genderValueLabel, appearanceLabel, wardrobeLabel].forEach {
                $0.alpha = 0
            }
        } completion: { _ in
            self.withPersonChanged?(true)
        }
    }
    
    private func expandCell() {
        self.withPersonChanged?(false)
    }
    
    func showExpandedViews() {
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) { [self] in
            [genderNameLabel, genderValueLabel, appearanceLabel, wardrobeLabel].forEach {
                $0.alpha = 1
            }
        }
    }
    
    @objc func handleGenderChange(_ recognizer: UILongPressGestureRecognizer) {
        genderValueLabel.handleTapGesture(recognizer) {
            if UD.shared.isMan() {
                UD.shared.save(Key.sex, Sex.female.rawValue)
                genderValueLabel.text = Sex.female.localizedString
            } else {
                UD.shared.save(Key.sex, Sex.male.rawValue)
                genderValueLabel.text = Sex.male.localizedString
            }
            UD.shared.updatePerson()
            AnalyticsService.shared.sendEvent(.genderChanged)
            genderChanged?()
        }
    }
    
    @objc func handleAppearanceChoose(_ recognizer: UILongPressGestureRecognizer) {
        appearanceLabel.handleTapGesture(recognizer) {
            appearanceChosen?()
        }
    }
    
    @objc func handleWardrobeChoose(_ recognizer: UILongPressGestureRecognizer) {
        wardrobeLabel.handleTapGesture(recognizer) {
            wardrobeChosen?()
        }
    }
    
    func cancelGestureRecognizer() {
        genderValueLabel.gestureRecognizers?.forEach { $0.cancel() }
        appearanceLabel.gestureRecognizers?.forEach { $0.cancel() }
        wardrobeLabel.gestureRecognizers?.forEach { $0.cancel() }
    }
    
}
