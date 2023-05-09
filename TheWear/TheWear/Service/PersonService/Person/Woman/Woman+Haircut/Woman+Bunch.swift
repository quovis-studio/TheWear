/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBunch() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50.84, y: 49.42))
        path.addCurve(to: CGPoint(x: 43.69, y: 42.56), controlPoint1: CGPoint(x: 49.01, y: 48.74), controlPoint2: CGPoint(x: 49.19, y: 42.06))
        path.addCurve(to: CGPoint(x: 40.33, y: 58.48), controlPoint1: CGPoint(x: 38.19, y: 43.06), controlPoint2: CGPoint(x: 35.45, y: 48.71))
        path.addCurve(to: CGPoint(x: 45, y: 67.86), controlPoint1: CGPoint(x: 42.79, y: 63.39), controlPoint2: CGPoint(x: 45.93, y: 66.29))
        path.addCurve(to: CGPoint(x: 30.51, y: 63.73), controlPoint1: CGPoint(x: 44.55, y: 68.63), controlPoint2: CGPoint(x: 35.24, y: 67.55))
        path.addCurve(to: CGPoint(x: 19.4, y: 36.18), controlPoint1: CGPoint(x: 18.61, y: 54.11), controlPoint2: CGPoint(x: 17.86, y: 42.1))
        path.addCurve(to: CGPoint(x: 1.19, y: 23.56), controlPoint1: CGPoint(x: 16.17, y: 37.21), controlPoint2: CGPoint(x: 5.12, y: 33.79))
        path.addCurve(to: CGPoint(x: 19.19, y: 0.06), controlPoint1: CGPoint(x: -3.81, y: 10.56), controlPoint2: CGPoint(x: 7.87, y: -0.94))
        path.addCurve(to: CGPoint(x: 33.99, y: 9.64), controlPoint1: CGPoint(x: 26.87, y: 0.74), controlPoint2: CGPoint(x: 33.33, y: 5.78))
        path.addCurve(to: CGPoint(x: 61.24, y: 5.86), controlPoint1: CGPoint(x: 39.85, y: 4.85), controlPoint2: CGPoint(x: 49.74, y: 3.87))
        path.addCurve(to: CGPoint(x: 86.45, y: 29.7), controlPoint1: CGPoint(x: 75.47, y: 8.32), controlPoint2: CGPoint(x: 92.12, y: 21.85))
        path.addCurve(to: CGPoint(x: 68.41, y: 36.05), controlPoint1: CGPoint(x: 84.03, y: 33.05), controlPoint2: CGPoint(x: 82.35, y: 29.93))
        path.addCurve(to: CGPoint(x: 50.84, y: 49.42), controlPoint1: CGPoint(x: 54.47, y: 42.17), controlPoint2: CGPoint(x: 52.67, y: 50.1))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 72.93, y: 31.52))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let hair = UIView()
        hair.layer.addSublayers(headLayer, pathLayer)
        return hair
    }
    
}
