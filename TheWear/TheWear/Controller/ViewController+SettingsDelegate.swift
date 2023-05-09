/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol SettingsDelegate: AnyObject {
    func updateWeather()
    func updatePartsWithChange()
    func updatePartsWithPerson(_ person: Bool)
    func updateNotifications(_ update: Bool)
    func showNotificationsAlertView(_ completion: @escaping () -> ())
    func showAppearanceView(_ settingsView: SettingsView)
    func showWardrobeView(_ settingsView: SettingsView)
}

extension ViewController: SettingsDelegate {
    
    // MARK: - Weather
    func updateWeather() {
        weatherView.updateWithoutReset()
    }
    
    func updatePartsWithPerson(_ person: Bool) {
        weatherView.updatePartsWithPerson(person)
    }
    
    func updatePartsWithChange() {
        guard let partsViewModel = partsViewModel else { return }
        for part in partsViewModel { part.updateWithChange() }
        weatherView.updatePartsWithChange()
    }
    
    // MARK: - Notifications
    func updateNotifications(_ update: Bool) {
        NotificationService.shared.configureNotificationsWhenTimeChanged(update)
    }
    
    func showNotificationsAlertView(_ completion: @escaping () -> ()) {
        showAlertView(
            error: .notifications,
            location: .settings,
            style: .colored,
            outsideTapAction: false
        ) {
            completion()
        }
    }
    
    // MARK: - Appearance and Wardrobe
    func showAppearanceView(_ settingsView: SettingsView) {
        let appearanceView = AppearanceView(following: true)
        appearanceView.scaleDelegate = settingsView
        appearanceView.updatePartsWithPersonChange = { [unowned self] in
            updatePartsWithChange()
        }
        view.addSubview(appearanceView)
        appearanceView.matchSuperview()
        appearanceView.open()
    }
    
    func showWardrobeView(_ settingsView: SettingsView) {
        if UD.shared.wardrobeExplained() {
            configureWardrobeView(settingsView)
        } else {
            configureWardrobeExplanationView(settingsView)
        }
    }
    
    func configureWardrobeView(_ settingsView: SettingsView) {
        let wardrobeView = WardrobeView(following: true)
        wardrobeView.scaleDelegate = settingsView
        wardrobeView.updatePartsWithPersonChange = { [unowned self] in
            updatePartsWithChange()
        }
        view.addSubview(wardrobeView)
        wardrobeView.matchSuperview()
        wardrobeView.open()
    }
    
    func configureWardrobeExplanationView(_ settingsView: SettingsView) {
        let wardrobeExplanationView = WardrobeExplanationView(following: true, enableToClose: false)
        wardrobeExplanationView.scaleDelegate = settingsView
        wardrobeExplanationView.openWardrobeView = { [unowned self] in
            showWardrobeView(settingsView)
        }
        view.addSubview(wardrobeExplanationView)
        wardrobeExplanationView.matchSuperview()
        wardrobeExplanationView.open()
    }
    
}
