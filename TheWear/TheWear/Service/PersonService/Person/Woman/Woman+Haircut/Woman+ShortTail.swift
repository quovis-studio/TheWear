/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawShortTail() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 53.61, y: 36.99))
        path.addCurve(to: CGPoint(x: 60.76, y: 43.85), controlPoint1: CGPoint(x: 59.11, y: 36.49), controlPoint2: CGPoint(x: 58.93, y: 43.17))
        path.addCurve(to: CGPoint(x: 78.33, y: 30.48), controlPoint1: CGPoint(x: 62.59, y: 44.53), controlPoint2: CGPoint(x: 64.39, y: 36.6))
        path.addCurve(to: CGPoint(x: 96.5, y: 23.74), controlPoint1: CGPoint(x: 92.27, y: 24.36), controlPoint2: CGPoint(x: 95.02, y: 27.6))
        path.addCurve(to: CGPoint(x: 72, y: 0.74), controlPoint1: CGPoint(x: 99.72, y: 15.34), controlPoint2: CGPoint(x: 86.24, y: 3.2))
        path.addCurve(to: CGPoint(x: 38.28, y: 12.31), controlPoint1: CGPoint(x: 57.76, y: -1.72), controlPoint2: CGPoint(x: 44.06, y: 1.88))
        path.addCurve(to: CGPoint(x: 5.28, y: 72.42), controlPoint1: CGPoint(x: -2.11, y: -8.82), controlPoint2: CGPoint(x: -5.54, y: 70.67))
        path.addCurve(to: CGPoint(x: 26.39, y: 60.26), controlPoint1: CGPoint(x: 16.11, y: 74.17), controlPoint2: CGPoint(x: 23.28, y: 72.15))
        path.addCurve(to: CGPoint(x: 32.42, y: 21.45), controlPoint1: CGPoint(x: 29.51, y: 48.36), controlPoint2: CGPoint(x: 16.37, y: 13.69))
        path.addCurve(to: CGPoint(x: 40.5, y: 55.5), controlPoint1: CGPoint(x: 29.13, y: 28.03), controlPoint2: CGPoint(x: 28, y: 43.85))
        path.addCurve(to: CGPoint(x: 55, y: 62.5), controlPoint1: CGPoint(x: 44.94, y: 59.64), controlPoint2: CGPoint(x: 54.54, y: 63.27))
        path.addCurve(to: CGPoint(x: 50, y: 52.5), controlPoint1: CGPoint(x: 55.92, y: 60.94), controlPoint2: CGPoint(x: 52.5, y: 57.22))
        path.addCurve(to: CGPoint(x: 53.61, y: 36.99), controlPoint1: CGPoint(x: 45.5, y: 44), controlPoint2: CGPoint(x: 48.11, y: 37.49))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 63, y: 37))
        
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
