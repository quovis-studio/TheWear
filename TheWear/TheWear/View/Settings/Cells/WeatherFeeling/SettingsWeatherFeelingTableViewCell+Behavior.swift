/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SettingsWeatherFeelingTableViewCell {
    
    private func configurePathView(with value: Float) {
        let onePartWidth = (frame.size.width - 2 * (Size.padding.xLarge + Size.padding.xSmall)) / 4
        
        switch value {
        case WeatherFeeling.muchColder.value:
            pathViewLeadingConstraint.constant = 0
            pathViewTrailingConstraint.constant = -2 * onePartWidth
            lessColderNotchView.backgroundColor = Color.label.secondarySolid
            
        case WeatherFeeling.colder.value:
            pathViewLeadingConstraint.constant = onePartWidth
            pathViewTrailingConstraint.constant = -2 * onePartWidth
            lessColderNotchView.backgroundColor = Color.background.quinarySolid
            
        case WeatherFeeling.asIs.value:
            pathViewLeadingConstraint.constant = 2 * onePartWidth
            pathViewTrailingConstraint.constant = -2 * onePartWidth
            
        case WeatherFeeling.hotter.value:
            pathViewLeadingConstraint.constant = 2 * onePartWidth
            pathViewTrailingConstraint.constant = -onePartWidth
            lessHotterNotchView.backgroundColor = Color.background.quinarySolid
          
        case WeatherFeeling.muchHotter.value:
            pathViewLeadingConstraint.constant = 2 * onePartWidth
            pathViewTrailingConstraint.constant = 0
            lessHotterNotchView.backgroundColor = Color.label.secondarySolid
            
        default:
            pathViewLeadingConstraint.constant = 2 * onePartWidth
            pathViewTrailingConstraint.constant = -2 * onePartWidth
        }
        layoutIfNeeded()
    }
    
    func updatePathViewConstraintsAfterLayoutIsDone() {
        configurePathView(with: currentValue)
    }
    
    @objc func handleValueChanged(_ slider: UISlider) {
        let nextValue = round(slider.value / 2.0) * 2.0
        slider.value = nextValue
        if nextValue != currentValue {
            configurePathView(with: nextValue)
            currentValue = nextValue
            UD.shared.save(Key.tempFeeling, slider.value)
            AnalyticsService.shared.sendEvent(.tempFeelingSwiped)
        }
    }
    
    @objc func beginValueChanging() {
        allowToPan?(false)
    }
        
    @objc func endValueChanging(_ slider: UISlider) {
        allowToPan?(true)
        UD.shared.save(Key.tempFeeling, slider.value)
        AnalyticsService.shared.sendEvent(.tempFeelingChanged)
    }
    
}
