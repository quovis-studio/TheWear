/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension HoursWeatherContainer {

    func getSunstateFor12HourSystem(with sunstate: [Int]) -> NSMutableAttributedString {
        var attributedString = NSMutableAttributedString()
        
        var sunstate = sunstate
        var hourSystem = ""
        
        if sunstate[0] == 0 {
            sunstate[0] = 12
            hourSystem = "AM"
        } else if sunstate[0] > 12 {
            sunstate[0] = sunstate[0] - 12
            hourSystem = "PM"
        } else if sunstate[0] == 12 {
            sunstate[0] = 12
            hourSystem = "PM"
        } else if sunstate[0] < 12 {
            sunstate[0] = sunstate[0]
            hourSystem = "AM"
        }
        
        let hour = "\(sunstate[0])"
        let minute = sunstate[1] < 10 ? "0\(sunstate[1])" : "\(sunstate[1])"
        
        attributedString = NSMutableAttributedString(
            string: "\(hour):\(minute)",
            attributes: [NSAttributedString.Key.font : Font.footnote])
        attributedString.append(NSMutableAttributedString(
            string: " ",
            attributes: [NSAttributedString.Key.font : UIFont(
                name: "Montserrat-SemiBold",
                size: Font.footnote.pointSize - 2)!]))
        let hourSystemAttributedString = NSMutableAttributedString(
            string: hourSystem,
            attributes: [NSAttributedString.Key.font : UIFont(
                name: "Montserrat-SemiBold",
                size: Font.footnote.pointSize - 4)!])
        attributedString.append(hourSystemAttributedString)
        
        return attributedString
    }
    
    func getSunstateFor24HourSystem(with sunstate: [Int]) -> NSMutableAttributedString {
        let hour = sunstate[0] < 10 ? "0\(sunstate[0])" : "\(sunstate[0])"
        let minute = sunstate[1] < 10 ? "0\(sunstate[1])" : "\(sunstate[1])"
        return NSMutableAttributedString(
            string: "\(hour):\(minute)",
            attributes: [NSAttributedString.Key.font: Font.footnote]
        )
    }
    
    func getStringFor12HourSystem(for hour: Double) -> NSMutableAttributedString {
        var attributedString = NSMutableAttributedString()
        
        var hourItself = ""
        var hourSystem = ""
            
        if Int(hour) > 12 {
            hourItself = "\(Int(hour) - 12)"
            hourSystem = "PM"
        } else if Int(hour) == 12 {
            hourItself = "12"
            hourSystem = "PM"
        } else if Int(hour) == 0 {
            hourItself = "12"
            hourSystem = "AM"
        } else if Int(hour) < 12 {
            hourItself = "\(Int(hour))"
            hourSystem = "AM"
        }
        
        attributedString = NSMutableAttributedString(
            string: hourItself,
            attributes: [NSAttributedString.Key.font : Font.footnote])
        attributedString.append(NSMutableAttributedString(
            string: " ",
            attributes: [NSAttributedString.Key.font : UIFont(
                name: "Montserrat-SemiBold",
                size: Font.footnote.pointSize - 2)!]))
        let hourSystemAttributedString = NSMutableAttributedString(
            string: hourSystem,
            attributes: [NSAttributedString.Key.font : UIFont(
                name: "Montserrat-SemiBold",
                size: Font.footnote.pointSize - 4)!])
        attributedString.append(hourSystemAttributedString)
        
        return attributedString
    }
    
    func getStringFor24HourSystem(for hour: Double) -> NSMutableAttributedString {
        let string = (hour < 10.0 ? "0" : "") + String(Int(hour))
        return NSMutableAttributedString(
            string: string,
            attributes: [NSAttributedString.Key.font: Font.footnote]
        )
    }
    
}
