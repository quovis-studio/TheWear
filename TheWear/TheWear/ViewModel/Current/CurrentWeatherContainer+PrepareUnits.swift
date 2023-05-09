/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension CurrentWeatherContainer {

    mutating func prepareWindSpeed(with windSpeed: Double?) {
        guard let windSpeed = windSpeed else {
            windSpeedKM = "-"
            windSpeedMS = "-"
            return
        }
        windSpeedKM = "\(Int(windSpeed * 18/5))"
        windSpeedMS = "\(Int(windSpeed))"
    }
    
    mutating func preparePressure(with pressure: Double?) {
        guard let pressure = pressure else {
            pressureHPA = "-"
            pressureMMHG = "-"
            return
        }
        pressureHPA = "\(Int(pressure))"
        pressureMMHG = "\(Int(pressure * 0.75))"
    }
    
    mutating func prepareUV(with uvData: Double?) {
        guard let uvData = uvData else {
            uv = "-"
            uvDescription = "-"
            return
        }
        uv = "\(Int(uvData))"
        uvDescription = prepareUVDescription(with: uvData)
    }
    
    func prepareUVDescription(with uv: Double) -> String {
        if uv >= 3 && uv <= 5 {
            return UV.moderate.localizedString
        } else if uv >= 0 && uv < 3 {
            return UV.low.localizedString
        } else {
            return UV.high.localizedString
        }
    }
    
    mutating func prepareHumidity(with rh: Double?) {
        guard let rh = rh else {
            humidity = "-"
            return
        }
        humidity = "\(Int(rh))"
    }
    
    mutating func prepareVisibility(with vis: Double?) {
        guard let vis = vis else {
            visibilityKM = "-"
            visibilityMiles = "-"
            return
        }
        visibilityKM = "\(Int(vis))"
        visibilityMiles = "\(Int(vis * 0.62137))"
    }
    
    mutating func preparePrecipitation(with precip: Double?) {
        guard let precip = precip else {
            precipitation = "-"
            return
        }
        precipitation = "\(Int(precip))"
    }
    
}
