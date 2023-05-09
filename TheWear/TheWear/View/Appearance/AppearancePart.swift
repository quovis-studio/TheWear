/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum AppearancePart {
    
    case skinColor
    case haircut
    case hairColor
    case beard
    case beardColor
    
    var localizedString: String {
        switch self {
        case .skinColor:
            return "skin_color".localized
        case .haircut:
            return "haircut".localized
        case .hairColor:
            return "haircut_color".localized
        case .beard:
            return "beard".localized
        case .beardColor:
            return "beard_color".localized
        }
    }
    
}
