/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {
    
    func getHourIndex(
        times: [[Double]],
        dayPartsCount: Int,
        index: Int,
        firstHour: Int
    ) -> Int {
        let startHour = times[4 - dayPartsCount + index][0]
        let endHour = times[4 - dayPartsCount + index][1]
        let partMiddleHour = (startHour + endHour) / 2
        let hour = (Int(partMiddleHour.rounded()) - firstHour > 0) ? Int(partMiddleHour.rounded()) - firstHour : (24 - firstHour + Int(partMiddleHour.rounded()) )
        return hour - 1
    }
    
    func getFirstHour(with timestamp: String?) -> Int {
        guard let timestamp = timestamp else { return 0 }
        let dateParts = timestamp.split(separator: "T")
        let timeParts = String(dateParts[1]).split(separator: ":")
        return Int(timeParts[0]) ?? 0
    }
    
}
