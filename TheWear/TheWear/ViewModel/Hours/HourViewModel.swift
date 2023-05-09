/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct HourViewModel {
    
    var hour12: NSMutableAttributedString
    var hour24: NSMutableAttributedString
    var icon: String
    var tempC: String
    var tempF: String
    var date: String
   
    init(
        hour12: NSMutableAttributedString,
        hour24: NSMutableAttributedString,
        icon: String,
        tempC: String,
        tempF: String,
        date: String
    ) {
        self.hour12 = hour12
        self.hour24 = hour24
        self.icon = icon
        self.tempC = tempC
        self.tempF = tempF
        self.date = date
    }
    
}
