/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SearchView: ModalView, UITextFieldDelegate {
    
    var timer: Timer?
    var isSearching = false
    
    weak var weatherFetchDelegate: WeatherFetchDelegate?
    weak var alertViewDelegate: AlertViewDelegate?
    
    var savedCitiesViewModel: [CityViewModel]!
    var searchedCitiesViewModel: [CityViewModel]!

    lazy var searchTextField: SearchTextField = {
        let tf = SearchTextField()
        tf.delegate = self
        tf.addTarget(self, action: #selector(textFieldTextDidChanged(_:)), for: .editingChanged)
        return tf
    }()
    
    lazy var citiesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    private func configureSearchTextField() {
        substrateView.insertSubview(searchTextField, at: 0)
        searchTextField.constraints(
            top: panView.bottom(Size.padding.small),
            left: substrateView.left(Size.padding.medium),
            right: substrateView.right(Size.padding.medium),
            height: .equalToConstant(Size.icon.large)
        )
    }
    
    private func configureCitiesTableView() {
        substrateView.insertSubview(citiesTableView, at: 0)
        citiesTableView.constraints(
            top: searchTextField.bottom(Size.padding.small),
            left: substrateView.left,
            bottom: substrateView.bottom,
            right: substrateView.right
        )
    }
    
    private func registerCells() {
        citiesTableView.register(GeolocationTableViewCell.self, forCellReuseIdentifier: "geoCell")
        citiesTableView.register(SavedCityTableViewCell.self, forCellReuseIdentifier: "savedCityCell")
        citiesTableView.register(SearchedCityTableViewCell.self, forCellReuseIdentifier: "searchedCityCell")
    }
     
    override init(following: Bool = false, enableToClose: Bool = true) {
        super.init(following: following, enableToClose: enableToClose)
        configureSearchTextField()
        configureCitiesTableView()
        registerCells()
        fetchSavedCities()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
