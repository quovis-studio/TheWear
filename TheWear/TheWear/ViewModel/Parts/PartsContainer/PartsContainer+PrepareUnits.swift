/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {
    
    func prepareWindSpeed(with wind_spd: Double?) -> [(value: String, measurement: String)] {
        guard let wind_spd = wind_spd else {
            return [("-", Wind.kph.rawValue.localized), ("-", Wind.ms.rawValue.localized)]
        }
        return [("\(Int(wind_spd * 18 / 5))", Wind.kph.rawValue.localized),
                ("\(Int(wind_spd))", Wind.ms.rawValue.localized)]
    }
    
    func preparePressure(with pres: Double?) -> [(value: String, measurement: String)] {
        guard let pres = pres else {
            return [("-", Pressure.hpa.rawValue.localized), ("-", Pressure.mmhg.rawValue.localized)]
        }
        return [("\(Int(pres))", Pressure.hpa.rawValue.localized),
                ("\(Int(pres * 0.75))", Pressure.mmhg.rawValue.localized)]
    }
    
    func prepareHumidity(with rh: Double?) -> [(value: String, measurement: String)] {
        guard let rh = rh else {
            return [("-", "%")]
        }
        return [("\(Int(rh))", "%")]
    }
    
    func prepareUV(with uv: Double?) -> [(value: String, measurement: String)] {
        guard let uv = uv else {
            return [("-", "-")]
        }
        return [("\(Int(uv))", prepareUVDescription(with: uv))]
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
    
    func prepareVisibility(with vis: Double?) -> [(value: String, measurement: String)] {
        guard let vis = vis else {
            return [("-", Visibility.km.rawValue.localized), ("-", Visibility.miles.rawValue.localized)]
        }
        return [("\(Int(vis))", Visibility.km.rawValue.localized),
                ("\(Int(vis * 0.62137))", Visibility.miles.rawValue.localized)]
    }
    
    func preparePrecipitation(with precip: Double?) -> [(value: String, measurement: String)] {
        guard let precip = precip else {
            return [("-", "mm".localized)]
        }
        return [("\(Int(precip))", "mm".localized)]
    }
    
}
