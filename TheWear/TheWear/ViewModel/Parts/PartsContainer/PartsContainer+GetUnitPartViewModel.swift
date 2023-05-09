/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {
    
    func getUnitPartViewModel(
        _ currentWeatherContainer: CurrentWeatherContainer,
        _ hourWeatherData: HourWeatherModel,
        _ part: String,
        _ unit: Unit
    ) -> UnitPartViewModel {
        var units = [(value: String, measurement: String)]()
        switch unit {
        case .wind:
            if part == DayPart.now.localizedString {
                units = [(currentWeatherContainer.windSpeedKM, Wind.kph.rawValue.localized),
                         (currentWeatherContainer.windSpeedMS, Wind.ms.rawValue.localized)]
            } else {
                units = prepareWindSpeed(with: hourWeatherData.wind_spd)
            }
            
        case .pressure:
            if part == DayPart.now.localizedString {
                units = [(currentWeatherContainer.pressureHPA, Pressure.hpa.rawValue.localized),
                         (currentWeatherContainer.pressureMMHG, Pressure.mmhg.rawValue.localized)]
            } else {
                units = preparePressure(with: hourWeatherData.pres)
            }
            
        case .humidity:
            if part == DayPart.now.localizedString {
                units = [(currentWeatherContainer.humidity, "%")]
            } else {
                units = prepareHumidity(with: hourWeatherData.rh)
            }
            
        case .uv:
            if part == DayPart.now.localizedString {
                units = [(currentWeatherContainer.uv, currentWeatherContainer.uvDescription)]
            } else {
                units = prepareUV(with: hourWeatherData.uv)
            }
            
        case .visibility:
            if part == DayPart.now.localizedString {
                units = [(currentWeatherContainer.visibilityKM, Visibility.km.rawValue.localized),
                         (currentWeatherContainer.visibilityMiles, Visibility.miles.rawValue.localized)]
            } else {
                units = prepareVisibility(with: hourWeatherData.vis)
            }
            
        case .precipitation:
            if part == DayPart.now.localizedString {
                units = [(currentWeatherContainer.precipitation, "mm".localized)]
            } else {
                units = preparePrecipitation(with: hourWeatherData.precip)
            }
        }
        
        return UnitPartViewModel(unit: unit, part: part, units: units)
    }
    
}
