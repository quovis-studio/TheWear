/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBeanieForBang(_ color: UIColor, _ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 37.96, y: 87.35))
            path.addCurve(to: CGPoint(x: 54.25, y: 91.84), controlPoint1: CGPoint(x: 44.6, y: 92.49), controlPoint2: CGPoint(x: 50.06, y: 96.73))
            path.addCurve(to: CGPoint(x: 40.88, y: 7.08), controlPoint1: CGPoint(x: 63.61, y: 80.93), controlPoint2: CGPoint(x: 60.86, y: 24.36))
            path.addCurve(to: CGPoint(x: 25.19, y: 6.64), controlPoint1: CGPoint(x: 27.79, y: -4.24), controlPoint2: CGPoint(x: 26.81, y: -0.15))
            path.addCurve(to: CGPoint(x: 20.23, y: 17.78), controlPoint1: CGPoint(x: 24.34, y: 10.22), controlPoint2: CGPoint(x: 23.3, y: 14.55))
            path.addCurve(to: CGPoint(x: 7.91, y: 79.79), controlPoint1: CGPoint(x: 11.38, y: 27.08), controlPoint2: CGPoint(x: -12.23, y: 90.06))
            path.addLine(to: CGPoint(x: 10.76, y: 43.95))
            path.addLine(to: CGPoint(x: 24.82, y: 56.54))
            path.addLine(to: CGPoint(x: 27.53, y: 80.18))
            path.addCurve(to: CGPoint(x: 37.96, y: 87.35), controlPoint1: CGPoint(x: 31.27, y: 82.16), controlPoint2: CGPoint(x: 34.75, y: 84.86))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 111.16, y: 47.83))
        
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
            path3.move(to: CGPoint(x: 13.66, y: 21.35))
            path3.addCurve(to: CGPoint(x: 16.73, y: 3.94), controlPoint1: CGPoint(x: 8.16, y: 10.35), controlPoint2: CGPoint(x: 11.23, y: 4.44))
            path3.addLine(to: CGPoint(x: 6.84, y: 0))
            path3.addCurve(to: CGPoint(x: 1.66, y: 66.82), controlPoint1: CGPoint(x: 8.18, y: 21.88), controlPoint2: CGPoint(x: -4.4, y: 55.56))
            path3.addCurve(to: CGPoint(x: 24.97, y: 73.79), controlPoint1: CGPoint(x: 7.73, y: 78.07), controlPoint2: CGPoint(x: 22.72, y: 80.06))
            path3.addCurve(to: CGPoint(x: 20.21, y: 36.76), controlPoint1: CGPoint(x: 26.31, y: 70.06), controlPoint2: CGPoint(x: 22.15, y: 44.25))
            path3.addCurve(to: CGPoint(x: 13.66, y: 21.35), controlPoint1: CGPoint(x: 18.27, y: 29.28), controlPoint2: CGPoint(x: 14.3, y: 22.65))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 101.65, y: 68.09))
        
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
