//
//  SearchView+Fetch.swift
//  theWear
//

import UIKit
import CoreLocation


extension SearchView {
    
    func checkNetworkConnection() -> Bool {
        guard NetworkService.shared.isConnected else {
            alertDelegate?.showAlertView(with: Error.network)
            return false
        }
        return true
    }
    
    func getUsersLocation() -> Coordinates? {
        guard ((locationDelegate?.userEnabledLocationUse()) != nil),
              let location = locationDelegate?.getUsersLocation() else {
            alertDelegate?.showAlertView(with: Error.location)
            return nil
        }
        return Coordinates(latitude: location.latitude, longitude: location.longitude)
    }
    
    func fetchSavedCities() {
        isSearching = false
        self.savedCitiesViewModel = UD.shared.retrieveCities()
        citiesTableView.reloadData()
    }
    
    @objc func fetchAutocompleteCities(for text: String) {
        self.searchTextField.resignFirstResponder()
        guard checkNetworkConnection() else {return}
        isSearching = true
        SearchService.shared.fetchAutocompleteCities(text: text) { cities in
            guard let cities = cities else {
                self.alertDelegate?.showAlertView(with: Error.unknown)
                return
            }
            self.searchedCitiesViewModel = cities
            self.citiesTableView.reloadData()
        }
    }
}
