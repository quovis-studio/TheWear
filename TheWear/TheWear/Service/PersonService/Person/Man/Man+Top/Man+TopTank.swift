/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawTopTank(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        if rain {
            path.move(to: CGPoint(x: 14.51, y: 2.21))
            path.addCurve(to: CGPoint(x: 9.1, y: 3.36), controlPoint1: CGPoint(x: 13.54, y: 1.95), controlPoint2: CGPoint(x: 10.65, y: 2.81))
            path.addCurve(to: CGPoint(x: 3.98, y: 6.12), controlPoint1: CGPoint(x: 7.55, y: 3.9), controlPoint2: CGPoint(x: 4.49, y: 5.23))
            path.addCurve(to: CGPoint(x: 7.19, y: 35.32), controlPoint1: CGPoint(x: 3.48, y: 7.01), controlPoint2: CGPoint(x: 7.51, y: 20.88))
            path.addCurve(to: CGPoint(x: 1.61, y: 59.69), controlPoint1: CGPoint(x: 6.86, y: 49.76), controlPoint2: CGPoint(x: 3.85, y: 56.22))
            path.addCurve(to: CGPoint(x: 1.87, y: 132.45), controlPoint1: CGPoint(x: 2.1, y: 64.79), controlPoint2: CGPoint(x: 1.87, y: 107.37))
            path.addCurve(to: CGPoint(x: 0.5, y: 198.67), controlPoint1: CGPoint(x: 1.87, y: 157.54), controlPoint2: CGPoint(x: -1.17, y: 196.99))
            path.addCurve(to: CGPoint(x: 92.39, y: 197.58), controlPoint1: CGPoint(x: 2.18, y: 200.35), controlPoint2: CGPoint(x: 91.48, y: 202.75))
            path.addCurve(to: CGPoint(x: 88.02, y: 121.3), controlPoint1: CGPoint(x: 93.3, y: 192.42), controlPoint2: CGPoint(x: 89.56, y: 149.63))
            path.addCurve(to: CGPoint(x: 82.81, y: 54.5), controlPoint1: CGPoint(x: 86.49, y: 92.96), controlPoint2: CGPoint(x: 82.9, y: 57.97))
            path.addCurve(to: CGPoint(x: 76.98, y: 32.31), controlPoint1: CGPoint(x: 80.16, y: 50.91), controlPoint2: CGPoint(x: 78.73, y: 48.55))
            path.addCurve(to: CGPoint(x: 78.05, y: 3.67), controlPoint1: CGPoint(x: 75.23, y: 16.06), controlPoint2: CGPoint(x: 78.63, y: 4.81))
            path.addCurve(to: CGPoint(x: 73.24, y: 0.93), controlPoint1: CGPoint(x: 77.46, y: 2.54), controlPoint2: CGPoint(x: 75.34, y: 1.64))
            path.addCurve(to: CGPoint(x: 67.01, y: 0.2), controlPoint1: CGPoint(x: 71.14, y: 0.22), controlPoint2: CGPoint(x: 68.62, y: -0.3))
            path.addCurve(to: CGPoint(x: 43.83, y: 34.23), controlPoint1: CGPoint(x: 65.39, y: 0.69), controlPoint2: CGPoint(x: 67.01, y: 32.31))
            path.addCurve(to: CGPoint(x: 14.51, y: 2.21), controlPoint1: CGPoint(x: 20.65, y: 36.16), controlPoint2: CGPoint(x: 15.49, y: 2.47))
            path.close()
        } else {
            path.move(to: CGPoint(x: 14.51, y: 2.21))
            path.addCurve(to: CGPoint(x: 9.1, y: 3.36), controlPoint1: CGPoint(x: 13.54, y: 1.95), controlPoint2: CGPoint(x: 10.65, y: 2.81))
            path.addCurve(to: CGPoint(x: 3.98, y: 6.12), controlPoint1: CGPoint(x: 7.55, y: 3.9), controlPoint2: CGPoint(x: 4.49, y: 5.23))
            path.addCurve(to: CGPoint(x: 7.19, y: 35.32), controlPoint1: CGPoint(x: 3.48, y: 7.01), controlPoint2: CGPoint(x: 7.51, y: 20.88))
            path.addCurve(to: CGPoint(x: 1.61, y: 59.69), controlPoint1: CGPoint(x: 6.86, y: 49.76), controlPoint2: CGPoint(x: 3.85, y: 56.22))
            path.addCurve(to: CGPoint(x: 1.87, y: 132.45), controlPoint1: CGPoint(x: 2.1, y: 64.79), controlPoint2: CGPoint(x: 1.87, y: 107.37))
            path.addCurve(to: CGPoint(x: 0.5, y: 198.67), controlPoint1: CGPoint(x: 1.87, y: 157.54), controlPoint2: CGPoint(x: -1.17, y: 196.99))
            path.addCurve(to: CGPoint(x: 92.39, y: 197.58), controlPoint1: CGPoint(x: 2.18, y: 200.35), controlPoint2: CGPoint(x: 91.48, y: 202.75))
            path.addCurve(to: CGPoint(x: 88.02, y: 121.3), controlPoint1: CGPoint(x: 93.3, y: 192.42), controlPoint2: CGPoint(x: 89.56, y: 149.63))
            path.addCurve(to: CGPoint(x: 82.84, y: 54.57), controlPoint1: CGPoint(x: 86.49, y: 92.96), controlPoint2: CGPoint(x: 82.94, y: 58.03))
            path.addCurve(to: CGPoint(x: 76.98, y: 32.31), controlPoint1: CGPoint(x: 80.2, y: 50.97), controlPoint2: CGPoint(x: 78.73, y: 48.55))
            path.addCurve(to: CGPoint(x: 78.05, y: 3.67), controlPoint1: CGPoint(x: 75.23, y: 16.06), controlPoint2: CGPoint(x: 78.63, y: 4.81))
            path.addCurve(to: CGPoint(x: 73.24, y: 0.93), controlPoint1: CGPoint(x: 77.46, y: 2.54), controlPoint2: CGPoint(x: 75.34, y: 1.64))
            path.addCurve(to: CGPoint(x: 67.01, y: 0.2), controlPoint1: CGPoint(x: 71.14, y: 0.22), controlPoint2: CGPoint(x: 68.62, y: -0.3))
            path.addCurve(to: CGPoint(x: 43.83, y: 34.23), controlPoint1: CGPoint(x: 65.39, y: 0.69), controlPoint2: CGPoint(x: 67.01, y: 32.31))
            path.addCurve(to: CGPoint(x: 14.51, y: 2.21), controlPoint1: CGPoint(x: 20.65, y: 36.16), controlPoint2: CGPoint(x: 15.49, y: 2.47))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 85.24, y: 126.81))
        
        let topTank = UIView()
        topTank.layer.addSublayer(pathLayer)
        return topTank
    }
    
}
