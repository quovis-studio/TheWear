/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBeanieForBob(_ color: UIColor, _ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 36.01, y: 64.32))
            path.addCurve(to: CGPoint(x: 20.19, y: 0), controlPoint1: CGPoint(x: 38.71, y: 58.36), controlPoint2: CGPoint(x: 41.66, y: 17.6))
            path.addLine(to: CGPoint(x: 0, y: 44.94))
            path.addLine(to: CGPoint(x: 5.28, y: 49.67))
            path.addLine(to: CGPoint(x: 7.6, y: 69.9))
            path.addCurve(to: CGPoint(x: 36.01, y: 64.32), controlPoint1: CGPoint(x: 20.91, y: 70.33), controlPoint2: CGPoint(x: 34.17, y: 68.36))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 130.7, y: 54.7))
        
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
            path3.move(to: CGPoint(x: 12.61, y: 29.49))
            path3.addCurve(to: CGPoint(x: 24.13, y: 11.98), controlPoint1: CGPoint(x: 10.46, y: 17.74), controlPoint2: CGPoint(x: 18.63, y: 12.48))
            path3.addLine(to: CGPoint(x: 7.86, y: 0))
            path3.addCurve(to: CGPoint(x: 1.08, y: 61.01), controlPoint1: CGPoint(x: 2.21, y: 16.38), controlPoint2: CGPoint(x: -2.1, y: 58.79))
            path3.addCurve(to: CGPoint(x: 19.77, y: 63.19), controlPoint1: CGPoint(x: 4.27, y: 63.24), controlPoint2: CGPoint(x: 7.35, y: 64.37))
            path3.addCurve(to: CGPoint(x: 12.61, y: 29.49), controlPoint1: CGPoint(x: 32.2, y: 62.02), controlPoint2: CGPoint(x: 14.19, y: 38.15))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 104.04, y: 61.37))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 10.59, y: 5.78))
        path4.addCurve(to: CGPoint(x: 63.38, y: 27.94), controlPoint1: CGPoint(x: 42.57, y: -10.97), controlPoint2: CGPoint(x: 62.02, y: 12.47))
        path4.addCurve(to: CGPoint(x: 39.37, y: 35.96), controlPoint1: CGPoint(x: 63.54, y: 29.67), controlPoint2: CGPoint(x: 55.08, y: 27.41))
        path4.addCurve(to: CGPoint(x: 8.47, y: 50.99), controlPoint1: CGPoint(x: 23.66, y: 44.51), controlPoint2: CGPoint(x: 9.45, y: 52.08))
        path4.addCurve(to: CGPoint(x: 10.59, y: 5.78), controlPoint1: CGPoint(x: -2, y: 39.25), controlPoint2: CGPoint(x: -4.36, y: 13.61))
        path4.close()
        let path4Layer = createLayer(path4, color, CGPoint(x: 98.59, y: 39.33))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 62.72, y: 13.68))
        path5.addCurve(to: CGPoint(x: 58.28, y: 0), controlPoint1: CGPoint(x: 65.07, y: 11.79), controlPoint2: CGPoint(x: 60.72, y: 0))
        path5.addCurve(to: CGPoint(x: 27.98, y: 8.39), controlPoint1: CGPoint(x: 55.85, y: 0), controlPoint2: CGPoint(x: 42.4, y: 1.47))
        path5.addCurve(to: CGPoint(x: 0.45, y: 25.08), controlPoint1: CGPoint(x: 13.57, y: 15.31), controlPoint2: CGPoint(x: 2.31, y: 23.14))
        path5.addCurve(to: CGPoint(x: 6.76, y: 39.16), controlPoint1: CGPoint(x: -1.4, y: 27.01), controlPoint2: CGPoint(x: 2.81, y: 39.16))
        path5.addCurve(to: CGPoint(x: 35.8, y: 23.46), controlPoint1: CGPoint(x: 10.71, y: 39.16), controlPoint2: CGPoint(x: 18.09, y: 32.21))
        path5.addCurve(to: CGPoint(x: 62.72, y: 13.68), controlPoint1: CGPoint(x: 53.52, y: 14.7), controlPoint2: CGPoint(x: 60.37, y: 15.57))
        path5.close()
        let path5Layer = createLayer(path5, color, CGPoint(x: 99.82, y: 54.35))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 62.72, y: 13.68))
        path6.addCurve(to: CGPoint(x: 58.28, y: 0), controlPoint1: CGPoint(x: 65.07, y: 11.79), controlPoint2: CGPoint(x: 60.72, y: 0))
        path6.addCurve(to: CGPoint(x: 27.98, y: 8.39), controlPoint1: CGPoint(x: 55.85, y: 0), controlPoint2: CGPoint(x: 42.4, y: 1.47))
        path6.addCurve(to: CGPoint(x: 0.45, y: 25.08), controlPoint1: CGPoint(x: 13.57, y: 15.31), controlPoint2: CGPoint(x: 2.31, y: 23.14))
        path6.addCurve(to: CGPoint(x: 6.76, y: 39.16), controlPoint1: CGPoint(x: -1.4, y: 27.01), controlPoint2: CGPoint(x: 2.81, y: 39.16))
        path6.addCurve(to: CGPoint(x: 35.8, y: 23.46), controlPoint1: CGPoint(x: 10.71, y: 39.16), controlPoint2: CGPoint(x: 18.09, y: 32.21))
        path6.addCurve(to: CGPoint(x: 62.72, y: 13.68), controlPoint1: CGPoint(x: 53.52, y: 14.7), controlPoint2: CGPoint(x: 60.37, y: 15.57))
        path6.close()
        let path6Layer = createLayer(path6, Color.shadow.bold, CGPoint(x: 99.82, y: 54.35))
        
        let beanie = UIView()
        beanie.layer.addSublayers(pathLayer, headLayer, path3Layer, path4Layer, path5Layer, path6Layer)
        return beanie
    }
    
}
