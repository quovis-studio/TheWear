/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum Error {
    
    case network
    case geolocation
    case notifications
    case unknown
    
    var title: String {
        switch self {
        case .network:
            return "internet_error_title".localized
        case .geolocation:
            return "geo_error_title".localized
        case .notifications:
            return "notifications_error_title".localized
        case .unknown:
            return "unknown_error_title".localized
        }
    }
    
    var description: String {
        switch self {
        case .network:
            return "internet_error_text".localized
        case .geolocation:
            return "geo_error_text".localized
        case .notifications:
            return "notifications_error_text".localized
        case .unknown:
            return "unknown_error_text".localized
        }
    }

}

enum ErrorLocation {
    
    case fetchWeather
    case pullToRefresh
    case refresh
    case searchGeolocation
    case chooseSavedCity
    case chooseSearchedCity
    case autocompleteCities
    case settings
    
}
