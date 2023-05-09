/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct SettingsSectionModel {
    
    let name: SettingsSection
    let items: [Any]
    
    // One cell section init
    init(name: SettingsSection) {
        self.name = name
        self.items = []
    }
    
    // Several units cells section init
    init(name: SettingsSection, unitItems: [SettingsUnitItem] = []) {
        self.name = name
        self.items = unitItems.map {$0}
    }
    
    // Several support cells section init
    init(name: SettingsSection, supportItems: [SettingsSupportItem] = []) {
        self.name = name
        self.items = supportItems.map {$0}
    }
    
}

enum SettingsSection {
    
    case units
    case weatherFeeling
    case person
    case notifications
    case support
    
    var localizedString: String {
        switch self {
        case .units:
            return "units".localized
        case .weatherFeeling:
            return "weather_feeling".localized
        case .person:
            return "person".localized
        case .notifications:
            return "notifications".localized
        case .support:
            return "support".localized
        }
    }
}

enum SettingsUnitItem {
    
    case temperature
    case wind
    case pressure
    case visibility
    
    var localizedString: String {
        switch self {
        case .temperature:
            return "temp".localized
        case .wind:
            return "wind".localized
        case .pressure:
            return "pressure".localized
        case .visibility:
            return "visibility".localized
        }
    }
    
}

enum SettingsSupportItem {
    
    case rateTheApp
    case writeToDev
    
    var localizedString: String {
        switch self {
        case .rateTheApp:
            return "rate_app".localized
        case .writeToDev:
            return "write_to_dev".localized
        }
    }
    
}
