/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension HoursWeatherContainer {

    func getTemperature(with temp: Double?, celsius: Bool) -> String {
        guard let temp = temp else { return "-" }
        return celsius ? "\(Int(temp))º" : "\(Int(temp * 9/5 + 32))º"
    }
    
}
