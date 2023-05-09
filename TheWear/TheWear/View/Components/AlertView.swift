/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
 */

import UIKit

enum AlertStyle {
    case white
    case colored
}

class AlertView: UIView {
    
    private var style: AlertStyle!
    private var error: Error!
    private var errorLocation: ErrorLocation!
    private var outsideTapAction: Bool!
    
    var closed: (() -> ())?
    var openAppSettings: (() -> ())?
    var tryAgain: (() -> ())?
    
    private var alertViewConstraintWhenOpen: NSLayoutConstraint!
    private var alertViewConstraintWhenClose: NSLayoutConstraint!
    
    private lazy var substrateView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = Size.padding.medium
        view.layer.cornerCurve = .continuous
        view.layer.borderColor = Color.black.quinary.cgColor
        view.layer.borderWidth = Size.system.border
        if style == .white {
            view.backgroundColor = Color.white.primary
        } else if style == .colored && (UIDevice.current.userInterfaceIdiom == .phone) {
            view.backgroundColor = WeatherService.shared.currentColor
        } else {
            view.backgroundColor = Color.white.primary
        }
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = Font.body
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        if style == .white {
            label.textColor = Color.black.primary
        } else if style == .colored && (UIDevice.current.userInterfaceIdiom == .phone) {
            label.textColor = Color.white.primary
        } else {
            label.textColor = Color.black.primary
        }
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = Font.footnote1
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        if style == .white {
            label.textColor = Color.black.primary
        } else if style == .colored && (UIDevice.current.userInterfaceIdiom == .phone) {
            label.textColor = Color.white.primary
        } else {
            label.textColor = Color.black.primary
        }
        return label
    }()
    
    private lazy var alertButton: UILabel = {
        let label = UILabel()
        label.font = Font.subhead
        label.textAlignment = .center
        label.layer.cornerRadius = Size.padding.xSmall
        label.layer.cornerCurve = .continuous
        label.clipsToBounds = true
        if style == .white {
            label.textColor = Color.white.primary
            label.backgroundColor = WeatherService.shared.currentColor
        } else if style == .colored && (UIDevice.current.userInterfaceIdiom == .phone) {
            label.textColor = WeatherService.shared.currentColor
            label.backgroundColor = Color.white.primary
        } else {
            label.textColor = Color.white.primary
            label.backgroundColor = WeatherService.shared.currentColor
        }
        return label
    }()
    
    private func configureContent(with error: Error) {
        titleLabel.text = error.title
        descriptionLabel.text = error.description
        switch error {
        case .network, .unknown:
            alertButton.text = "try_again".localized
        case .geolocation, .notifications:
            alertButton.text = "go_to_settings".localized
        }
    }
    
    private func configureSubstrateView() {
        addSubview(substrateView)
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            substrateView.constraints(
                left: self.left(Size.padding.xSmall),
                right: self.right(Size.padding.xSmall)
            )
        } else {
            substrateView.constraints(
                centerX: self.centerX,
                width: .equalTo(self.width, multiplier: 1/2)
            )
        }
    }
    
    private func configureButton() {
        substrateView.addSubview(alertButton)
        alertButton.constraints(
            bottom: substrateView.bottom(Size.padding.small),
            centerX: substrateView.centerX,
            width: .equalTo(substrateView.width, constant: -2 * Size.padding.small),
            height: .equalToConstant(Size.button.medium)
        )
    }
    
    private func configureDescriptionLabel() {
        substrateView.addSubview(descriptionLabel)
        descriptionLabel.constraints(
            left: substrateView.left(Size.padding.medium),
            bottom: alertButton.top(Size.padding.small),
            right: substrateView.right(Size.padding.medium)
        )
    }
    
    private func configureTitleLabel() {
        substrateView.addSubview(titleLabel)
        titleLabel.constraints(
            top: substrateView.top(Size.padding.medium),
            left: substrateView.left(Size.padding.medium),
            bottom: descriptionLabel.top(Size.padding.xxxSmall),
            right: substrateView.right(Size.padding.medium)
        )
    }
    
    private func configureConstraints() {
        alertViewConstraintWhenOpen = substrateView.bottomAnchor.constraint(
            equalTo: safeAreaLayoutGuide.bottomAnchor,
            constant: -Size.padding.medium
        )
        alertViewConstraintWhenClose = substrateView.topAnchor.constraint(
            equalTo: bottomAnchor,
            constant: Size.padding.medium
        )
        alertViewConstraintWhenClose.isActive = true
    }
    
    private func configureGestureRecognizers() {
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleOutsideTap(_:))))
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(close))
        swipeDown.direction = .down
        substrateView.addGestureRecognizer(swipeDown)
        alertButton.addTapGesture(self, #selector(handleAlertButtonTap(_:)))
    }
    
    @objc private func handleOutsideTap(_ recognizer: UITapGestureRecognizer) {
        if !(substrateView.frame.contains(recognizer.location(in: self))) {
            close(withAction: outsideTapAction)
        }
    }
    
    @objc private func handleAlertButtonTap(_ recognizer: UILongPressGestureRecognizer) {
        alertButton.handleTapGesture(recognizer) {
            close(withAction: true)
        }
    }
    
    private func makeActionWhenClosing() {
        switch error {
        case .network, .unknown:
            tryAgain?()
        case .geolocation, .notifications:
            openAppSettings?()
        case .none:
            tryAgain?()
        }
    }
    
    @objc func close(withAction: Bool = false) {
        if withAction { makeActionWhenClosing() }
        alertViewConstraintWhenOpen.isActive = false
        alertViewConstraintWhenClose.isActive = true
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.layoutIfNeeded()
        } completion: { _ in
            self.closed?()
            self.removeFromSuperview()
        }
    }
    
    func open() {
        layoutIfNeeded()
        alertViewConstraintWhenClose.isActive = false
        alertViewConstraintWhenOpen.isActive = true
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.layoutIfNeeded()
        }
    }
    
    func sendAlertEvent(error: Error, errorLocation: ErrorLocation) {
        switch error {
        case .network:
            switch errorLocation {
            case .fetchWeather:
                AnalyticsService.shared.sendEvent(.networkErrorWhenFetchWeather)
                
            case .pullToRefresh:
                AnalyticsService.shared.sendEvent(.networkErrorWhenPullToRefresh)
                
            case .refresh:
                AnalyticsService.shared.sendEvent(.networkErrorWhenRefresh)
                
            case .searchGeolocation:
                AnalyticsService.shared.sendEvent(.networkErrorWhenSearchGeolocation)
                
            case .chooseSavedCity:
                AnalyticsService.shared.sendEvent(.networkErrorWhenChooseSavedCity)
                
            case .chooseSearchedCity:
                AnalyticsService.shared.sendEvent(.networkErrorWhenChooseSearchedCity)
                
            case .autocompleteCities:
                AnalyticsService.shared.sendEvent(.networkErrorWhenAutocompleteCities)
                
            case .settings:
                return
            }
            
        case .geolocation:
            switch errorLocation {
            case .fetchWeather:
                AnalyticsService.shared.sendEvent(.geolocationErrorWhenFetchWeather)
                
            case .pullToRefresh:
                AnalyticsService.shared.sendEvent(.geolocationErrorWhenPullToRefresh)
                
            case .refresh:
                AnalyticsService.shared.sendEvent(.geolocationErrorWhenRefresh)
                
            case .searchGeolocation:
                AnalyticsService.shared.sendEvent(.geolocationErrorWhenSearchGeolocation)
                
            case .chooseSavedCity, .chooseSearchedCity, .autocompleteCities, .settings:
                return
            }
            
        case .notifications:
            AnalyticsService.shared.sendEvent(.notificationsError)
            
        case .unknown:
            switch errorLocation {
            case .fetchWeather:
                AnalyticsService.shared.sendEvent(.unknownErrorWhenFetchWeather)
                
            case .pullToRefresh:
                AnalyticsService.shared.sendEvent(.unknownErrorWhenPullToRefresh)
                
            case .refresh:
                AnalyticsService.shared.sendEvent(.unknownErrorWhenRefresh)
                
            case .searchGeolocation:
                AnalyticsService.shared.sendEvent(.unknownErrorWhenSearchGeolocation)
                
            case .chooseSavedCity:
                AnalyticsService.shared.sendEvent(.unknownErrorWhenChooseSavedCity)
                
            case .chooseSearchedCity:
                AnalyticsService.shared.sendEvent(.unknownErrorWhenChooseSearchedCity)
                
            case .autocompleteCities:
                AnalyticsService.shared.sendEvent(.unknownErrorWhenAutocompleteCities)
                
            case .settings:
                return
            }
            
        }
    }
    
    init(error: Error, location: ErrorLocation, style: AlertStyle, outsideTapAction: Bool = false) {
        super.init(frame: .zero)
        self.style = style
        self.error = error
        self.errorLocation = location
        self.outsideTapAction = outsideTapAction
        configureContent(with: error)
        configureSubstrateView()
        configureButton()
        configureDescriptionLabel()
        configureTitleLabel()
        configureConstraints()
        configureGestureRecognizers()
        sendAlertEvent(error: error, errorLocation: location)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
