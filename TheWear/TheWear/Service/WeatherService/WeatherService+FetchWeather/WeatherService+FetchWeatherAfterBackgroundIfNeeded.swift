/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WeatherService {

    func fetchWeatherAfterBackgroundIfNeeded() {
        guard checkLastTimeDifference() > 60 else { return }
        guard checkNoSearchDisabledToClose() else { return }
        tryFetchWeather()
    }
    
    private func checkLastTimeDifference() -> Double {
        let lastTime = UD.shared.retrieve(Key.timeBeforeBackground) ?? 0.0
        guard lastTime != 0 else { return -1 }
        let nowTime = Date().timeIntervalSinceReferenceDate
        let difference = (nowTime - lastTime) / 60
        return difference
    }
    
    private func checkNoSearchDisabledToClose() -> Bool {
        let window = UIApplication.shared.windows[0]
        guard let vc = window.rootViewController as? ViewController else { return false }
        if let search = vc.view.subviews.last as? SearchView {
            guard search.enableToClose else { return false }
            return true
        }
        return true
    }
    
    private func tryFetchWeather() {
        let window = UIApplication.shared.windows[0]
        guard let vc = window.rootViewController as? ViewController else { return }
        
        removeAllModalViews(in: vc)
        
        guard NetworkService.shared.isConnected else {
            networkFailureWhenFetchWeather(with: vc)
            return
        }
        
        if let location = LocationService.shared.getNotCurrentLastLocation() {
            vc.fetchWeather(
                location: location,
                autoPullToRefresh: true,
                firstTimeOpened: false
            )
            
        } else {
            guard LocationService.shared.locationServiceEnabled else {
                vc.openSearchView(enableToClose: false)
                return
            }
            
            guard let location = LocationService.shared.getCurrentLocation() else {
                locationFailureWhenFetchWeather(with: vc)
                return
            }
            
            vc.fetchWeather(
                location: location,
                autoPullToRefresh: true,
                firstTimeOpened: false
            )
        }
    }
    
    private func removeAllModalViews(in vc: ViewController) {
        for view in vc.view.subviews {
            if let modalView = view as? ModalView {
                modalView.closeImmediately()
            }
        }
    }
    
    private func networkFailureWhenFetchWeather(with vc: ViewController) {
        vc.showAlertView(
            error: .network,
            location: .fetchWeather,
            style: .white,
            outsideTapAction: false
        ) { [weak self] in
            self?.tryFetchWeather()
        }
    }
    
    private func locationFailureWhenFetchWeather(with vc: ViewController) {
        vc.showAlertView(
            error: .unknown,
            location: .fetchWeather,
            style: .white,
            outsideTapAction: false
        ) { [weak self] in
            self?.tryFetchWeather()
        }
    }
    
}
