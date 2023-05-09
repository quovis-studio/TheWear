/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum Unit: CaseIterable {
    
    case wind
    case pressure
    case humidity
    case uv
    case visibility
    case precipitation
    
    var localizedString: String {
        switch self {
        case .wind:
            return "wind".localized
        case .pressure:
            return "pressure".localized
        case .humidity:
            return "humidity".localized
        case .uv:
            return "uv".localized
        case .visibility:
            return "visibility".localized
        case .precipitation:
            return "precipitation".localized
        }
    }
    
}

enum UV {
    
    case low
    case moderate
    case high
    
    var localizedString: String {
        switch self {
        case .low:
            return "low".localized
        case .moderate:
            return "moderate".localized
        case .high:
            return "high".localized
        }
    }
    
}

enum Temperature: String {
    
    case celsius = "ºC"
    case fahrenheit = "ºF"
    
    var localizedString: String {
        switch self {
        case .celsius:
            return "ºC"
        case .fahrenheit:
            return "ºF"
        }
    }
    
}

enum Wind: String {
    
    case kph = "kph"
    case ms = "ms"
    
    var localizedString: String {
        switch self {
        case .kph:
            return "kph".localized
        case .ms:
            return "ms".localized
        }
    }
    
}

enum Pressure: String {
    
    case hpa = "hpa"
    case mmhg = "mmhg"
    
    var localizedString: String {
        switch self {
        case .hpa:
            return "hpa".localized
        case .mmhg:
            return "mmhg".localized
        }
    }
    
}

enum Visibility: String {
    
    case km = "km"
    case miles = "mi"
    
    var localizedString: String {
        switch self {
        case .km:
            return "km".localized
        case .miles:
            return "mi".localized
        }
    }
    
}

enum Sex: String {
    
    case male = "male"
    case female = "female"
    
    var localizedString: String {
        switch self {
        case .male:
            return "male".localized
        case .female:
            return "female".localized
        }
    }
    
}
