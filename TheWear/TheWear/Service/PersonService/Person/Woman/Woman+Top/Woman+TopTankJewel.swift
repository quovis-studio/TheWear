/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawTopTankJewel(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        if rain {
            path.move(to: CGPoint(x: 42.3, y: 5.64))
            path.addCurve(to: CGPoint(x: 24.75, y: 0.64), controlPoint1: CGPoint(x: 31.94, y: 6.05), controlPoint2: CGPoint(x: 25.8, y: 0.83))
            path.addCurve(to: CGPoint(x: 19.15, y: 1.95), controlPoint1: CGPoint(x: 23.71, y: 0.45), controlPoint2: CGPoint(x: 19.94, y: 0.88))
            path.addCurve(to: CGPoint(x: 19.88, y: 26.65), controlPoint1: CGPoint(x: 18.35, y: 3.03), controlPoint2: CGPoint(x: 22.75, y: 11.44))
            path.addCurve(to: CGPoint(x: 0, y: 56.32), controlPoint1: CGPoint(x: 17, y: 41.87), controlPoint2: CGPoint(x: 2, y: 51.82))
            path.addCurve(to: CGPoint(x: 5.81, y: 89.22), controlPoint1: CGPoint(x: 0.49, y: 61.42), controlPoint2: CGPoint(x: 4.96, y: 72.32))
            path.addCurve(to: CGPoint(x: 6.29, y: 108.54), controlPoint1: CGPoint(x: 6.65, y: 106.12), controlPoint2: CGPoint(x: 5.79, y: 106.54))
            path.addCurve(to: CGPoint(x: 45.13, y: 111.99), controlPoint1: CGPoint(x: 6.55, y: 109.57), controlPoint2: CGPoint(x: 26.53, y: 112.4))
            path.addCurve(to: CGPoint(x: 76.06, y: 106.92), controlPoint1: CGPoint(x: 62.68, y: 111.59), controlPoint2: CGPoint(x: 75.44, y: 109.4))
            path.addCurve(to: CGPoint(x: 78.9, y: 75.65), controlPoint1: CGPoint(x: 76.68, y: 104.44), controlPoint2: CGPoint(x: 72.87, y: 89.08))
            path.addCurve(to: CGPoint(x: 77.65, y: 43.93), controlPoint1: CGPoint(x: 84.93, y: 62.22), controlPoint2: CGPoint(x: 81.17, y: 49.2))
            path.addCurve(to: CGPoint(x: 61.7, y: 20.78), controlPoint1: CGPoint(x: 74.12, y: 38.66), controlPoint2: CGPoint(x: 65.3, y: 33.13))
            path.addCurve(to: CGPoint(x: 59.6, y: 0.86), controlPoint1: CGPoint(x: 58.1, y: 8.44), controlPoint2: CGPoint(x: 60.38, y: 1.45))
            path.addCurve(to: CGPoint(x: 54.27, y: 0.04), controlPoint1: CGPoint(x: 58.81, y: 0.27), controlPoint2: CGPoint(x: 55.26, y: -0.14))
            path.addCurve(to: CGPoint(x: 42.3, y: 5.64), controlPoint1: CGPoint(x: 53.28, y: 0.23), controlPoint2: CGPoint(x: 52.65, y: 5.22))
            path.close()
        } else {
            path.move(to: CGPoint(x: 42.3, y: 5.64))
            path.addCurve(to: CGPoint(x: 24.75, y: 0.64), controlPoint1: CGPoint(x: 31.94, y: 6.05), controlPoint2: CGPoint(x: 25.8, y: 0.83))
            path.addCurve(to: CGPoint(x: 19.15, y: 1.95), controlPoint1: CGPoint(x: 23.71, y: 0.45), controlPoint2: CGPoint(x: 19.94, y: 0.88))
            path.addCurve(to: CGPoint(x: 19.88, y: 26.65), controlPoint1: CGPoint(x: 18.35, y: 3.03), controlPoint2: CGPoint(x: 22.75, y: 11.44))
            path.addCurve(to: CGPoint(x: 0, y: 56.32), controlPoint1: CGPoint(x: 17, y: 41.87), controlPoint2: CGPoint(x: 2, y: 51.82))
            path.addCurve(to: CGPoint(x: 5.81, y: 89.22), controlPoint1: CGPoint(x: 0.49, y: 61.42), controlPoint2: CGPoint(x: 4.96, y: 72.32))
            path.addCurve(to: CGPoint(x: 6.29, y: 108.54), controlPoint1: CGPoint(x: 6.65, y: 106.12), controlPoint2: CGPoint(x: 5.79, y: 106.54))
            path.addCurve(to: CGPoint(x: 45.13, y: 111.99), controlPoint1: CGPoint(x: 6.55, y: 109.57), controlPoint2: CGPoint(x: 26.53, y: 112.4))
            path.addCurve(to: CGPoint(x: 76.06, y: 106.92), controlPoint1: CGPoint(x: 62.68, y: 111.59), controlPoint2: CGPoint(x: 75.44, y: 109.4))
            path.addCurve(to: CGPoint(x: 78.9, y: 75.65), controlPoint1: CGPoint(x: 76.68, y: 104.44), controlPoint2: CGPoint(x: 72.87, y: 89.08))
            path.addCurve(to: CGPoint(x: 77.65, y: 43.93), controlPoint1: CGPoint(x: 84.93, y: 62.22), controlPoint2: CGPoint(x: 81.17, y: 49.2))
            path.addCurve(to: CGPoint(x: 61.7, y: 20.78), controlPoint1: CGPoint(x: 74.12, y: 38.66), controlPoint2: CGPoint(x: 65.3, y: 33.13))
            path.addCurve(to: CGPoint(x: 59.6, y: 0.86), controlPoint1: CGPoint(x: 58.1, y: 8.44), controlPoint2: CGPoint(x: 60.38, y: 1.45))
            path.addCurve(to: CGPoint(x: 54.27, y: 0.04), controlPoint1: CGPoint(x: 58.81, y: 0.27), controlPoint2: CGPoint(x: 55.26, y: -0.14))
            path.addCurve(to: CGPoint(x: 42.3, y: 5.64), controlPoint1: CGPoint(x: 53.28, y: 0.23), controlPoint2: CGPoint(x: 52.65, y: 5.22))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 89.37, y: 127.55))
        
        let top = UIView()
        top.layer.addSublayer(pathLayer)
        return top
    }
    
}
