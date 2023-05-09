/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum DayPart {
    
    case now
    case night
    case morning
    case day
    case evening
    
    var localizedString: String {
        switch self {
        case .now:
            return "now".localized
        case .night:
            return "night".localized
        case .morning:
            return "morning".localized
        case .day:
            return "day".localized
        case .evening:
            return "evening".localized
        }
    }
    
}
