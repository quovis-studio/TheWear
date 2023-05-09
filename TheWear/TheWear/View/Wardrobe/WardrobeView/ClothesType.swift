/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum ClothesType: CaseIterable {
    
    case outerwear
    case top
    case bottom
    case shoes
    case accessories
    
    var localizedString: String {
        switch self {
        case .outerwear:
            return "outerwear".localized
        case .top:
            return "top".localized
        case .bottom:
            return "bottom".localized
        case .shoes:
            return "shoes".localized
        case .accessories:
            return "accessories".localized
        }
    }
    
}
