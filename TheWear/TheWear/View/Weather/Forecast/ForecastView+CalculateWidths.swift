/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension ForecastView {

    func calculateWidths() {
        calculateMaxWeekdayWidth()
        calculateMaxTemperaturesWidth()
    }
    
    func calculateMaxWeekdayWidth() {
        let weekdayWidths = forecastViewModel?.map { $0.weekday.getWidth(Font.callout) }
        maxWeekdayWidth = weekdayWidths?.max() ?? "Mon".getWidth(Font.callout)
        maxWeekdayWidth += Size.padding.xxxSmall
    }
    
    func calculateMaxTemperaturesWidth() {
        calculateMaxHighTemperatureWidth()
        calculateMaxLowTemperatureWidth()
    }
    
    func calculateMaxHighTemperatureWidth() {
        let highTemperatures = forecastViewModel?.map {
            UD.shared.retrieve(Key.temperature) == Temperature.celsius.rawValue ?
            $0.highTempC.getWidth(Font.callout) + Size.padding.xxSmall :
            $0.highTempF.getWidth(Font.callout) + Size.padding.xxSmall
        }
        maxHighTemperatureWidth = highTemperatures?.max() ?? "999º".getWidth(Font.callout) + Size.padding.xxSmall
    }
    
    func calculateMaxLowTemperatureWidth() {
        let lowTemperatures = forecastViewModel?.map {
            UD.shared.retrieve(Key.temperature) == Temperature.celsius.rawValue ?
            $0.lowTempC.getWidth(Font.callout) + Size.padding.xxSmall :
            $0.lowTempF.getWidth(Font.callout) + Size.padding.xxSmall
        }
        maxLowTemperatureWidth = lowTemperatures?.max() ?? "999º".getWidth(Font.callout) + Size.padding.xxSmall
    }
    
}
