/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawLong() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 66.36, y: 119.03))
        path.addCurve(to: CGPoint(x: 56.93, y: 10.71), controlPoint1: CGPoint(x: 82.91, y: 120.05), controlPoint2: CGPoint(x: 74.43, y: 28.07))
        path.addCurve(to: CGPoint(x: 5.61, y: 9.55), controlPoint1: CGPoint(x: 39.43, y: -6.65), controlPoint2: CGPoint(x: 14.52, y: 0.19))
        path.addCurve(to: CGPoint(x: 3.3, y: 79.21), controlPoint1: CGPoint(x: -3.3, y: 18.91), controlPoint2: CGPoint(x: 0.37, y: 75.81))
        path.addCurve(to: CGPoint(x: 15.5, y: 83.91), controlPoint1: CGPoint(x: 3.9, y: 79.91), controlPoint2: CGPoint(x: 9.32, y: 81.86))
        path.addLine(to: CGPoint(x: 17.98, y: 52.7))
        path.addLine(to: CGPoint(x: 32.04, y: 65.3))
        path.addLine(to: CGPoint(x: 34.87, y: 90.06))
        path.addCurve(to: CGPoint(x: 66.36, y: 119.03), controlPoint1: CGPoint(x: 35.09, y: 90.47), controlPoint2: CGPoint(x: 49.93, y: 118.03))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 103.94, y: 39.07))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 28.15, y: 33.05))
        path3.addCurve(to: CGPoint(x: 35.3, y: 39.91), controlPoint1: CGPoint(x: 33.65, y: 32.55), controlPoint2: CGPoint(x: 33.47, y: 39.23))
        path3.addCurve(to: CGPoint(x: 54.19, y: 27.64), controlPoint1: CGPoint(x: 37.14, y: 40.58), controlPoint2: CGPoint(x: 42, y: 33.81))
        path3.addCurve(to: CGPoint(x: 75.18, y: 15.4), controlPoint1: CGPoint(x: 66.39, y: 21.48), controlPoint2: CGPoint(x: 77.04, y: 19.71))
        path3.addCurve(to: CGPoint(x: 48.95, y: 0.24), controlPoint1: CGPoint(x: 71.28, y: 6.38), controlPoint2: CGPoint(x: 57.72, y: 1.4))
        path3.addCurve(to: CGPoint(x: 16.71, y: 15.4), controlPoint1: CGPoint(x: 40.18, y: -0.93), controlPoint2: CGPoint(x: 25.07, y: 1.91))
        path3.addCurve(to: CGPoint(x: 2.04, y: 109.16), controlPoint1: CGPoint(x: 8.35, y: 28.9), controlPoint2: CGPoint(x: -5.16, y: 101.56))
        path3.addCurve(to: CGPoint(x: 40.9, y: 123.68), controlPoint1: CGPoint(x: 9.24, y: 116.76), controlPoint2: CGPoint(x: 31.25, y: 126.12))
        path3.addCurve(to: CGPoint(x: 33.14, y: 63.6), controlPoint1: CGPoint(x: 50.56, y: 121.24), controlPoint2: CGPoint(x: 33.14, y: 63.6))
        path3.addCurve(to: CGPoint(x: 25.07, y: 50.47), controlPoint1: CGPoint(x: 33.14, y: 63.6), controlPoint2: CGPoint(x: 25.71, y: 51.74))
        path3.addCurve(to: CGPoint(x: 28.15, y: 33.05), controlPoint1: CGPoint(x: 19.57, y: 39.47), controlPoint2: CGPoint(x: 22.65, y: 33.55))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 87.87, y: 39.39))
        
        let hair = UIView()
        hair.layer.addSublayers(pathLayer, headLayer, path3Layer)
        return hair
    }
    
}
