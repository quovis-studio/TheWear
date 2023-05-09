/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SearchView {

    func fetchSavedCities() {
        isSearching = false
        savedCitiesViewModel = UD.shared.retrieveCities()
        citiesTableView.reloadData()
    }
    
    @objc func fetchAutocompleteCities(for text: String) {
        guard NetworkService.shared.isConnected else {
            searchTextField.resignFirstResponder()
            alertViewDelegate?.showAlertView(
                error: .network,
                location: .autocompleteCities,
                style: .colored,
                outsideTapAction: false
            ) { [weak self] in
                self?.fetchAutocompleteCities(for: text)
            }
            return
        }
        searchedCitiesViewModel = nil
        isSearching = true
        citiesTableView.reloadData()
        startLoading()
        SearchService.shared.fetchAutocompleteCities(text: text) { [weak self] cities in
            self?.stopLoading()
            guard let cities = cities else {
                self?.searchTextField.resignFirstResponder()
                self?.alertViewDelegate?.showAlertView(
                    error: .unknown,
                    location: .autocompleteCities,
                    style: .colored,
                    outsideTapAction: false
                ) { [weak self] in
                    self?.fetchAutocompleteCities(for: text)
                }
                return
            }
            self?.searchedCitiesViewModel = cities
            self?.citiesTableView.reloadData()
        }
    }
    
}
