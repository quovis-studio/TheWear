/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class ViewController: UIViewController {
    
    var partsViewModel: [PartViewModel]?
    var hoursViewModel: [HourViewModel]?
    var unitsViewModel: [UnitViewModel]?
    var forecastViewModel: [ForecastViewModel]?
    
    let navigationView = NavigationView()
    let weatherView = WeatherView()
    
    private func configureWeatherView() {
        view.addSubview(weatherView)
        weatherView.matchSuperview()
        weatherView.weatherDelegate = self
        weatherView.weatherFetchDelegate = self
    }
    
    private func configureNavigationView() {
        view.addSubview(navigationView)
        navigationView.constraints(
            top: view.safeArea.top(Size.padding.xxxSmall),
            left: view.left(Size.padding.medium),
            right: view.right(Size.padding.medium)
        )
        navigationView.navigationDelegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LocationService.shared.configureLocationManager()
        NotificationService.shared.requestPermission()
        configureWeatherView()
        configureNavigationView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
