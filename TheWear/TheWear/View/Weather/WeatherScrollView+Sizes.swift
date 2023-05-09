/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WeatherView {
    
    var isIphone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone ? true : false
    }
    
    var contentWidth: CGFloat {
        return UIScreen.main.bounds.width - 2 * Size.padding.medium
    }
    
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    var topSafeArea: CGFloat {
        return UIApplication.shared.windows.first?.safeAreaInsets.top ?? 47.0
    }
    
    func configureSizeOfWeatherViews() {
        configurePartsViewSize()
        configurePersonSize()
        configureHoursViewSize()
        configureForecastViewSize()
        configureUnitViewSize()
    }
    
    func configurePartsViewSize() {
        if isIphone {
            if UD.shared.withPerson() {
                let navViewHeight = Size.icon.large
                let paddings = Size.padding.xxxSmall + 3 * Size.padding.small
                let height = screenHeight - topSafeArea - navViewHeight - paddings
                partsSize = CGSize(width: contentWidth, height: height)
            } else {
                partsSize = CGSize(width: contentWidth, height: 289.0)
            }
            
        } else {
            partsSize = configureWeatherViewSize(rows: UD.shared.withPerson() ? 3 : 2, columns: 3)
        }
    }
    
    func configurePersonSize() {
        var partsSize = CGSize()
        
        if isIphone {
            let navViewHeight = Size.icon.large
            let paddings = Size.padding.xxxSmall + 3 * Size.padding.small
            let height = screenHeight - topSafeArea - navViewHeight - paddings
            partsSize = CGSize(width: contentWidth, height: height)
        } else {
            partsSize = configureWeatherViewSize(rows: 3, columns: 3)
        }
        
        let height = partsSize.height - (isIphone ? 201 : 104)
        let width = height * (252 / 600)
        personSize = CGSize(width: width, height: height)
    }
    
    func configureHoursViewSize() {
        if isIphone {
            hoursSize = CGSize(width: contentWidth, height: 144.0)
        } else {
            hoursSize = configureWeatherViewSize(rows: 1, columns: 3)
        }
    }
    
    func configureForecastViewSize() {
        if isIphone {
            forecastSize = CGSize(width: contentWidth, height: 432.0)
        } else {
            forecastSize = configureWeatherViewSize(rows: 3, columns: 3)
        }
    }
    
    func configureUnitViewSize() {
        if isIphone {
            let size = (contentWidth - Size.padding.small) / 2
            unitSize = CGSize(width: size, height: size)
        } else {
            unitSize = configureWeatherViewSize()
        }
    }
    
    private func configureWeatherViewSize(
        rows: CGFloat = 1,
        columns: CGFloat = 1
    ) -> CGSize {
        let screenPart = (contentWidth - 5 * Size.padding.small) / 6
        let height = screenPart * rows + (rows - 1) * Size.padding.small
        let width = screenPart * columns + (columns - 1) * Size.padding.small
        return CGSize(width: width, height: height)
    }
    
}
