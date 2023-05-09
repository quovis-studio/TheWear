/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBob() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.31, y: 48))
        path.addCurve(to: CGPoint(x: 1.01, y: 75.61), controlPoint1: CGPoint(x: 3.57, y: 69.11), controlPoint2: CGPoint(x: -2.23, y: 68.84))
        path.addCurve(to: CGPoint(x: 27.91, y: 78.3), controlPoint1: CGPoint(x: 4.24, y: 82.39), controlPoint2: CGPoint(x: 21.59, y: 83.38))
        path.addCurve(to: CGPoint(x: 24.44, y: 5.46), controlPoint1: CGPoint(x: 34.22, y: 73.22), controlPoint2: CGPoint(x: 38.2, y: 27.5))
        path.addCurve(to: CGPoint(x: 13.94, y: 35.18), controlPoint1: CGPoint(x: 10.68, y: -16.58), controlPoint2: CGPoint(x: 13.94, y: 35.18))
        path.addCurve(to: CGPoint(x: 1.31, y: 48), controlPoint1: CGPoint(x: 13.94, y: 35.18), controlPoint2: CGPoint(x: -0.96, y: 26.88))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 136.63, y: 50.39))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 3.37, y: 12.26))
        path2.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        path2.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        path2.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        path2.close()
        let path2Layer = createLayer(path2, skinColor, CGPoint(x: 108, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 27.08, y: 40.19))
        path3.addLine(to: CGPoint(x: 31.58, y: 40.69))
        path3.addCurve(to: CGPoint(x: 33.99, y: 29.82), controlPoint1: CGPoint(x: 30.58, y: 33.19), controlPoint2: CGPoint(x: 30.99, y: 31.81))
        path3.addCurve(to: CGPoint(x: 35.35, y: 23.71), controlPoint1: CGPoint(x: 36.64, y: 28.07), controlPoint2: CGPoint(x: 33.15, y: 23.34))
        path3.addCurve(to: CGPoint(x: 58.3, y: 25.27), controlPoint1: CGPoint(x: 38.35, y: 24.21), controlPoint2: CGPoint(x: 43.03, y: 25.27))
        path3.addCurve(to: CGPoint(x: 67.86, y: 20.33), controlPoint1: CGPoint(x: 68.75, y: 25.27), controlPoint2: CGPoint(x: 69.9, y: 22.64))
        path3.addCurve(to: CGPoint(x: 64.46, y: 9.61), controlPoint1: CGPoint(x: 65.94, y: 18.16), controlPoint2: CGPoint(x: 69.85, y: 16))
        path3.addCurve(to: CGPoint(x: 41.51, y: 0), controlPoint1: CGPoint(x: 59.07, y: 3.23), controlPoint2: CGPoint(x: 52.98, y: 0))
        path3.addCurve(to: CGPoint(x: 11.24, y: 16.27), controlPoint1: CGPoint(x: 30.04, y: 0), controlPoint2: CGPoint(x: 19.32, y: 2.68))
        path3.addCurve(to: CGPoint(x: 0.33, y: 67.42), controlPoint1: CGPoint(x: 3.15, y: 29.86), controlPoint2: CGPoint(x: 0.33, y: 54.08))
        path3.addCurve(to: CGPoint(x: 3.79, y: 85.99), controlPoint1: CGPoint(x: 0.33, y: 80.77), controlPoint2: CGPoint(x: -1.58, y: 83.29))
        path3.addCurve(to: CGPoint(x: 21.35, y: 87), controlPoint1: CGPoint(x: 9.16, y: 88.7), controlPoint2: CGPoint(x: 13.79, y: 88.85))
        path3.addCurve(to: CGPoint(x: 27.24, y: 64.98), controlPoint1: CGPoint(x: 28.91, y: 85.15), controlPoint2: CGPoint(x: 27.5, y: 73.05))
        path3.addCurve(to: CGPoint(x: 19.08, y: 47.69), controlPoint1: CGPoint(x: 26.98, y: 56.9), controlPoint2: CGPoint(x: 19.08, y: 47.69))
        path3.addCurve(to: CGPoint(x: 20.08, y: 30.19), controlPoint1: CGPoint(x: 13.08, y: 39.61), controlPoint2: CGPoint(x: 14.58, y: 30.69))
        path3.addCurve(to: CGPoint(x: 27.08, y: 40.19), controlPoint1: CGPoint(x: 25.58, y: 29.69), controlPoint2: CGPoint(x: 27.08, y: 40.19))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 93.92, y: 42.56))
        
        let bobView = UIView()
        bobView.layer.addSublayers(pathLayer, path2Layer, path3Layer)
        return bobView
    }
    
}
