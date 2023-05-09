/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension ForecastView: UITableViewDelegate, UITableViewDataSource {

    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        guard let forecastViewModel = forecastViewModel else { return 0 }
        return forecastViewModel.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "dayCell",
            for: indexPath
        ) as! DayTableViewCell
        cell.forecastDayViewModel = forecastViewModel?[indexPath.row]
        cell.configureLabelWidths(
            maxWeekdayWidth,
            maxHighTemperatureWidth,
            maxLowTemperatureWidth
        )
        return cell
    }
    
    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return Size.cell.forecast
        } else {
            return tableView.frame.height / 8
        }
    }
    
}
