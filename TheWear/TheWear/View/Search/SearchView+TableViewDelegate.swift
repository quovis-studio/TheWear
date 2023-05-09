/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol SearchTableViewDelegate: AnyObject {
    func chooseGeolocation()
    func chooseSavedCity(_ index: Int)
    func chooseSearchedCity(_ index: Int)
    func deleteSavedCity(_ index: Int)
}

extension SearchView: SearchTableViewDelegate {
    
    func chooseGeolocation() {
        searchTextField.resignFirstResponder()
        guard NetworkService.shared.isConnected else {
            networkFailure(location: .searchGeolocation) { [weak self] in
                self?.chooseGeolocation()
            }
            return
        }
        guard LocationService.shared.locationServiceEnabled else {
            alertViewDelegate?.showAlertView(
                error: .geolocation,
                location: .searchGeolocation,
                style: .colored,
                outsideTapAction: false
            ) {  }
            return
        }
        guard let location = LocationService.shared.getCurrentLocation() else {
            alertViewDelegate?.showAlertView(
                error: .unknown,
                location: .searchGeolocation,
                style: .colored,
                outsideTapAction: false
            ) { [weak self] in
                self?.chooseGeolocation()
            }
            return
        }
        
        close()
        weatherFetchDelegate?.fetchWeather(
            location: location,
            autoPullToRefresh: enableToClose,
            firstTimeOpened: false
        )
    }
    
    func chooseSavedCity(_ index: Int) {
        searchTextField.resignFirstResponder()
        guard NetworkService.shared.isConnected else {
            networkFailure(location: .chooseSavedCity) { [weak self] in
                self?.chooseSavedCity(index)
            }
            return
        }
        guard let savedCities = savedCitiesViewModel else {
            alertViewDelegate?.showAlertView(
                error: .unknown,
                location: .chooseSavedCity,
                style: .colored,
                outsideTapAction: false
            ) { [weak self] in
                self?.chooseSavedCity(index)
            }
            return
        }
        
        close()
        let savedCity = savedCities[index]
        updateSavedCities(with: savedCity)
        let coordinates = Coordinates(latitude: savedCity.lat, longitude: savedCity.lon)
        let location = Location(current: false, coordinates: coordinates, city: savedCity.city)
        weatherFetchDelegate?.fetchWeather(
            location: location,
            autoPullToRefresh: enableToClose,
            firstTimeOpened: false
        )
        AnalyticsService.shared.sendEvent(.cityTapped)
    }
    
    func chooseSearchedCity(_ index: Int) {
        searchTextField.resignFirstResponder()
        guard NetworkService.shared.isConnected else {
            networkFailure(location: .chooseSearchedCity) { [weak self] in
                self?.chooseSearchedCity(index)
            }
            return
        }
        guard let searchedCities = searchedCitiesViewModel else {
            alertViewDelegate?.showAlertView(
                error: .unknown,
                location: .chooseSearchedCity,
                style: .colored,
                outsideTapAction: false
            ) { [weak self] in
                self?.chooseSearchedCity(index)
            }
            return
        }
        
        close()
        let searchedCity = searchedCities[index]
        updateSavedCities(with: searchedCity)
        let coordinates = Coordinates(latitude: searchedCity.lat, longitude: searchedCity.lon)
        let location = Location(current: false, coordinates: coordinates, city: searchedCity.city)
        weatherFetchDelegate?.fetchWeather(
            location: location,
            autoPullToRefresh: enableToClose,
            firstTimeOpened: false
        )
        AnalyticsService.shared.sendEvent(.cityTapped)
    }
    
    func deleteSavedCity(_ index: Int) {
        savedCitiesViewModel.remove(at: index)
        citiesTableView.performBatchUpdates {
            citiesTableView.deleteRows(
                at: [IndexPath(row: index + 1, section: 0)],
                with: .fade
            )
        } completion: { _ in
            self.citiesTableView.reloadData()
        }
        UD.shared.saveCities(savedCitiesViewModel)
    }
    
    private func updateSavedCities(with city: CityViewModel) {
        if savedCitiesViewModel.contains(city) {
            for (index, savedCity) in savedCitiesViewModel.enumerated() {
                if city.name == savedCity.name {
                    savedCitiesViewModel.remove(at: index)
                    break
                }
            }
        }
        savedCitiesViewModel.insert(city, at: 0)
        UD.shared.saveCities(savedCitiesViewModel)
    }
    
    private func networkFailure(
        location: ErrorLocation,
        _ completion: @escaping () -> Void
    ) {
        alertViewDelegate?.showAlertView(
            error: .network,
            location: location,
            style: .colored,
            outsideTapAction: false
        ) {
            completion()
        }
    }

}
