/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct UnitViewModel {
    
    let unit: Unit
    let unitName: String
    let unitParts: [UnitPartViewModel]
    
    init(unitName: String,
         unitParts: [UnitPartViewModel]
    ) {
        self.unitName = unitName
        self.unitParts = unitParts
        self.unit = unitParts[0].unit
    }
    
}

struct UnitPartViewModel {
    
    let unit: Unit
    let part: String
    let units: [(value: String, measurement: String)]
    
    init(
        unit: Unit,
        part: String,
        units: [(value: String, measurement: String)]
    ) {
        self.unit = unit
        self.part = part
        self.units = units
    }
    
    func getCorrectUnit() -> (value: String, measurement: String) {
        switch unit {
        case .wind:
            if UD.shared.retrieve(Key.wind) == Wind.kph.rawValue {
                return units[0]
            } else {
                return units[1]
            }
            
        case .pressure:
            if UD.shared.retrieve(Key.pressure) == Pressure.hpa.rawValue {
                return units[0]
            } else {
                return units[1]
            }
            
        case .humidity:
            return units[0]
            
        case .uv:
            return units[0]
            
        case .visibility:
            if UD.shared.retrieve(Key.visibility) == Visibility.km.rawValue {
                return units[0]
            } else {
                return units[1]
            }
            
        case .precipitation:
            return units[0]
        }
    }
    
}
