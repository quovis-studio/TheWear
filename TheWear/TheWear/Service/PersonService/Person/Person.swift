/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class Person {
    
    static var skinColor: UIColor {
        let colorName = UD.shared.retrieve(Key.skinColor) ?? Color.skin.honey.rawValue
        return Color.skin(rawValue: colorName)!.color
    }
    
    static var hairColor: UIColor {
        let colorName = UD.shared.retrieve(Key.hairColor) ?? Color.hair.black.rawValue
        return Color.hair(rawValue: colorName)!.color
    }
    
    static var beardColor: UIColor {
        let colorName = UD.shared.retrieve(Key.beardColor) ?? Color.hair.black.rawValue
        return Color.hair(rawValue: colorName)!.color
    }
    
    static func createLayer(_ path: UIBezierPath, _ color: UIColor, _ position: CGPoint) -> CAShapeLayer {
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.fillColor = color.cgColor
        layer.position = position
        return layer
    }
    
}
