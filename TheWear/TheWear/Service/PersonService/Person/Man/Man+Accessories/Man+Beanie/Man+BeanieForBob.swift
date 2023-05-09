/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBeanieForBob(_ color: UIColor, _ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 1.31, y: 45.44))
            path.addCurve(to: CGPoint(x: 1.01, y: 73.06), controlPoint1: CGPoint(x: 3.57, y: 66.55), controlPoint2: CGPoint(x: -2.23, y: 66.29))
            path.addCurve(to: CGPoint(x: 27.91, y: 75.75), controlPoint1: CGPoint(x: 4.24, y: 79.84), controlPoint2: CGPoint(x: 21.59, y: 80.83))
            path.addCurve(to: CGPoint(x: 18.29, y: 7.33), controlPoint1: CGPoint(x: 34.22, y: 70.67), controlPoint2: CGPoint(x: 26.48, y: 33.26))
            path.addCurve(to: CGPoint(x: 13.94, y: 32.62), controlPoint1: CGPoint(x: 10.1, y: -18.61), controlPoint2: CGPoint(x: 13.94, y: 32.62))
            path.addCurve(to: CGPoint(x: 1.31, y: 45.44), controlPoint1: CGPoint(x: 13.94, y: 32.62), controlPoint2: CGPoint(x: -0.96, y: 24.33))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 136.56, y: 52.94))
        
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
        
        let path3 = UIBezierPath()
        if hair {
            path3.move(to: CGPoint(x: 15.93, y: 40.19))
            path3.addLine(to: CGPoint(x: 19.7, y: 37.39))
            path3.addCurve(to: CGPoint(x: 22.84, y: 29.82), controlPoint1: CGPoint(x: 18.7, y: 29.89), controlPoint2: CGPoint(x: 19.83, y: 31.81))
            path3.addCurve(to: CGPoint(x: 24.2, y: 23.71), controlPoint1: CGPoint(x: 25.49, y: 28.07), controlPoint2: CGPoint(x: 21.99, y: 23.34))
            path3.addCurve(to: CGPoint(x: 47.15, y: 25.27), controlPoint1: CGPoint(x: 27.2, y: 24.21), controlPoint2: CGPoint(x: 31.88, y: 25.27))
            path3.addCurve(to: CGPoint(x: 56.71, y: 20.33), controlPoint1: CGPoint(x: 57.6, y: 25.27), controlPoint2: CGPoint(x: 58.75, y: 22.64))
            path3.addCurve(to: CGPoint(x: 45.59, y: 12.78), controlPoint1: CGPoint(x: 54.79, y: 18.16), controlPoint2: CGPoint(x: 50.98, y: 19.17))
            path3.addCurve(to: CGPoint(x: 30.36, y: 0), controlPoint1: CGPoint(x: 40.2, y: 6.39), controlPoint2: CGPoint(x: 41.83, y: 0))
            path3.addCurve(to: CGPoint(x: 6.48, y: 20.33), controlPoint1: CGPoint(x: 18.89, y: 0), controlPoint2: CGPoint(x: 13.15, y: -0.64))
            path3.addCurve(to: CGPoint(x: 3.66, y: 62.69), controlPoint1: CGPoint(x: -0.19, y: 41.3), controlPoint2: CGPoint(x: 6.48, y: 48.69))
            path3.addCurve(to: CGPoint(x: 2.14, y: 87), controlPoint1: CGPoint(x: 0.84, y: 76.68), controlPoint2: CGPoint(x: -2.13, y: 84.85))
            path3.addCurve(to: CGPoint(x: 19.7, y: 90.07), controlPoint1: CGPoint(x: 6.41, y: 89.15), controlPoint2: CGPoint(x: 12.26, y: 91.07))
            path3.addCurve(to: CGPoint(x: 18.35, y: 61.86), controlPoint1: CGPoint(x: 27.15, y: 89.07), controlPoint2: CGPoint(x: 21.07, y: 71.31))
            path3.addCurve(to: CGPoint(x: 12.37, y: 43.69), controlPoint1: CGPoint(x: 15.62, y: 52.41), controlPoint2: CGPoint(x: 12.37, y: 43.69))
            path3.addCurve(to: CGPoint(x: 8.93, y: 30.19), controlPoint1: CGPoint(x: 6.37, y: 35.61), controlPoint2: CGPoint(x: 3.43, y: 30.69))
            path3.addCurve(to: CGPoint(x: 15.93, y: 40.19), controlPoint1: CGPoint(x: 14.43, y: 29.69), controlPoint2: CGPoint(x: 15.93, y: 40.19))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 105, y: 42.56))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 10.26, y: 4.51))
        path4.addCurve(to: CGPoint(x: 62.09, y: 26.34), controlPoint1: CGPoint(x: 40.28, y: -9.06), controlPoint2: CGPoint(x: 60.73, y: 10.87))
        path4.addCurve(to: CGPoint(x: 38.08, y: 34.36), controlPoint1: CGPoint(x: 62.25, y: 28.07), controlPoint2: CGPoint(x: 53.79, y: 25.8))
        path4.addCurve(to: CGPoint(x: 7.17, y: 51.18), controlPoint1: CGPoint(x: 22.37, y: 42.91), controlPoint2: CGPoint(x: 8.14, y: 52.27))
        path4.addCurve(to: CGPoint(x: 10.26, y: 4.51), controlPoint1: CGPoint(x: -3.3, y: 39.44), controlPoint2: CGPoint(x: -2.33, y: 10.21))
        path4.close()
        let path4Layer = createLayer(path4, color, CGPoint(x: 99.88, y: 40.93))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 60.84, y: 11.76))
        path5.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 63.2, y: 9.88), controlPoint2: CGPoint(x: 59.61, y: 0))
        path5.addCurve(to: CGPoint(x: 29.15, y: 8.24), controlPoint1: CGPoint(x: 54.75, y: 0), controlPoint2: CGPoint(x: 43, y: 1.45))
        path5.addCurve(to: CGPoint(x: 0.41, y: 27.1), controlPoint1: CGPoint(x: 15.3, y: 15.04), controlPoint2: CGPoint(x: 2.26, y: 25.16))
        path5.addCurve(to: CGPoint(x: 7.32, y: 37.9), controlPoint1: CGPoint(x: -1.44, y: 29.04), controlPoint2: CGPoint(x: 3.37, y: 37.9))
        path5.addCurve(to: CGPoint(x: 36.24, y: 19.73), controlPoint1: CGPoint(x: 11.26, y: 37.9), controlPoint2: CGPoint(x: 19.82, y: 27.14))
        path5.addCurve(to: CGPoint(x: 60.84, y: 11.76), controlPoint1: CGPoint(x: 52.67, y: 12.33), controlPoint2: CGPoint(x: 58.49, y: 13.65))
        path5.close()
        let path5Layer = createLayer(path5, color, CGPoint(x: 101.28, y: 56.21))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 60.84, y: 11.76))
        path6.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 63.2, y: 9.88), controlPoint2: CGPoint(x: 59.61, y: 0))
        path6.addCurve(to: CGPoint(x: 29.15, y: 8.24), controlPoint1: CGPoint(x: 54.75, y: 0), controlPoint2: CGPoint(x: 43, y: 1.45))
        path6.addCurve(to: CGPoint(x: 0.41, y: 27.1), controlPoint1: CGPoint(x: 15.3, y: 15.04), controlPoint2: CGPoint(x: 2.26, y: 25.16))
        path6.addCurve(to: CGPoint(x: 7.32, y: 37.9), controlPoint1: CGPoint(x: -1.44, y: 29.04), controlPoint2: CGPoint(x: 3.37, y: 37.9))
        path6.addCurve(to: CGPoint(x: 36.24, y: 19.73), controlPoint1: CGPoint(x: 11.26, y: 37.9), controlPoint2: CGPoint(x: 19.82, y: 27.14))
        path6.addCurve(to: CGPoint(x: 60.84, y: 11.76), controlPoint1: CGPoint(x: 52.67, y: 12.33), controlPoint2: CGPoint(x: 58.49, y: 13.65))
        path6.close()
        let path6Layer = createLayer(path6, Color.shadow.bold, CGPoint(x: 101.28, y: 56.21))
        
        let beanie = UIView()
        beanie.layer.addSublayers(pathLayer, headLayer, beardLayer, path3Layer, path4Layer, path5Layer, path6Layer)
        return beanie
    }
    
}
