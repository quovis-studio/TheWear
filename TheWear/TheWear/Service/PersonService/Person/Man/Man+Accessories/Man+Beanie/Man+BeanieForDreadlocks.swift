/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBeanieForDreadlocks(_ color: UIColor, _ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 16.08, y: 22.67))
            path.addLine(to: CGPoint(x: 11.88, y: 24.49))
            path.addCurve(to: CGPoint(x: 5.56, y: 15.76), controlPoint1: CGPoint(x: 11.88, y: 24.49), controlPoint2: CGPoint(x: 11.06, y: 15.26))
            path.addCurve(to: CGPoint(x: 9.99, y: 38.02), controlPoint1: CGPoint(x: 0.06, y: 16.26), controlPoint2: CGPoint(x: 8.88, y: 35.56))
            path.addCurve(to: CGPoint(x: 9.17, y: 46.56), controlPoint1: CGPoint(x: 11.1, y: 40.48), controlPoint2: CGPoint(x: 15.26, y: 49.98))
            path.addCurve(to: CGPoint(x: 6.33, y: 43.71), controlPoint1: CGPoint(x: 7.74, y: 45.76), controlPoint2: CGPoint(x: 6.85, y: 44.77))
            path.addCurve(to: CGPoint(x: 3.56, y: 47.64), controlPoint1: CGPoint(x: 6.3, y: 46.44), controlPoint2: CGPoint(x: 5.87, y: 48.56))
            path.addCurve(to: CGPoint(x: 1.42, y: 28.66), controlPoint1: CGPoint(x: -1.11, y: 45.79), controlPoint2: CGPoint(x: 1.42, y: 31.18))
            path.addCurve(to: CGPoint(x: 5.56, y: 6.99), controlPoint1: CGPoint(x: -0.29, y: 23.16), controlPoint2: CGPoint(x: -1.85, y: 11.13))
            path.addCurve(to: CGPoint(x: 45.34, y: 1.11), controlPoint1: CGPoint(x: 14.82, y: 1.81), controlPoint2: CGPoint(x: 42.12, y: -1.97))
            path.addCurve(to: CGPoint(x: 51.75, y: 6.27), controlPoint1: CGPoint(x: 47.91, y: 3.57), controlPoint2: CGPoint(x: 50.69, y: 5.58))
            path.addCurve(to: CGPoint(x: 54.62, y: 16.14), controlPoint1: CGPoint(x: 51.75, y: 6.27), controlPoint2: CGPoint(x: 56.75, y: 15.26))
            path.addCurve(to: CGPoint(x: 46.7, y: 6.27), controlPoint1: CGPoint(x: 52.49, y: 17.02), controlPoint2: CGPoint(x: 47.22, y: 9.21))
            path.addCurve(to: CGPoint(x: 40.68, y: 10.81), controlPoint1: CGPoint(x: 45.41, y: 6.27), controlPoint2: CGPoint(x: 45.99, y: 10.62))
            path.addCurve(to: CGPoint(x: 44.78, y: 6.03), controlPoint1: CGPoint(x: 35.37, y: 11), controlPoint2: CGPoint(x: 45.93, y: 6.05))
            path.addCurve(to: CGPoint(x: 18.98, y: 7.72), controlPoint1: CGPoint(x: 37.17, y: 5.91), controlPoint2: CGPoint(x: 20.63, y: 6.07))
            path.addCurve(to: CGPoint(x: 18.98, y: 14.53), controlPoint1: CGPoint(x: 17.4, y: 9.3), controlPoint2: CGPoint(x: 20.23, y: 13.25))
            path.addCurve(to: CGPoint(x: 16.08, y: 22.67), controlPoint1: CGPoint(x: 16.48, y: 17.13), controlPoint2: CGPoint(x: 15.08, y: 15.17))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 108.47, y: 57.07))
        
        let head = UIBezierPath()
        if hair {
            head.move(to: CGPoint(x: 3.37, y: 12.26))
            head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
            head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
            head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
            head.close()
        }
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let beardLayer = drawBeardForBeanie()
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 10.26, y: 4.51))
        path2.addCurve(to: CGPoint(x: 62.09, y: 26.34), controlPoint1: CGPoint(x: 40.28, y: -9.06), controlPoint2: CGPoint(x: 60.73, y: 10.87))
        path2.addCurve(to: CGPoint(x: 38.08, y: 34.36), controlPoint1: CGPoint(x: 62.25, y: 28.07), controlPoint2: CGPoint(x: 53.79, y: 25.8))
        path2.addCurve(to: CGPoint(x: 7.17, y: 51.18), controlPoint1: CGPoint(x: 22.37, y: 42.91), controlPoint2: CGPoint(x: 8.14, y: 52.27))
        path2.addCurve(to: CGPoint(x: 10.26, y: 4.51), controlPoint1: CGPoint(x: -3.3, y: 39.44), controlPoint2: CGPoint(x: -2.33, y: 10.21))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 99.88, y: 40.93))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 60.84, y: 11.76))
        path3.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 63.2, y: 9.88), controlPoint2: CGPoint(x: 59.61, y: 0))
        path3.addCurve(to: CGPoint(x: 29.15, y: 8.24), controlPoint1: CGPoint(x: 54.75, y: 0), controlPoint2: CGPoint(x: 43, y: 1.45))
        path3.addCurve(to: CGPoint(x: 0.41, y: 27.1), controlPoint1: CGPoint(x: 15.3, y: 15.04), controlPoint2: CGPoint(x: 2.26, y: 25.16))
        path3.addCurve(to: CGPoint(x: 7.32, y: 37.9), controlPoint1: CGPoint(x: -1.44, y: 29.04), controlPoint2: CGPoint(x: 3.37, y: 37.9))
        path3.addCurve(to: CGPoint(x: 36.24, y: 19.73), controlPoint1: CGPoint(x: 11.26, y: 37.9), controlPoint2: CGPoint(x: 19.82, y: 27.14))
        path3.addCurve(to: CGPoint(x: 60.84, y: 11.76), controlPoint1: CGPoint(x: 52.67, y: 12.33), controlPoint2: CGPoint(x: 58.49, y: 13.65))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 101.28, y: 56.21))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 60.84, y: 11.76))
        path4.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 63.2, y: 9.88), controlPoint2: CGPoint(x: 59.61, y: 0))
        path4.addCurve(to: CGPoint(x: 29.15, y: 8.24), controlPoint1: CGPoint(x: 54.75, y: 0), controlPoint2: CGPoint(x: 43, y: 1.45))
        path4.addCurve(to: CGPoint(x: 0.41, y: 27.1), controlPoint1: CGPoint(x: 15.3, y: 15.04), controlPoint2: CGPoint(x: 2.26, y: 25.16))
        path4.addCurve(to: CGPoint(x: 7.32, y: 37.9), controlPoint1: CGPoint(x: -1.44, y: 29.04), controlPoint2: CGPoint(x: 3.37, y: 37.9))
        path4.addCurve(to: CGPoint(x: 36.24, y: 19.73), controlPoint1: CGPoint(x: 11.26, y: 37.9), controlPoint2: CGPoint(x: 19.82, y: 27.14))
        path4.addCurve(to: CGPoint(x: 60.84, y: 11.76), controlPoint1: CGPoint(x: 52.67, y: 12.33), controlPoint2: CGPoint(x: 58.49, y: 13.65))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.bold, CGPoint(x: 101.28, y: 56.21))
        
        let beanie = UIView()
        beanie.layer.addSublayers(pathLayer, headLayer, beardLayer, path2Layer, path3Layer, path4Layer)
        return beanie
    }
    
}
