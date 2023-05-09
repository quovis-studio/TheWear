/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol WeatherDelegate: AnyObject {
    func getPartsViewModel() -> [PartViewModel]?
    func getPartsColorCode(for part: Int) -> String?
    func getHoursViewModel() -> [HourViewModel]?
    func getForecastViewModel() -> [ForecastViewModel]?
    func getUnitViewModel(for unitName: String) -> UnitViewModel?
    func changeAlphaOfNavigationView(to alpha: CGFloat)
}

extension ViewController: WeatherDelegate {
    
    func getPartsColorCode(for part: Int) -> String? {
        guard let partsViewModel = partsViewModel else { return nil }
        return partsViewModel[part].colorCode
    }
    
    func getPartsViewModel() -> [PartViewModel]? {
        return partsViewModel
    }
    
    func getHoursViewModel() -> [HourViewModel]? {
        return hoursViewModel
    }
    
    func getForecastViewModel() -> [ForecastViewModel]? {
        return forecastViewModel
    }
    
    func getUnitViewModel(for unitName: String) -> UnitViewModel? {
        let unit = unitsViewModel?.filter {$0.unitName == unitName}
        guard let unit = unit else {return nil}
        return unit.first
    }
    
    func changeAlphaOfNavigationView(to alpha: CGFloat) {
        navigationView.changeAlpha(with: alpha)
    }
    
}
