/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawVolume() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 57, y: 9.43))
        path.addCurve(to: CGPoint(x: 5.47, y: 9.87), controlPoint1: CGPoint(x: 38.21, y: -6.42), controlPoint2: CGPoint(x: 14.38, y: 0.51))
        path.addCurve(to: CGPoint(x: 3.47, y: 78.37), controlPoint1: CGPoint(x: -3.44, y: 19.24), controlPoint2: CGPoint(x: 0.54, y: 74.98))
        path.addCurve(to: CGPoint(x: 17.66, y: 83.32), controlPoint1: CGPoint(x: 4.12, y: 79.12), controlPoint2: CGPoint(x: 10.59, y: 81.22))
        path.addLine(to: CGPoint(x: 20.12, y: 52.38))
        path.addLine(to: CGPoint(x: 34.18, y: 64.97))
        path.addLine(to: CGPoint(x: 36.89, y: 88.61))
        path.addCurve(to: CGPoint(x: 36.89, y: 88.61), controlPoint1: CGPoint(x: 36.89, y: 88.61), controlPoint2: CGPoint(x: 36.89, y: 88.61))
        path.addCurve(to: CGPoint(x: 36.96, y: 89.27), controlPoint1: CGPoint(x: 36.9, y: 88.7), controlPoint2: CGPoint(x: 36.93, y: 88.93))
        path.addCurve(to: CGPoint(x: 36.97, y: 89.32), controlPoint1: CGPoint(x: 36.96, y: 89.28), controlPoint2: CGPoint(x: 36.97, y: 89.3))
        path.addLine(to: CGPoint(x: 37.02, y: 89.74))
        path.addLine(to: CGPoint(x: 37.01, y: 89.74))
        path.addCurve(to: CGPoint(x: 52.73, y: 123.33), controlPoint1: CGPoint(x: 37.59, y: 95.2), controlPoint2: CGPoint(x: 40.35, y: 118.05))
        path.addCurve(to: CGPoint(x: 86.01, y: 122), controlPoint1: CGPoint(x: 66.5, y: 129.21), controlPoint2: CGPoint(x: 82.09, y: 129.12))
        path.addCurve(to: CGPoint(x: 85.91, y: 109.13), controlPoint1: CGPoint(x: 88.53, y: 117.41), controlPoint2: CGPoint(x: 87.19, y: 113.17))
        path.addCurve(to: CGPoint(x: 84.52, y: 102.59), controlPoint1: CGPoint(x: 85.21, y: 106.9), controlPoint2: CGPoint(x: 84.52, y: 104.73))
        path.addCurve(to: CGPoint(x: 85.37, y: 95.77), controlPoint1: CGPoint(x: 84.51, y: 100.21), controlPoint2: CGPoint(x: 84.94, y: 98))
        path.addCurve(to: CGPoint(x: 86.01, y: 85.42), controlPoint1: CGPoint(x: 85.99, y: 92.57), controlPoint2: CGPoint(x: 86.62, y: 89.31))
        path.addCurve(to: CGPoint(x: 84.33, y: 79.51), controlPoint1: CGPoint(x: 85.57, y: 82.59), controlPoint2: CGPoint(x: 84.97, y: 81.1))
        path.addCurve(to: CGPoint(x: 81.59, y: 66.34), controlPoint1: CGPoint(x: 83.35, y: 77.07), controlPoint2: CGPoint(x: 82.28, y: 74.41))
        path.addCurve(to: CGPoint(x: 77.85, y: 53.75), controlPoint1: CGPoint(x: 80.96, y: 58.96), controlPoint2: CGPoint(x: 79.39, y: 56.32))
        path.addCurve(to: CGPoint(x: 74.72, y: 45.22), controlPoint1: CGPoint(x: 76.61, y: 51.67), controlPoint2: CGPoint(x: 75.4, y: 49.64))
        path.addCurve(to: CGPoint(x: 74.14, y: 41.26), controlPoint1: CGPoint(x: 74.51, y: 43.83), controlPoint2: CGPoint(x: 74.32, y: 42.52))
        path.addCurve(to: CGPoint(x: 68.32, y: 21.34), controlPoint1: CGPoint(x: 73.02, y: 33.53), controlPoint2: CGPoint(x: 72.22, y: 28))
        path.addCurve(to: CGPoint(x: 57.83, y: 10.05), controlPoint1: CGPoint(x: 64.48, y: 14.79), controlPoint2: CGPoint(x: 59.87, y: 11.5))
        path.addCurve(to: CGPoint(x: 57, y: 9.43), controlPoint1: CGPoint(x: 57.46, y: 9.79), controlPoint2: CGPoint(x: 57.18, y: 9.58))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 101.8, y: 39.4))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 41.4, y: 33.02))
        path3.addCurve(to: CGPoint(x: 48.55, y: 39.88), controlPoint1: CGPoint(x: 46.9, y: 32.52), controlPoint2: CGPoint(x: 46.72, y: 39.2))
        path3.addCurve(to: CGPoint(x: 67.44, y: 27.62), controlPoint1: CGPoint(x: 50.39, y: 40.56), controlPoint2: CGPoint(x: 55.25, y: 33.78))
        path3.addCurve(to: CGPoint(x: 88.43, y: 15.38), controlPoint1: CGPoint(x: 79.64, y: 21.45), controlPoint2: CGPoint(x: 90.29, y: 19.69))
        path3.addCurve(to: CGPoint(x: 62.2, y: 0.21), controlPoint1: CGPoint(x: 84.53, y: 6.36), controlPoint2: CGPoint(x: 70.97, y: 1.37))
        path3.addCurve(to: CGPoint(x: 31.78, y: 10.69), controlPoint1: CGPoint(x: 53.43, y: -0.95), controlPoint2: CGPoint(x: 39.11, y: 2.72))
        path3.addCurve(to: CGPoint(x: 17.55, y: 33.02), controlPoint1: CGPoint(x: 24.45, y: 18.67), controlPoint2: CGPoint(x: 21.24, y: 17.32))
        path3.addCurve(to: CGPoint(x: 11.73, y: 53.77), controlPoint1: CGPoint(x: 13.87, y: 48.73), controlPoint2: CGPoint(x: 12.11, y: 45.36))
        path3.addCurve(to: CGPoint(x: 7.48, y: 69.53), controlPoint1: CGPoint(x: 11.34, y: 62.17), controlPoint2: CGPoint(x: 10.03, y: 61.76))
        path3.addCurve(to: CGPoint(x: 3.61, y: 88.39), controlPoint1: CGPoint(x: 4.93, y: 77.29), controlPoint2: CGPoint(x: 7.82, y: 78.85))
        path3.addCurve(to: CGPoint(x: 0.95, y: 106), controlPoint1: CGPoint(x: -0.6, y: 97.93), controlPoint2: CGPoint(x: 1.53, y: 98.19))
        path3.addCurve(to: CGPoint(x: 2.96, y: 123.01), controlPoint1: CGPoint(x: 0.37, y: 113.81), controlPoint2: CGPoint(x: -1.68, y: 114.97))
        path3.addCurve(to: CGPoint(x: 48.55, y: 121.31), controlPoint1: CGPoint(x: 7.6, y: 131.05), controlPoint2: CGPoint(x: 39, y: 131.13))
        path3.addCurve(to: CGPoint(x: 46.39, y: 63.57), controlPoint1: CGPoint(x: 58.1, y: 111.48), controlPoint2: CGPoint(x: 46.39, y: 63.57))
        path3.addCurve(to: CGPoint(x: 38.32, y: 50.44), controlPoint1: CGPoint(x: 46.39, y: 63.57), controlPoint2: CGPoint(x: 38.96, y: 51.72))
        path3.addCurve(to: CGPoint(x: 41.4, y: 33.02), controlPoint1: CGPoint(x: 32.82, y: 39.44), controlPoint2: CGPoint(x: 35.9, y: 33.52))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 74.64, y: 39.4))
        
        let hair = UIView()
        hair.layer.addSublayers(pathLayer, headLayer, path3Layer)
        return hair
    }
    
}
