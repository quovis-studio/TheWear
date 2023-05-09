/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawAfro() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 23.98, y: 68.07))
        path.addCurve(to: CGPoint(x: 7.17, y: 73.74), controlPoint1: CGPoint(x: 16.88, y: 69.86), controlPoint2: CGPoint(x: 7.17, y: 73.74))
        path.addLine(to: CGPoint(x: 0, y: 61.01))
        path.addLine(to: CGPoint(x: 9.32, y: 17.99))
        path.addCurve(to: CGPoint(x: 29.93, y: 5.45), controlPoint1: CGPoint(x: 9.32, y: 17.99), controlPoint2: CGPoint(x: 28.4, y: 16.15))
        path.addCurve(to: CGPoint(x: 36.05, y: 5.85), controlPoint1: CGPoint(x: 31.46, y: -5.25), controlPoint2: CGPoint(x: 29.19, y: 2.54))
        path.addCurve(to: CGPoint(x: 40.51, y: 17.55), controlPoint1: CGPoint(x: 42.91, y: 9.15), controlPoint2: CGPoint(x: 35.27, y: 14.3))
        path.addCurve(to: CGPoint(x: 40.51, y: 30.79), controlPoint1: CGPoint(x: 44.94, y: 20.31), controlPoint2: CGPoint(x: 37.06, y: 26.05))
        path.addCurve(to: CGPoint(x: 37.55, y: 40.63), controlPoint1: CGPoint(x: 43.95, y: 35.52), controlPoint2: CGPoint(x: 40.03, y: 38.05))
        path.addCurve(to: CGPoint(x: 36.28, y: 49.5), controlPoint1: CGPoint(x: 35.28, y: 43), controlPoint2: CGPoint(x: 42.07, y: 47.62))
        path.addCurve(to: CGPoint(x: 31.09, y: 57.41), controlPoint1: CGPoint(x: 34.09, y: 50.21), controlPoint2: CGPoint(x: 38.27, y: 57.41))
        path.addCurve(to: CGPoint(x: 23.98, y: 68.07), controlPoint1: CGPoint(x: 25.88, y: 57.41), controlPoint2: CGPoint(x: 34.8, y: 65.34))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 139.22, y: 25.5))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 43.71, y: 62.94))
        path3.addCurve(to: CGPoint(x: 50.86, y: 69.8), controlPoint1: CGPoint(x: 49.21, y: 62.44), controlPoint2: CGPoint(x: 49.03, y: 69.12))
        path3.addCurve(to: CGPoint(x: 67.88, y: 56.88), controlPoint1: CGPoint(x: 52.69, y: 70.48), controlPoint2: CGPoint(x: 51.82, y: 53.65))
        path3.addCurve(to: CGPoint(x: 88.85, y: 54.73), controlPoint1: CGPoint(x: 83.94, y: 60.11), controlPoint2: CGPoint(x: 84.73, y: 54.47))
        path3.addCurve(to: CGPoint(x: 98.89, y: 37.71), controlPoint1: CGPoint(x: 101.49, y: 55.5), controlPoint2: CGPoint(x: 94.56, y: 41.77))
        path3.addCurve(to: CGPoint(x: 97.14, y: 22.86), controlPoint1: CGPoint(x: 105.44, y: 31.57), controlPoint2: CGPoint(x: 95.25, y: 27.02))
        path3.addCurve(to: CGPoint(x: 83.52, y: 6.72), controlPoint1: CGPoint(x: 100.2, y: 16.12), controlPoint2: CGPoint(x: 92.57, y: 4.96))
        path3.addCurve(to: CGPoint(x: 71.28, y: 2.45), controlPoint1: CGPoint(x: 81.26, y: 7.15), controlPoint2: CGPoint(x: 78.35, y: -0.84))
        path3.addCurve(to: CGPoint(x: 60.01, y: 0.39), controlPoint1: CGPoint(x: 68.15, y: 3.92), controlPoint2: CGPoint(x: 63.58, y: 1.22))
        path3.addCurve(to: CGPoint(x: 46.71, y: 2.45), controlPoint1: CGPoint(x: 51.06, y: -1.67), controlPoint2: CGPoint(x: 52.18, y: 5.21))
        path3.addCurve(to: CGPoint(x: 28.03, y: 9.8), controlPoint1: CGPoint(x: 39.69, y: -1.08), controlPoint2: CGPoint(x: 30.23, y: 4.99))
        path3.addCurve(to: CGPoint(x: 18.07, y: 16.89), controlPoint1: CGPoint(x: 26.1, y: 14.02), controlPoint2: CGPoint(x: 19.4, y: 10.61))
        path3.addCurve(to: CGPoint(x: 8.23, y: 27.52), controlPoint1: CGPoint(x: 17.05, y: 21.71), controlPoint2: CGPoint(x: 8.23, y: 20.47))
        path3.addCurve(to: CGPoint(x: 2.9, y: 37.71), controlPoint1: CGPoint(x: 8.23, y: 32.04), controlPoint2: CGPoint(x: 8.61, y: 33.85))
        path3.addCurve(to: CGPoint(x: 2.9, y: 53.71), controlPoint1: CGPoint(x: -2.82, y: 41.57), controlPoint2: CGPoint(x: 1.43, y: 51.3))
        path3.addCurve(to: CGPoint(x: 3.88, y: 67.93), controlPoint1: CGPoint(x: 6.2, y: 59.13), controlPoint2: CGPoint(x: -2.9, y: 64.68))
        path3.addCurve(to: CGPoint(x: 13.82, y: 81.05), controlPoint1: CGPoint(x: 7.51, y: 69.67), controlPoint2: CGPoint(x: 8.14, y: 82.02))
        path3.addCurve(to: CGPoint(x: 24.35, y: 87.64), controlPoint1: CGPoint(x: 17.94, y: 80.36), controlPoint2: CGPoint(x: 20.5, y: 86.85))
        path3.addCurve(to: CGPoint(x: 36.72, y: 92.99), controlPoint1: CGPoint(x: 29.48, y: 88.69), controlPoint2: CGPoint(x: 31.7, y: 92.27))
        path3.addCurve(to: CGPoint(x: 46.71, y: 91.07), controlPoint1: CGPoint(x: 41.21, y: 93.63), controlPoint2: CGPoint(x: 46.49, y: 91.45))
        path3.addCurve(to: CGPoint(x: 40.63, y: 80.36), controlPoint1: CGPoint(x: 47.63, y: 89.51), controlPoint2: CGPoint(x: 43.09, y: 85.27))
        path3.addCurve(to: CGPoint(x: 43.71, y: 62.94), controlPoint1: CGPoint(x: 35.13, y: 69.36), controlPoint2: CGPoint(x: 38.21, y: 63.44))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 73.31, y: 10.54))
        
        let hair = UIView()
        hair.layer.addSublayers(pathLayer, headLayer, path3Layer)
        return hair
    }
    
}
