/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit
import CoreLocation

class LocationService: NSObject, CLLocationManagerDelegate {
    
    static let shared = LocationService()
    lazy var geocoder = CLGeocoder()
    var manager = CLLocationManager()
    var isLocationChecked = false
    var locationServiceEnabled = false
    
    func configureLocationManager() {
        manager.delegate = self
        manager.distanceFilter = 5000
        manager.requestAlwaysAuthorization()
        manager.startMonitoringSignificantLocationChanges()
        manager.showsBackgroundLocationIndicator = false
        manager.allowsBackgroundLocationUpdates = true
        manager.pausesLocationUpdatesAutomatically = true
    }
    
}
