/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBeanieForLong(_ color: UIColor, _ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 63.53, y: 107.5))
            path.addCurve(to: CGPoint(x: 51.52, y: 10.95), controlPoint1: CGPoint(x: 77.29, y: 104.44), controlPoint2: CGPoint(x: 65.23, y: 32.3))
            path.addCurve(to: CGPoint(x: 19.69, y: 11.7), controlPoint1: CGPoint(x: 38.81, y: -8.86), controlPoint2: CGPoint(x: 28.26, y: 2.48))
            path.addCurve(to: CGPoint(x: 17.72, y: 13.8), controlPoint1: CGPoint(x: 19.02, y: 12.42), controlPoint2: CGPoint(x: 18.37, y: 13.13))
            path.addCurve(to: CGPoint(x: 0.47, y: 67.68), controlPoint1: CGPoint(x: 8.81, y: 23.17), controlPoint2: CGPoint(x: -2.46, y: 64.28))
            path.addCurve(to: CGPoint(x: 12.67, y: 72.38), controlPoint1: CGPoint(x: 1.07, y: 68.38), controlPoint2: CGPoint(x: 6.49, y: 70.33))
            path.addLine(to: CGPoint(x: 15.16, y: 41.17))
            path.addLine(to: CGPoint(x: 29.22, y: 53.77))
            path.addLine(to: CGPoint(x: 32.05, y: 78.53))
            path.addCurve(to: CGPoint(x: 63.53, y: 107.5), controlPoint1: CGPoint(x: 32.29, y: 78.96), controlPoint2: CGPoint(x: 49.87, y: 110.55))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 106.77, y: 50.6))
        
        let head = UIBezierPath()
        if hair {
            head.move(to: CGPoint(x: 3.38, y: 12.28))
            head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
            head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
            head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
            head.close()
        }
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        if hair {
            path3.move(to: CGPoint(x: 17.19, y: 23.67))
            path3.addCurve(to: CGPoint(x: 20.27, y: 6.25), controlPoint1: CGPoint(x: 11.69, y: 12.67), controlPoint2: CGPoint(x: 14.77, y: 6.75))
            path3.addLine(to: CGPoint(x: 11.73, y: 0))
            path3.addCurve(to: CGPoint(x: 1.57, y: 84.79), controlPoint1: CGPoint(x: 14.33, y: 43.22), controlPoint2: CGPoint(x: -5.62, y: 77.19))
            path3.addCurve(to: CGPoint(x: 34.23, y: 96.87), controlPoint1: CGPoint(x: 8.77, y: 92.4), controlPoint2: CGPoint(x: 24.58, y: 99.31))
            path3.addCurve(to: CGPoint(x: 25.26, y: 36.8), controlPoint1: CGPoint(x: 43.88, y: 94.43), controlPoint2: CGPoint(x: 25.26, y: 36.8))
            path3.addCurve(to: CGPoint(x: 17.19, y: 23.67), controlPoint1: CGPoint(x: 25.26, y: 36.8), controlPoint2: CGPoint(x: 17.83, y: 24.95))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 95.75, y: 66.19))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 10.59, y: 5.78))
        path4.addCurve(to: CGPoint(x: 63.38, y: 27.94), controlPoint1: CGPoint(x: 42.57, y: -10.97), controlPoint2: CGPoint(x: 62.02, y: 12.47))
        path4.addCurve(to: CGPoint(x: 39.37, y: 35.96), controlPoint1: CGPoint(x: 63.54, y: 29.67), controlPoint2: CGPoint(x: 55.08, y: 27.41))
        path4.addCurve(to: CGPoint(x: 8.47, y: 50.99), controlPoint1: CGPoint(x: 23.66, y: 44.51), controlPoint2: CGPoint(x: 9.45, y: 52.08))
        path4.addCurve(to: CGPoint(x: 10.59, y: 5.78), controlPoint1: CGPoint(x: -2, y: 39.25), controlPoint2: CGPoint(x: -4.36, y: 13.61))
        path4.close()
        let path4Layer = createLayer(path4, color, CGPoint(x: 98.59, y: 39.33))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 61.99, y: 14.37))
        path5.addCurve(to: CGPoint(x: 57.1, y: 0), controlPoint1: CGPoint(x: 64.35, y: 12.48), controlPoint2: CGPoint(x: 59.53, y: 0))
        path5.addCurve(to: CGPoint(x: 27.74, y: 9.32), controlPoint1: CGPoint(x: 54.67, y: 0), controlPoint2: CGPoint(x: 42.12, y: 2.61))
        path5.addCurve(to: CGPoint(x: 0.48, y: 26.44), controlPoint1: CGPoint(x: 13.36, y: 16.04), controlPoint2: CGPoint(x: 2.33, y: 24.5))
        path5.addCurve(to: CGPoint(x: 6.45, y: 39.91), controlPoint1: CGPoint(x: -1.38, y: 28.38), controlPoint2: CGPoint(x: 2.5, y: 39.91))
        path5.addCurve(to: CGPoint(x: 35.49, y: 24.2), controlPoint1: CGPoint(x: 10.4, y: 39.91), controlPoint2: CGPoint(x: 17.78, y: 32.96))
        path5.addCurve(to: CGPoint(x: 61.99, y: 14.37), controlPoint1: CGPoint(x: 53.21, y: 15.45), controlPoint2: CGPoint(x: 59.64, y: 16.26))
        path5.close()
        let path5Layer = createLayer(path5, color, CGPoint(x: 100.13, y: 53.6))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 61.99, y: 14.37))
        path6.addCurve(to: CGPoint(x: 57.1, y: 0), controlPoint1: CGPoint(x: 64.35, y: 12.48), controlPoint2: CGPoint(x: 59.53, y: 0))
        path6.addCurve(to: CGPoint(x: 27.74, y: 9.32), controlPoint1: CGPoint(x: 54.67, y: 0), controlPoint2: CGPoint(x: 42.12, y: 2.61))
        path6.addCurve(to: CGPoint(x: 0.48, y: 26.44), controlPoint1: CGPoint(x: 13.36, y: 16.04), controlPoint2: CGPoint(x: 2.33, y: 24.5))
        path6.addCurve(to: CGPoint(x: 6.45, y: 39.91), controlPoint1: CGPoint(x: -1.38, y: 28.38), controlPoint2: CGPoint(x: 2.5, y: 39.91))
        path6.addCurve(to: CGPoint(x: 35.49, y: 24.2), controlPoint1: CGPoint(x: 10.4, y: 39.91), controlPoint2: CGPoint(x: 17.78, y: 32.96))
        path6.addCurve(to: CGPoint(x: 61.99, y: 14.37), controlPoint1: CGPoint(x: 53.21, y: 15.45), controlPoint2: CGPoint(x: 59.64, y: 16.26))
        path6.close()
        let path6Layer = createLayer(path6, Color.shadow.bold, CGPoint(x: 100.13, y: 53.6))
        
        let beanie = UIView()
        beanie.layer.addSublayers(pathLayer, headLayer, path3Layer, path4Layer, path5Layer, path6Layer)
        return beanie
    }
    
}
