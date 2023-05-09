/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SettingsUnitTableViewCell {
    
    @objc func changeValue() {
        switch unit {
        case .temperature:
            if valueLabel.text == Temperature.celsius.rawValue {
                valueLabel.text = Temperature.fahrenheit.rawValue
                UD.shared.save(Key.temperature, Temperature.fahrenheit.rawValue)
            } else {
                valueLabel.text = Temperature.celsius.rawValue
                UD.shared.save(Key.temperature, Temperature.celsius.rawValue)
            }
            AnalyticsService.shared.sendEvent(.tempUnitChanged)
            
        case .wind:
            if valueLabel.text == Wind.ms.rawValue.localized {
                valueLabel.text = Wind.kph.rawValue.localized
                UD.shared.save(Key.wind, Wind.kph.rawValue)
            } else {
                valueLabel.text = Wind.ms.rawValue.localized
                UD.shared.save(Key.wind, Wind.ms.rawValue)
            }
            AnalyticsService.shared.sendEvent(.windUnitChanged)
            
        case .pressure:
            if valueLabel.text == Pressure.hpa.rawValue.localized {
                valueLabel.text = Pressure.mmhg.rawValue.localized
                UD.shared.save(Key.pressure, Pressure.mmhg.rawValue)
            } else {
                valueLabel.text = Pressure.hpa.rawValue.localized
                UD.shared.save(Key.pressure, Pressure.hpa.rawValue)
            }
            AnalyticsService.shared.sendEvent(.pressureUnitChanged)
            
        case .visibility:
            if valueLabel.text == Visibility.km.rawValue.localized {
                valueLabel.text = Visibility.miles.rawValue.localized
                UD.shared.save(Key.visibility, Visibility.miles.rawValue)
            } else {
                valueLabel.text = Visibility.km.rawValue.localized
                UD.shared.save(Key.visibility, Visibility.km.rawValue)
            }
            AnalyticsService.shared.sendEvent(.visiilityUnitChanged)
            
        case .none:
            return
        }
    }
    
    func getValueLabelText() -> String {
        switch unit {
        case .temperature:
            return UD.shared.isCelsius() ?
            Temperature.celsius.localizedString :
            Temperature.fahrenheit.localizedString
            
        case .wind:
            return UD.shared.isMS() ?
            Wind.ms.localizedString :
            Wind.kph.localizedString
            
        case .pressure:
            return UD.shared.isHpa() ?
            Pressure.hpa.localizedString :
            Pressure.mmhg.localizedString
            
        case .visibility:
            return UD.shared.isKM() ?
            Visibility.km.localizedString :
            Visibility.miles.localizedString
            
        case .none:
            return "-"
        }
    }
    
}
