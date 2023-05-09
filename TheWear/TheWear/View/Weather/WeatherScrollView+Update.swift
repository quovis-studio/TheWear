/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WeatherView {
    
    func update() {
        currentPart = getCurrentPartIndex()
        updateWeatherColor(with: weatherDelegate?.getPartsColorCode(for: currentPart)) { [weak self] in
            self?.updateParts()
            self?.updateHours()
            self?.updateForecast()
            self?.updateUnits()
            self?.isUserInteractionEnabled = true
        }
    }
    
    func getCurrentPartIndex() -> Int {
        guard let parts = weatherDelegate?.getPartsViewModel() else { return 0 }
        var index = 0
        for part in 0..<parts.count {
            if parts[part].part == DayPart.now.localizedString {
                index = part
                break
            }
        }
        return index
    }
    
    func updateWithoutReset() {
        partsView.partsViewModel = weatherDelegate?.getPartsViewModel()
        updateHours()
        updateForecast()
        updateUnits()
    }
    
    // MARK: - Update parts
    private func updateParts() {
        partsView.getPartSize = { [unowned self] in
            return CGSize(width: partsSize.width, height: partsSize.height - 52)
        }
        partsView.getCurrentPart = { [unowned self] in
            return currentPart
        }
        partsView.updateCurrentPart = { [unowned self] part in
            currentPart = part
            updateUnitsPart(with: part)
            updateWeatherColor(with: weatherDelegate?.getPartsColorCode(for: part)) {  }
        }
        
        partsView.withPerson = UD.shared.withPerson()
        partsView.personSize = personSize
        partsView.partsViewModel = weatherDelegate?.getPartsViewModel()
    }
    
    func updatePartsWithPerson(_ person: Bool) {
        configurePartsViewSize()
        partsViewHeightConstraint.constant = partsSize.height
        if person {
            layoutIfNeeded()
            partsView.update(with: person)
        } else {
            partsView.update(with: person)
            layoutIfNeeded()
        }
        partsView.updateCollectionViewPosition()
    }
    
    func updatePartsWithChange() {
        partsView.updateWithChange()
    }
    
    // MARK: - Update hours
    private func updateHours() {
        hoursView.hoursViewModel = weatherDelegate?.getHoursViewModel()
    }
    
    @objc func updateHoursIfNeeded() {
        guard CalendarAndLocaleService.shared.checkTimePreferenceDifference() else { return }
        hoursView.hoursViewModel = weatherDelegate?.getHoursViewModel()
    }
    
    // MARK: - Update forecast
    private func updateForecast() {
        forecastView.forecastViewModel = weatherDelegate?.getForecastViewModel()
    }
    
    // MARK: - Update units
    private func updateUnits() {
        windView.getCurrentPart = { [unowned self] in
            return currentPart
        }
        pressureView.getCurrentPart = { [unowned self] in
            return currentPart
        }
        humidityView.getCurrentPart = { [unowned self] in
            return currentPart
        }
        uvView.getCurrentPart = { [unowned self] in
            return currentPart
        }
        visibilityView.getCurrentPart = { [unowned self] in
            return currentPart
        }
        precipitationView.getCurrentPart = { [unowned self] in
            return currentPart
        }
        
        windView.unitViewModel = weatherDelegate?.getUnitViewModel(for: Unit.wind.localizedString)
        pressureView.unitViewModel = weatherDelegate?.getUnitViewModel(for: Unit.pressure.localizedString)
        humidityView.unitViewModel = weatherDelegate?.getUnitViewModel(for: Unit.humidity.localizedString)
        uvView.unitViewModel = weatherDelegate?.getUnitViewModel(for: Unit.uv.localizedString)
        visibilityView.unitViewModel = weatherDelegate?.getUnitViewModel(for: Unit.visibility.localizedString)
        precipitationView.unitViewModel = weatherDelegate?.getUnitViewModel(for: Unit.precipitation.localizedString)
    }
    
    func updateUnitsPart(with part: Int) {
        windView.updateCurrentPart(with: part)
        pressureView.updateCurrentPart(with: part)
        humidityView.updateCurrentPart(with: part)
        uvView.updateCurrentPart(with: part)
        visibilityView.updateCurrentPart(with: part)
        precipitationView.updateCurrentPart(with: part)
    }
    
    // MARK: - Update color
    private func updateWeatherColor(
        with colorCode: String?,
        _ completion: @escaping (() -> Void)
    ) {
        guard let colorCode = colorCode else {
            backgroundColor = Color.weather.sunny
            completion()
            return
        }
        let weatherColor = WeatherService.shared.getWeatherColor(with: colorCode)
        statusBarSubstrateView.updateGradient(with: weatherColor)
        WeatherService.shared.currentColor = weatherColor
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.backgroundColor = weatherColor
        } completion: { _ in
            completion()
        }
    }
    
}
