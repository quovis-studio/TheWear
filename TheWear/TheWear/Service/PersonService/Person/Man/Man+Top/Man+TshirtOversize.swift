/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawTshirtOversize(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path1 = UIBezierPath()
        if rain {
            path.move(to: CGPoint(x: 0, y: 88.47))
            path.addCurve(to: CGPoint(x: 25.15, y: 17.93), controlPoint1: CGPoint(x: -0.03, y: 85.65), controlPoint2: CGPoint(x: 13.83, y: 30.39))
            path.addCurve(to: CGPoint(x: 59.62, y: 1.83), controlPoint1: CGPoint(x: 36.48, y: 5.47), controlPoint2: CGPoint(x: 57.95, y: 1.82))
            path.addCurve(to: CGPoint(x: 80.78, y: 18.53), controlPoint1: CGPoint(x: 61.3, y: 1.85), controlPoint2: CGPoint(x: 59.83, y: 17.97))
            path.addCurve(to: CGPoint(x: 100.61, y: 0), controlPoint1: CGPoint(x: 101.73, y: 19.1), controlPoint2: CGPoint(x: 99.51, y: -0.01))
            path.addCurve(to: CGPoint(x: 135.46, y: 17.9), controlPoint1: CGPoint(x: 101.72, y: 0.01), controlPoint2: CGPoint(x: 125.27, y: 4.87))
            path.addCurve(to: CGPoint(x: 143.36, y: 34.25), controlPoint1: CGPoint(x: 138.06, y: 21.21), controlPoint2: CGPoint(x: 140.77, y: 27.16))
            path.addCurve(to: CGPoint(x: 135.72, y: 70.91), controlPoint1: CGPoint(x: 139.38, y: 51.92), controlPoint2: CGPoint(x: 137.07, y: 62.51))
            path.addCurve(to: CGPoint(x: 133.78, y: 95.26), controlPoint1: CGPoint(x: 134.37, y: 79.3), controlPoint2: CGPoint(x: 133.78, y: 89.77))
            path.addCurve(to: CGPoint(x: 126.12, y: 84.58), controlPoint1: CGPoint(x: 133.78, y: 100.76), controlPoint2: CGPoint(x: 126.12, y: 84.58))
            path.addCurve(to: CGPoint(x: 130.94, y: 152.35), controlPoint1: CGPoint(x: 126.12, y: 84.58), controlPoint2: CGPoint(x: 128.53, y: 115.59))
            path.addCurve(to: CGPoint(x: 133.21, y: 215.01), controlPoint1: CGPoint(x: 133.34, y: 189.11), controlPoint2: CGPoint(x: 134.13, y: 209.78))
            path.addCurve(to: CGPoint(x: 34.83, y: 216.71), controlPoint1: CGPoint(x: 132.29, y: 220.23), controlPoint2: CGPoint(x: 36.53, y: 218.41))
            path.addCurve(to: CGPoint(x: 33.91, y: 125.56), controlPoint1: CGPoint(x: 33.13, y: 215.01), controlPoint2: CGPoint(x: 33.91, y: 150.95))
            path.addCurve(to: CGPoint(x: 36.15, y: 83.13), controlPoint1: CGPoint(x: 33.91, y: 100.17), controlPoint2: CGPoint(x: 36.15, y: 83.13))
            path.addCurve(to: CGPoint(x: 31.03, y: 101.14), controlPoint1: CGPoint(x: 36.15, y: 83.13), controlPoint2: CGPoint(x: 32.14, y: 99.46))
            path.addCurve(to: CGPoint(x: 0, y: 88.47), controlPoint1: CGPoint(x: 29.92, y: 102.83), controlPoint2: CGPoint(x: 0.03, y: 91.28))
            path.close()
            
            path1.move(to: CGPoint(x: 6.19, y: 1.4))
            path1.addCurve(to: CGPoint(x: 4.79, y: 0.04), controlPoint1: CGPoint(x: 5.75, y: -0.38), controlPoint2: CGPoint(x: 4.79, y: 0.04))
            path1.addCurve(to: CGPoint(x: 1.28, y: 15.59), controlPoint1: CGPoint(x: 4.79, y: 0.04), controlPoint2: CGPoint(x: 2.3, y: 9.55))
            path1.addCurve(to: CGPoint(x: 0, y: 29.87), controlPoint1: CGPoint(x: 0.27, y: 21.63), controlPoint2: CGPoint(x: 0, y: 29.87))
            path1.addCurve(to: CGPoint(x: 6.19, y: 1.4), controlPoint1: CGPoint(x: 0, y: 29.87), controlPoint2: CGPoint(x: 5.31, y: 4.81))
            path1.close()
        } else {
            path.move(to: CGPoint(x: 0, y: 87.94))
            path.addCurve(to: CGPoint(x: 25.15, y: 17.4), controlPoint1: CGPoint(x: -0.03, y: 85.12), controlPoint2: CGPoint(x: 13.83, y: 29.86))
            path.addCurve(to: CGPoint(x: 59.62, y: 1.31), controlPoint1: CGPoint(x: 36.48, y: 4.95), controlPoint2: CGPoint(x: 57.95, y: 1.29))
            path.addCurve(to: CGPoint(x: 80.78, y: 18.01), controlPoint1: CGPoint(x: 61.3, y: 1.32), controlPoint2: CGPoint(x: 59.83, y: 17.44))
            path.addCurve(to: CGPoint(x: 100.64, y: 0), controlPoint1: CGPoint(x: 101.73, y: 18.57), controlPoint2: CGPoint(x: 99.54, y: -0.01))
            path.addCurve(to: CGPoint(x: 136.43, y: 18.01), controlPoint1: CGPoint(x: 101.75, y: 0.01), controlPoint2: CGPoint(x: 126.24, y: 4.98))
            path.addCurve(to: CGPoint(x: 158.34, y: 88.52), controlPoint1: CGPoint(x: 146.62, y: 31.03), controlPoint2: CGPoint(x: 158.81, y: 84.58))
            path.addCurve(to: CGPoint(x: 130.94, y: 97.8), controlPoint1: CGPoint(x: 157.87, y: 92.45), controlPoint2: CGPoint(x: 132.07, y: 100.63))
            path.addCurve(to: CGPoint(x: 126.12, y: 84.05), controlPoint1: CGPoint(x: 129.8, y: 94.96), controlPoint2: CGPoint(x: 126.12, y: 84.05))
            path.addCurve(to: CGPoint(x: 130.94, y: 151.82), controlPoint1: CGPoint(x: 126.12, y: 84.05), controlPoint2: CGPoint(x: 128.53, y: 115.06))
            path.addCurve(to: CGPoint(x: 133.21, y: 214.48), controlPoint1: CGPoint(x: 133.34, y: 188.58), controlPoint2: CGPoint(x: 134.13, y: 209.25))
            path.addCurve(to: CGPoint(x: 34.83, y: 216.19), controlPoint1: CGPoint(x: 132.29, y: 219.71), controlPoint2: CGPoint(x: 36.53, y: 217.89))
            path.addCurve(to: CGPoint(x: 33.91, y: 125.03), controlPoint1: CGPoint(x: 33.13, y: 214.49), controlPoint2: CGPoint(x: 33.91, y: 150.42))
            path.addCurve(to: CGPoint(x: 36.15, y: 82.6), controlPoint1: CGPoint(x: 33.91, y: 99.65), controlPoint2: CGPoint(x: 36.15, y: 82.6))
            path.addCurve(to: CGPoint(x: 31.03, y: 100.62), controlPoint1: CGPoint(x: 36.15, y: 82.6), controlPoint2: CGPoint(x: 32.14, y: 98.93))
            path.addCurve(to: CGPoint(x: 0, y: 87.94), controlPoint1: CGPoint(x: 29.92, y: 102.3), controlPoint2: CGPoint(x: 0.03, y: 90.76))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 47.86, y: rain ? 125.27 : 125.8))
        let path1Layer = createLayer(path1, Color.shadow.medium, CGPoint(x: 184.71, y: 159.49))
        
        let over = UIView()
        over.layer.addSublayers(pathLayer, path1Layer)
        return over
    }
    
}
