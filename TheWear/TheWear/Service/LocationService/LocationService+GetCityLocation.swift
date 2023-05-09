/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit
import CoreLocation

extension LocationService {
    
    func getNotCurrentLastLocation() -> Location? {
        guard let location = UD.shared.retrieveLastLocation() else { return nil }
        guard !location.current else { return nil }
        return location
    }
    
    
    
}
