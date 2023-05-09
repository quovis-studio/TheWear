/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum WeatherFeeling {
    
    case muchColder
    case colder
    case asIs
    case hotter
    case muchHotter
    
    var value: Float {
        switch self {
        case .muchColder:
            return -4.0
        case .colder:
            return -2.0
        case .asIs:
            return 0.0
        case .hotter:
            return 2.0
        case .muchHotter:
            return 4.0
        }
    }
    
}
