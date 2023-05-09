/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawPigtails() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 53.06, y: 10.22))
        path.addCurve(to: CGPoint(x: 54.23, y: 56.88), controlPoint1: CGPoint(x: 65.24, y: 24.15), controlPoint2: CGPoint(x: 54.23, y: 47.44))
        path.addCurve(to: CGPoint(x: 49.5, y: 79.77), controlPoint1: CGPoint(x: 54.23, y: 61.45), controlPoint2: CGPoint(x: 52.38, y: 66.4))
        path.addCurve(to: CGPoint(x: 49.84, y: 92.04), controlPoint1: CGPoint(x: 48.26, y: 85.51), controlPoint2: CGPoint(x: 50.11, y: 86.43))
        path.addCurve(to: CGPoint(x: 48.23, y: 102.73), controlPoint1: CGPoint(x: 49.58, y: 97.64), controlPoint2: CGPoint(x: 47.23, y: 99.26))
        path.addCurve(to: CGPoint(x: 46.75, y: 115.54), controlPoint1: CGPoint(x: 49.23, y: 106.2), controlPoint2: CGPoint(x: 48.04, y: 110.05))
        path.addCurve(to: CGPoint(x: 42.44, y: 141.08), controlPoint1: CGPoint(x: 50.03, y: 126.06), controlPoint2: CGPoint(x: 46.28, y: 141.11))
        path.addCurve(to: CGPoint(x: 38.36, y: 115.54), controlPoint1: CGPoint(x: 38.59, y: 141.05), controlPoint2: CGPoint(x: 34.96, y: 128.83))
        path.addCurve(to: CGPoint(x: 35.48, y: 103.42), controlPoint1: CGPoint(x: 37.54, y: 113.43), controlPoint2: CGPoint(x: 34.89, y: 109.32))
        path.addCurve(to: CGPoint(x: 34.11, y: 92.04), controlPoint1: CGPoint(x: 36.07, y: 97.52), controlPoint2: CGPoint(x: 33.93, y: 96.9))
        path.addCurve(to: CGPoint(x: 34.41, y: 83.14), controlPoint1: CGPoint(x: 34.3, y: 87.17), controlPoint2: CGPoint(x: 34.94, y: 87.06))
        path.addCurve(to: CGPoint(x: 33.18, y: 67.79), controlPoint1: CGPoint(x: 33.87, y: 79.23), controlPoint2: CGPoint(x: 31.28, y: 77.2))
        path.addCurve(to: CGPoint(x: 1.41, y: 9.15), controlPoint1: CGPoint(x: 35.08, y: 58.38), controlPoint2: CGPoint(x: -8.27, y: 18.43))
        path.addCurve(to: CGPoint(x: 53.06, y: 10.22), controlPoint1: CGPoint(x: 11.1, y: -0.12), controlPoint2: CGPoint(x: 38.79, y: -6.1))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 106.77, y: 39.98))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 22.92, y: 33.06))
        path3.addCurve(to: CGPoint(x: 30.07, y: 39.92), controlPoint1: CGPoint(x: 28.42, y: 32.56), controlPoint2: CGPoint(x: 28.24, y: 39.24))
        path3.addCurve(to: CGPoint(x: 48.96, y: 27.65), controlPoint1: CGPoint(x: 31.9, y: 40.59), controlPoint2: CGPoint(x: 36.77, y: 33.82))
        path3.addCurve(to: CGPoint(x: 67.61, y: 15.96), controlPoint1: CGPoint(x: 61.16, y: 21.49), controlPoint2: CGPoint(x: 69.47, y: 20.27))
        path3.addCurve(to: CGPoint(x: 43.72, y: 0.25), controlPoint1: CGPoint(x: 63.71, y: 6.94), controlPoint2: CGPoint(x: 52.49, y: 1.41))
        path3.addCurve(to: CGPoint(x: 6.89, y: 15.41), controlPoint1: CGPoint(x: 34.94, y: -0.92), controlPoint2: CGPoint(x: 15.65, y: 1.7))
        path3.addCurve(to: CGPoint(x: 0.29, y: 37.85), controlPoint1: CGPoint(x: 0.96, y: 24.71), controlPoint2: CGPoint(x: 2.66, y: 25.58))
        path3.addCurve(to: CGPoint(x: 3.49, y: 61.75), controlPoint1: CGPoint(x: -1.38, y: 46.52), controlPoint2: CGPoint(x: 4.82, y: 50.92))
        path3.addCurve(to: CGPoint(x: 5.48, y: 80.98), controlPoint1: CGPoint(x: 2.17, y: 72.58), controlPoint2: CGPoint(x: 7.35, y: 71.56))
        path3.addCurve(to: CGPoint(x: 7.46, y: 101.43), controlPoint1: CGPoint(x: 3.61, y: 90.41), controlPoint2: CGPoint(x: 9.53, y: 94.11))
        path3.addCurve(to: CGPoint(x: 10.99, y: 116.45), controlPoint1: CGPoint(x: 5.4, y: 108.76), controlPoint2: CGPoint(x: 10.34, y: 112.85))
        path3.addCurve(to: CGPoint(x: 15.13, y: 141.79), controlPoint1: CGPoint(x: 8.09, y: 124.63), controlPoint2: CGPoint(x: 10.92, y: 141.68))
        path3.addCurve(to: CGPoint(x: 19.35, y: 116.45), controlPoint1: CGPoint(x: 19.35, y: 141.89), controlPoint2: CGPoint(x: 23.76, y: 127.78))
        path3.addCurve(to: CGPoint(x: 22.01, y: 104.31), controlPoint1: CGPoint(x: 19.35, y: 111.43), controlPoint2: CGPoint(x: 21.37, y: 109.95))
        path3.addCurve(to: CGPoint(x: 21.43, y: 94.48), controlPoint1: CGPoint(x: 22.65, y: 98.67), controlPoint2: CGPoint(x: 19.71, y: 99.03))
        path3.addCurve(to: CGPoint(x: 22.32, y: 78.52), controlPoint1: CGPoint(x: 23.16, y: 89.92), controlPoint2: CGPoint(x: 23.3, y: 83.62))
        path3.addCurve(to: CGPoint(x: 24.36, y: 65.96), controlPoint1: CGPoint(x: 21.34, y: 73.42), controlPoint2: CGPoint(x: 23.78, y: 69.6))
        path3.addCurve(to: CGPoint(x: 19.84, y: 50.48), controlPoint1: CGPoint(x: 25.29, y: 60.18), controlPoint2: CGPoint(x: 20.56, y: 51.91))
        path3.addCurve(to: CGPoint(x: 22.92, y: 33.06), controlPoint1: CGPoint(x: 14.34, y: 39.48), controlPoint2: CGPoint(x: 17.42, y: 33.56))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 95.86, y: 39.57))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0.35, y: 0.85))
        path4.addCurve(to: CGPoint(x: 0.65, y: 4.9), controlPoint1: CGPoint(x: -0.25, y: 1.49), controlPoint2: CGPoint(x: -0.04, y: 4.32))
        path4.addCurve(to: CGPoint(x: 10.29, y: 4.81), controlPoint1: CGPoint(x: 1.26, y: 5.42), controlPoint2: CGPoint(x: 9.78, y: 5.47))
        path4.addCurve(to: CGPoint(x: 10.06, y: 0.46), controlPoint1: CGPoint(x: 10.83, y: 4.12), controlPoint2: CGPoint(x: 10.57, y: 1))
        path4.addCurve(to: CGPoint(x: 0.35, y: 0.85), controlPoint1: CGPoint(x: 9.26, y: -0.39), controlPoint2: CGPoint(x: 1.09, y: 0.06))
        path4.close()
        let path4Layer = createLayer(path4, UIColor(60, 58, 58), CGPoint(x: 105.55, y: 152.38))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 0.43, y: 0.75))
        path5.addCurve(to: CGPoint(x: 0.54, y: 4.64), controlPoint1: CGPoint(x: -0.17, y: 1.39), controlPoint2: CGPoint(x: -0.15, y: 4.06))
        path5.addCurve(to: CGPoint(x: 10.29, y: 4.77), controlPoint1: CGPoint(x: 1.15, y: 5.15), controlPoint2: CGPoint(x: 9.77, y: 5.43))
        path5.addCurve(to: CGPoint(x: 10.06, y: 0.51), controlPoint1: CGPoint(x: 10.82, y: 4.08), controlPoint2: CGPoint(x: 10.57, y: 1.05))
        path5.addCurve(to: CGPoint(x: 0.43, y: 0.75), controlPoint1: CGPoint(x: 9.27, y: -0.34), controlPoint2: CGPoint(x: 1.17, y: -0.04))
        path5.close()
        let path5Layer = createLayer(path5, UIColor(60, 58, 58), CGPoint(x: 144.07, y: 152.38))
        
        let hair = UIView()
        hair.layer.addSublayers(pathLayer, headLayer, path3Layer, path4Layer, path5Layer)
        return hair
    }
    
}
