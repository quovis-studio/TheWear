/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class WeatherView: UIView {
    
    weak var weatherDelegate: WeatherDelegate?
    weak var weatherFetchDelegate: WeatherFetchDelegate?
    
    var partsSize: CGSize!
    var personSize: CGSize!
    var hoursSize: CGSize!
    var forecastSize: CGSize!
    var unitSize: CGSize!
    var currentPart = 0
    var partsViewHeightConstraint: NSLayoutConstraint!
    
    let statusBarSubstrateView = StatusBarSubstrateView()
    let scrollView = UIScrollView()
    let contentView = UIView()
    let partsView = PartsView()
    let hoursView = HoursView()
    let forecastView = ForecastView()
    let windView = UnitView()
    let pressureView = UnitView()
    let humidityView = UnitView()
    let uvView = UnitView()
    let visibilityView = UnitView()
    let precipitationView = UnitView()
    
    lazy var updateControl: UIRefreshControl = {
        let control = UIRefreshControl()
        control.tintColor = UIColor.white
        control.addTarget(self, action: #selector(beginPullToRefresh), for: .valueChanged)
        return control
    }()
    
    private func configureHoursObserver() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateHoursIfNeeded),
            name: UIApplication.didBecomeActiveNotification,
            object: nil
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSizeOfWeatherViews()
        configureScrollView()
        configureContentView()
        configureStatusBarSubstrateView()
        configurePartsView()
        configureHoursView()
        configureForecastView()
        configureUnitViews()
        configureHoursObserver()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
