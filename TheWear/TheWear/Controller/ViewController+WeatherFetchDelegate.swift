/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol WeatherFetchDelegate: AnyObject {
    func fetchWeather(location: Location, autoPullToRefresh: Bool, firstTimeOpened: Bool)
    func pullToRefreshFetchWeather()
}

extension ViewController: WeatherFetchDelegate {
    
    func fetchWeather(
        location: Location,
        autoPullToRefresh: Bool,
        firstTimeOpened: Bool
    ) {
        if autoPullToRefresh { weatherView.beginAutoPullToRefresh() }
        
        WeatherService.shared.fetchWeather(for: location) { [weak self] weather in
            guard let weather = weather else {
                self?.tryFetchWeatherAgain(
                    location: location,
                    autoPullToRefresh: autoPullToRefresh,
                    firstTimeOpened: firstTimeOpened
                )
                return
            }
            self?.partsViewModel = weather.parts
            self?.hoursViewModel = weather.hours
            self?.forecastViewModel = weather.forecast
            self?.unitsViewModel = weather.units
            
            self?.removeAllAlertViews()
            self?.navigationView.update(with: weather.city)
            self?.weatherView.update()
            self?.weatherView.endPullToRefresh()
            self?.showRateViewIfNeeded()
        }
    }
    
    func tryFetchWeatherAgain(
        location: Location,
        autoPullToRefresh: Bool,
        firstTimeOpened: Bool
    ) {
        weatherView.endPullToRefresh()
        showAlertView(
            error: .unknown,
            location: .refresh,
            style: .white,
            outsideTapAction: firstTimeOpened
        ) { [weak self] in
            if !firstTimeOpened { self?.weatherView.beginAutoPullToRefresh() }
            self?.fetchWeather(
                location: location,
                autoPullToRefresh: autoPullToRefresh,
                firstTimeOpened: firstTimeOpened
            )
        }
    }
    
    func pullToRefreshFetchWeather() {
        guard NetworkService.shared.isConnected else {
            networkFailureWhenPullToRefreshFetchWeather()
            return
        }
        
        if let location = LocationService.shared.getNotCurrentLastLocation() {
            fetchWeather(
                location: location,
                autoPullToRefresh: false,
                firstTimeOpened: false
            )
            
        } else {
            guard LocationService.shared.locationServiceEnabled else {
                openSearchView(enableToClose: false)
                return
            }
            
            guard let location = LocationService.shared.getCurrentLocation() else {
                locationFailureWhenPullToRefreshFetchWeather()
                return
            }
            
            fetchWeather(
                location: location,
                autoPullToRefresh: false,
                firstTimeOpened: false
            )
        }
    }
    
    private func networkFailureWhenPullToRefreshFetchWeather() {
        weatherView.endPullToRefresh()
        showAlertView(
            error: .network,
            location: .pullToRefresh,
            style: .white,
            outsideTapAction: false
        ) { [weak self] in
            self?.pullToRefreshFetchWeather()
        }
    }
    
    private func locationFailureWhenPullToRefreshFetchWeather() {
        weatherView.endPullToRefresh()
        showAlertView(
            error: .unknown,
            location: .pullToRefresh,
            style: .white,
            outsideTapAction: false
        ) { [weak self] in
            self?.pullToRefreshFetchWeather()
        }
    }
    
}
