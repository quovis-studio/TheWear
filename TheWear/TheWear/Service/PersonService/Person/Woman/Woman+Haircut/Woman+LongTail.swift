/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawLongTail() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 64.15, y: 37.21))
        path.addCurve(to: CGPoint(x: 71.3, y: 44.07), controlPoint1: CGPoint(x: 69.65, y: 36.71), controlPoint2: CGPoint(x: 69.46, y: 43.39))
        path.addCurve(to: CGPoint(x: 88.87, y: 30.7), controlPoint1: CGPoint(x: 73.13, y: 44.75), controlPoint2: CGPoint(x: 74.92, y: 36.82))
        path.addCurve(to: CGPoint(x: 106.7, y: 24.64), controlPoint1: CGPoint(x: 102.81, y: 24.58), controlPoint2: CGPoint(x: 104.28, y: 27.98))
        path.addCurve(to: CGPoint(x: 81.72, y: 0.72), controlPoint1: CGPoint(x: 112.2, y: 17.03), controlPoint2: CGPoint(x: 95.96, y: 3.18))
        path.addCurve(to: CGPoint(x: 48.81, y: 12.53), controlPoint1: CGPoint(x: 67.49, y: -1.74), controlPoint2: CGPoint(x: 54.59, y: 2.1))
        path.addCurve(to: CGPoint(x: 3.11, y: 79.28), controlPoint1: CGPoint(x: 14.02, y: -4.57), controlPoint2: CGPoint(x: 20.7, y: 43.79))
        path.addCurve(to: CGPoint(x: 45.12, y: 79.28), controlPoint1: CGPoint(x: -14.47, y: 114.78), controlPoint2: CGPoint(x: 48.38, y: 106.12))
        path.addCurve(to: CGPoint(x: 42.96, y: 21.67), controlPoint1: CGPoint(x: 41.86, y: 52.44), controlPoint2: CGPoint(x: 26.91, y: 13.91))
        path.addCurve(to: CGPoint(x: 50.97, y: 58.63), controlPoint1: CGPoint(x: 39.67, y: 28.25), controlPoint2: CGPoint(x: 36.47, y: 46.9))
        path.addCurve(to: CGPoint(x: 65.51, y: 62.62), controlPoint1: CGPoint(x: 55.69, y: 62.45), controlPoint2: CGPoint(x: 65.05, y: 63.39))
        path.addCurve(to: CGPoint(x: 60.75, y: 53.32), controlPoint1: CGPoint(x: 66.43, y: 61.05), controlPoint2: CGPoint(x: 62.46, y: 56.74))
        path.addCurve(to: CGPoint(x: 64.15, y: 37.21), controlPoint1: CGPoint(x: 55.91, y: 43.63), controlPoint2: CGPoint(x: 58.65, y: 37.71))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 52.54, y: 36.75))
        
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
