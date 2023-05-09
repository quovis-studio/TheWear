/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawLong() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3.55, y: 40.1))
        path.addCurve(to: CGPoint(x: 0.56, y: 79.26), controlPoint1: CGPoint(x: 5.81, y: 61.21), controlPoint2: CGPoint(x: -2.11, y: 71.01))
        path.addCurve(to: CGPoint(x: 27.19, y: 79.26), controlPoint1: CGPoint(x: 3.23, y: 87.52), controlPoint2: CGPoint(x: 18.23, y: 86.58))
        path.addCurve(to: CGPoint(x: 28.12, y: 2.96), controlPoint1: CGPoint(x: 36.16, y: 71.95), controlPoint2: CGPoint(x: 33.36, y: 16.6))
        path.addCurve(to: CGPoint(x: 16.18, y: 27.28), controlPoint1: CGPoint(x: 22.89, y: -10.68), controlPoint2: CGPoint(x: 16.18, y: 27.28))
        path.addCurve(to: CGPoint(x: 3.55, y: 40.1), controlPoint1: CGPoint(x: 16.18, y: 27.28), controlPoint2: CGPoint(x: 1.28, y: 18.99))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 134.5, y: 57.4))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 3.37, y: 12.26))
        path2.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        path2.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        path2.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        path2.close()
        let path2Layer = createLayer(path2, skinColor, CGPoint(x: 108, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 28.88, y: 40.1))
        path3.addLine(to: CGPoint(x: 33.38, y: 40.6))
        path3.addCurve(to: CGPoint(x: 35.79, y: 29.73), controlPoint1: CGPoint(x: 32.38, y: 33.1), controlPoint2: CGPoint(x: 32.78, y: 31.72))
        path3.addCurve(to: CGPoint(x: 37.15, y: 23.62), controlPoint1: CGPoint(x: 38.44, y: 27.98), controlPoint2: CGPoint(x: 34.94, y: 23.26))
        path3.addCurve(to: CGPoint(x: 59.88, y: 27.1), controlPoint1: CGPoint(x: 40.15, y: 24.12), controlPoint2: CGPoint(x: 44.61, y: 27.1))
        path3.addCurve(to: CGPoint(x: 70.14, y: 24.8), controlPoint1: CGPoint(x: 70.33, y: 27.1), controlPoint2: CGPoint(x: 69.79, y: 25.46))
        path3.addCurve(to: CGPoint(x: 68.75, y: 6.82), controlPoint1: CGPoint(x: 71.5, y: 22.25), controlPoint2: CGPoint(x: 75.47, y: 7.67))
        path3.addCurve(to: CGPoint(x: 42.56, y: 0), controlPoint1: CGPoint(x: 62.02, y: 5.97), controlPoint2: CGPoint(x: 54.03, y: 0))
        path3.addCurve(to: CGPoint(x: 11.9, y: 15.71), controlPoint1: CGPoint(x: 31.09, y: 0), controlPoint2: CGPoint(x: 19.98, y: 2.13))
        path3.addCurve(to: CGPoint(x: 0, y: 68.13), controlPoint1: CGPoint(x: 3.81, y: 29.3), controlPoint2: CGPoint(x: 0, y: 54.79))
        path3.addCurve(to: CGPoint(x: 6.07, y: 96.95), controlPoint1: CGPoint(x: 0, y: 81.48), controlPoint2: CGPoint(x: 0.7, y: 94.24))
        path3.addCurve(to: CGPoint(x: 24.9, y: 98.99), controlPoint1: CGPoint(x: 11.44, y: 99.66), controlPoint2: CGPoint(x: 20.77, y: 100))
        path3.addCurve(to: CGPoint(x: 30.85, y: 70.6), controlPoint1: CGPoint(x: 34.08, y: 96.74), controlPoint2: CGPoint(x: 31.29, y: 84.02))
        path3.addCurve(to: CGPoint(x: 20.88, y: 47.6), controlPoint1: CGPoint(x: 30.41, y: 57.17), controlPoint2: CGPoint(x: 20.88, y: 47.6))
        path3.addCurve(to: CGPoint(x: 21.88, y: 30.1), controlPoint1: CGPoint(x: 14.88, y: 39.52), controlPoint2: CGPoint(x: 16.38, y: 30.6))
        path3.addCurve(to: CGPoint(x: 28.88, y: 40.1), controlPoint1: CGPoint(x: 27.38, y: 29.6), controlPoint2: CGPoint(x: 28.88, y: 40.1))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 92.13, y: 42.65))
        
        let longView = UIView()
        longView.layer.addSublayers(pathLayer, path2Layer, path3Layer)
        return longView
    }
    
}
