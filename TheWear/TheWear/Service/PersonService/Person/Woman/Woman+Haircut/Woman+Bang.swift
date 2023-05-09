/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBang() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 44.35, y: 93.97))
        path.addCurve(to: CGPoint(x: 60.64, y: 98.46), controlPoint1: CGPoint(x: 50.98, y: 99.11), controlPoint2: CGPoint(x: 56.45, y: 103.35))
        path.addCurve(to: CGPoint(x: 55.7, y: 10.16), controlPoint1: CGPoint(x: 69.99, y: 87.55), controlPoint2: CGPoint(x: 75.68, y: 27.43))
        path.addCurve(to: CGPoint(x: 7.65, y: 10.28), controlPoint1: CGPoint(x: 35.73, y: -7.12), controlPoint2: CGPoint(x: 16.56, y: 0.91))
        path.addCurve(to: CGPoint(x: 14.3, y: 86.4), controlPoint1: CGPoint(x: -1.2, y: 19.58), controlPoint2: CGPoint(x: -6.1, y: 96.5))
        path.addLine(to: CGPoint(x: 17.15, y: 50.57))
        path.addLine(to: CGPoint(x: 31.21, y: 63.16))
        path.addLine(to: CGPoint(x: 33.91, y: 86.8))
        path.addCurve(to: CGPoint(x: 44.35, y: 93.97), controlPoint1: CGPoint(x: 37.65, y: 88.78), controlPoint2: CGPoint(x: 41.14, y: 91.48))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 104.77, y: 41.21))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 22.34, y: 30.79))
        path3.addCurve(to: CGPoint(x: 29.49, y: 37.65), controlPoint1: CGPoint(x: 27.84, y: 30.29), controlPoint2: CGPoint(x: 27.66, y: 36.97))
        path3.addCurve(to: CGPoint(x: 46.89, y: 19.64), controlPoint1: CGPoint(x: 31.32, y: 38.33), controlPoint2: CGPoint(x: 31.72, y: 28.92))
        path3.addCurve(to: CGPoint(x: 63.87, y: 15.86), controlPoint1: CGPoint(x: 54.27, y: 15.12), controlPoint2: CGPoint(x: 62.27, y: 12.16))
        path3.addCurve(to: CGPoint(x: 42.99, y: 0.26), controlPoint1: CGPoint(x: 59.98, y: 6.84), controlPoint2: CGPoint(x: 51.76, y: 1.42))
        path3.addCurve(to: CGPoint(x: 12.81, y: 14.68), controlPoint1: CGPoint(x: 34.22, y: -0.91), controlPoint2: CGPoint(x: 22.17, y: 1.54))
        path3.addCurve(to: CGPoint(x: 2.22, y: 91.52), controlPoint1: CGPoint(x: 3.46, y: 27.82), controlPoint2: CGPoint(x: -3.85, y: 80.27))
        path3.addCurve(to: CGPoint(x: 30.57, y: 100.64), controlPoint1: CGPoint(x: 8.28, y: 102.78), controlPoint2: CGPoint(x: 28.32, y: 106.92))
        path3.addCurve(to: CGPoint(x: 26.67, y: 64.46), controlPoint1: CGPoint(x: 31.91, y: 96.92), controlPoint2: CGPoint(x: 28.86, y: 72.47))
        path3.addCurve(to: CGPoint(x: 19.26, y: 48.21), controlPoint1: CGPoint(x: 24.47, y: 56.44), controlPoint2: CGPoint(x: 19.91, y: 49.51))
        path3.addCurve(to: CGPoint(x: 22.34, y: 30.79), controlPoint1: CGPoint(x: 13.76, y: 37.21), controlPoint2: CGPoint(x: 16.84, y: 31.29))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 96.05, y: 41.23))
        
        let hair = UIView()
        hair.layer.addSublayers(pathLayer, headLayer, path3Layer)
        return hair
    }
    
}
