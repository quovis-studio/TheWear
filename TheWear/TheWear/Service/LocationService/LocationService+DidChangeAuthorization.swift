/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit
import CoreLocation

extension LocationService {
    
    func locationManager(
        _ manager: CLLocationManager,
        didChangeAuthorization status: CLAuthorizationStatus
    ) {
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            locationServiceEnabled = true
            if isLocationChecked { return }
            fetchWeatherWhenLocationIsAuthorized()
            
        case .denied, .restricted:
            locationServiceEnabled = false
            if isLocationChecked { return }
            fetchWeatherWhenLocationIsRestricted()
            
        case .notDetermined:
            locationServiceEnabled = false
            return
            
        @unknown default:
            fatalError()
        }
        isLocationChecked = true
    }
    
    private func fetchWeatherWhenLocationIsAuthorized() {
        let window = UIApplication.shared.windows[0]
        guard let vc = window.rootViewController as? ViewController else { return }
        
        guard NetworkService.shared.isConnected else {
            networkFailureWhenFetchWeather(with: vc) { [weak self] in
                self?.tryFetchWeatherAfterFailure(with: vc)
            }
            return
        }
        
        guard let location = LocationService.shared.getCurrentLocation() else {
            locationFailureWhenFetchWeather(with: vc)
            return
        }
        
        vc.fetchWeather(
            location: location,
            autoPullToRefresh: false,
            firstTimeOpened: true
        )
    }
    
    private func tryFetchWeatherAfterFailure(with vc: ViewController) {
        guard NetworkService.shared.isConnected else {
            networkFailureWhenFetchWeather(with: vc) { [weak self] in
                self?.tryFetchWeatherAfterFailure(with: vc)
            }
            return
        }
        
        if locationServiceEnabled {
            guard let location = LocationService.shared.getCurrentLocation() else {
                locationFailureWhenFetchWeather(with: vc)
                return
            }
            vc.fetchWeather(
                location: location,
                autoPullToRefresh: false,
                firstTimeOpened: true
            )
            
        } else {
            guard let location = LocationService.shared.getNotCurrentLastLocation() else {
                vc.openSearchView(enableToClose: false)
                return
            }
            
            vc.fetchWeather(
                location: location,
                autoPullToRefresh: false,
                firstTimeOpened: true
            )
        }
    }
    
    private func fetchWeatherWhenLocationIsRestricted() {
        let window = UIApplication.shared.windows[0]
        guard let vc = window.rootViewController as? ViewController else { return }
        
        guard let location = LocationService.shared.getNotCurrentLastLocation() else {
            vc.openSearchView(enableToClose: false)
            return
        }

        vc.fetchWeather(
            location: location,
            autoPullToRefresh: false,
            firstTimeOpened: true
        )
    }
    
    private func networkFailureWhenFetchWeather(
        with vc: ViewController,
        _ completion: @escaping () -> Void
    ) {
        vc.showAlertView(
            error: .network,
            location: .fetchWeather,
            style: .white,
            outsideTapAction: true
        ) {
            completion()
        }
    }
    
    private func locationFailureWhenFetchWeather(with vc: ViewController) {
        vc.showAlertView(
            error: .unknown,
            location: .fetchWeather,
            style: .white,
            outsideTapAction: true
        ) { [weak self] in
            self?.tryFetchWeatherAfterFailure(with: vc)
        }
    }
    
}
