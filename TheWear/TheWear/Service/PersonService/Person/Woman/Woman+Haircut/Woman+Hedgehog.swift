/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawHedgehog() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 10.31, y: 31.45))
        path.addCurve(to: CGPoint(x: 17.46, y: 38.3), controlPoint1: CGPoint(x: 15.81, y: 30.95), controlPoint2: CGPoint(x: 15.62, y: 37.54))
        path.addCurve(to: CGPoint(x: 22.38, y: 26.57), controlPoint1: CGPoint(x: 19.29, y: 39.07), controlPoint2: CGPoint(x: 21.76, y: 29.63))
        path.addCurve(to: CGPoint(x: 24.93, y: 26.57), controlPoint1: CGPoint(x: 22.66, y: 25.14), controlPoint2: CGPoint(x: 24.61, y: 28.45))
        path.addCurve(to: CGPoint(x: 25.32, y: 21.59), controlPoint1: CGPoint(x: 25.32, y: 24.32), controlPoint2: CGPoint(x: 20.87, y: 19.98))
        path.addCurve(to: CGPoint(x: 33.65, y: 21.32), controlPoint1: CGPoint(x: 29.77, y: 23.21), controlPoint2: CGPoint(x: 33.39, y: 23.76))
        path.addCurve(to: CGPoint(x: 45.49, y: 22.39), controlPoint1: CGPoint(x: 33.9, y: 18.88), controlPoint2: CGPoint(x: 43.82, y: 22.71))
        path.addCurve(to: CGPoint(x: 46.74, y: 19.42), controlPoint1: CGPoint(x: 47.16, y: 22.08), controlPoint2: CGPoint(x: 43.56, y: 18.95))
        path.addCurve(to: CGPoint(x: 56.72, y: 23.52), controlPoint1: CGPoint(x: 48.33, y: 19.66), controlPoint2: CGPoint(x: 56.59, y: 25.68))
        path.addCurve(to: CGPoint(x: 55.24, y: 19.42), controlPoint1: CGPoint(x: 56.85, y: 21.36), controlPoint2: CGPoint(x: 53.97, y: 18.92))
        path.addCurve(to: CGPoint(x: 52.96, y: 11.25), controlPoint1: CGPoint(x: 62.05, y: 22.1), controlPoint2: CGPoint(x: 49.9, y: 11.25))
        path.addCurve(to: CGPoint(x: 45.85, y: 3.83), controlPoint1: CGPoint(x: 56.01, y: 11.25), controlPoint2: CGPoint(x: 49.08, y: 5.22))
        path.addCurve(to: CGPoint(x: 38.74, y: 1.24), controlPoint1: CGPoint(x: 42.61, y: 2.44), controlPoint2: CGPoint(x: 43.27, y: 1.74))
        path.addCurve(to: CGPoint(x: 28.95, y: 0.09), controlPoint1: CGPoint(x: 34.2, y: 0.75), controlPoint2: CGPoint(x: 31.94, y: -0.31))
        path.addCurve(to: CGPoint(x: 4.01, y: 10.81), controlPoint1: CGPoint(x: 25.95, y: 0.48), controlPoint2: CGPoint(x: 11.51, y: 1.81))
        path.addCurve(to: CGPoint(x: 7.72, y: 54.19), controlPoint1: CGPoint(x: -3.49, y: 19.81), controlPoint2: CGPoint(x: 0.56, y: 44.62))
        path.addLine(to: CGPoint(x: 11.22, y: 54.19))
        path.addCurve(to: CGPoint(x: 10.31, y: 31.45), controlPoint1: CGPoint(x: 5.72, y: 43.19), controlPoint2: CGPoint(x: 4.81, y: 31.95))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 107.01, y: 43))
        
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
