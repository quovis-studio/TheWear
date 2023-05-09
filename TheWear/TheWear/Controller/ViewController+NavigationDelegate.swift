/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol NavigationDelegate: AnyObject {
    func openSettingsView()
    func openSearchView(enableToClose: Bool)
}

extension ViewController: NavigationDelegate {
    
    func openSettingsView() {
        let settingsView = SettingsView()
        settingsView.settingsDelegate = self
        view.addSubview(settingsView)
        settingsView.matchSuperview()
        settingsView.open()
    }
    
    func openSearchView(enableToClose: Bool) {
        let searchView = SearchView(enableToClose: enableToClose)
        searchView.weatherFetchDelegate = self
        searchView.alertViewDelegate = self
        view.addSubview(searchView)
        searchView.matchSuperview()
        searchView.open()
    }
    
}
