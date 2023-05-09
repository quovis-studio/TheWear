/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBeanieForShort(_ color: UIColor, _ hair: Bool) -> UIView {
        let head = UIBezierPath()
        if hair {
            head.move(to: CGPoint(x: 3.38, y: 12.28))
            head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
            head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
            head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
            head.close()
        }
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 10.66, y: 13.25))
            path.addCurve(to: CGPoint(x: 17.81, y: 20.1), controlPoint1: CGPoint(x: 16.16, y: 12.75), controlPoint2: CGPoint(x: 15.98, y: 19.43))
            path.addCurve(to: CGPoint(x: 35.38, y: 6.74), controlPoint1: CGPoint(x: 19.65, y: 20.78), controlPoint2: CGPoint(x: 21.44, y: 12.86))
            path.addCurve(to: CGPoint(x: 53.55, y: 0), controlPoint1: CGPoint(x: 49.32, y: 0.61), controlPoint2: CGPoint(x: 52.07, y: 3.86))
            path.addLine(to: CGPoint(x: 6.4, y: 3.79))
            path.addLine(to: CGPoint(x: 0, y: 30.47))
            path.addCurve(to: CGPoint(x: 12.53, y: 39.71), controlPoint1: CGPoint(x: 3.7, y: 35.29), controlPoint2: CGPoint(x: 12.07, y: 40.49))
            path.addCurve(to: CGPoint(x: 7.05, y: 28.76), controlPoint1: CGPoint(x: 13.45, y: 38.15), controlPoint2: CGPoint(x: 9.55, y: 33.48))
            path.addCurve(to: CGPoint(x: 10.66, y: 13.25), controlPoint1: CGPoint(x: 2.55, y: 20.26), controlPoint2: CGPoint(x: 5.16, y: 13.75))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 105.95, y: 60.74))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 9.94, y: 5.78))
        path2.addCurve(to: CGPoint(x: 62.73, y: 27.94), controlPoint1: CGPoint(x: 41.92, y: -10.97), controlPoint2: CGPoint(x: 61.37, y: 12.47))
        path2.addCurve(to: CGPoint(x: 38.71, y: 35.96), controlPoint1: CGPoint(x: 62.88, y: 29.67), controlPoint2: CGPoint(x: 54.42, y: 27.41))
        path2.addCurve(to: CGPoint(x: 9.19, y: 54.48), controlPoint1: CGPoint(x: 23.01, y: 44.51), controlPoint2: CGPoint(x: 10.17, y: 55.57))
        path2.addCurve(to: CGPoint(x: 9.94, y: 5.78), controlPoint1: CGPoint(x: -1.27, y: 42.73), controlPoint2: CGPoint(x: -5.02, y: 13.61))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 99.25, y: 39.33))
        
        
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 60.73, y: 13.74))
        path3.addCurve(to: CGPoint(x: 56.46, y: 0), controlPoint1: CGPoint(x: 63.08, y: 11.85), controlPoint2: CGPoint(x: 58.9, y: 0))
        path3.addCurve(to: CGPoint(x: 29.11, y: 8.76), controlPoint1: CGPoint(x: 54.03, y: 0), controlPoint2: CGPoint(x: 43.49, y: 1.03))
        path3.addCurve(to: CGPoint(x: 0.3, y: 29.77), controlPoint1: CGPoint(x: 14.74, y: 16.5), controlPoint2: CGPoint(x: 2.15, y: 27.83))
        path3.addCurve(to: CGPoint(x: 9.69, y: 42.39), controlPoint1: CGPoint(x: -1.56, y: 31.71), controlPoint2: CGPoint(x: 5.75, y: 42.39))
        path3.addCurve(to: CGPoint(x: 38.04, y: 23.24), controlPoint1: CGPoint(x: 13.64, y: 42.39), controlPoint2: CGPoint(x: 20.75, y: 32.67))
        path3.addCurve(to: CGPoint(x: 60.73, y: 13.74), controlPoint1: CGPoint(x: 55.32, y: 13.8), controlPoint2: CGPoint(x: 58.38, y: 15.62))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 101.39, y: 54.24))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 60.73, y: 13.74))
        path4.addCurve(to: CGPoint(x: 56.46, y: 0), controlPoint1: CGPoint(x: 63.08, y: 11.85), controlPoint2: CGPoint(x: 58.9, y: 0))
        path4.addCurve(to: CGPoint(x: 29.11, y: 8.76), controlPoint1: CGPoint(x: 54.03, y: 0), controlPoint2: CGPoint(x: 43.49, y: 1.03))
        path4.addCurve(to: CGPoint(x: 0.3, y: 29.77), controlPoint1: CGPoint(x: 14.74, y: 16.5), controlPoint2: CGPoint(x: 2.15, y: 27.83))
        path4.addCurve(to: CGPoint(x: 9.69, y: 42.39), controlPoint1: CGPoint(x: -1.56, y: 31.71), controlPoint2: CGPoint(x: 5.75, y: 42.39))
        path4.addCurve(to: CGPoint(x: 38.04, y: 23.24), controlPoint1: CGPoint(x: 13.64, y: 42.39), controlPoint2: CGPoint(x: 20.75, y: 32.67))
        path4.addCurve(to: CGPoint(x: 60.73, y: 13.74), controlPoint1: CGPoint(x: 55.32, y: 13.8), controlPoint2: CGPoint(x: 58.38, y: 15.62))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.bold, CGPoint(x: 101.39, y: 54.24))
        
        let beanie = UIView()
        beanie.layer.addSublayers(headLayer, pathLayer, path2Layer, path3Layer, path4Layer)
        return beanie
    }
    
}
