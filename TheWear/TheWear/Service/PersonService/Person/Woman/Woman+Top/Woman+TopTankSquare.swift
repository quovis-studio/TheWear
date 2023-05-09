/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawTopTankSquare(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        if rain {
            path.move(to: CGPoint(x: 78.41, y: 74.62))
            path.addCurve(to: CGPoint(x: 77.16, y: 42.91), controlPoint1: CGPoint(x: 84.45, y: 61.19), controlPoint2: CGPoint(x: 79.79, y: 47.3))
            path.addCurve(to: CGPoint(x: 68.33, y: 21.39), controlPoint1: CGPoint(x: 74.53, y: 38.51), controlPoint2: CGPoint(x: 69.25, y: 30.32))
            path.addCurve(to: CGPoint(x: 67.63, y: 1.43), controlPoint1: CGPoint(x: 67.4, y: 12.47), controlPoint2: CGPoint(x: 68.26, y: 2.42))
            path.addCurve(to: CGPoint(x: 62.07, y: 0.11), controlPoint1: CGPoint(x: 66.99, y: 0.44), controlPoint2: CGPoint(x: 63.64, y: -0.29))
            path.addCurve(to: CGPoint(x: 61.02, y: 8.85), controlPoint1: CGPoint(x: 61.56, y: 0.24), controlPoint2: CGPoint(x: 61.12, y: 5.46))
            path.addCurve(to: CGPoint(x: 42.18, y: 36.03), controlPoint1: CGPoint(x: 60.21, y: 35.67), controlPoint2: CGPoint(x: 59.34, y: 35.45))
            path.addCurve(to: CGPoint(x: 18.26, y: 12.48), controlPoint1: CGPoint(x: 25.03, y: 36.62), controlPoint2: CGPoint(x: 22.95, y: 37.84))
            path.addLine(to: CGPoint(x: 18.23, y: 12.35))
            path.addCurve(to: CGPoint(x: 15.74, y: 1.65), controlPoint1: CGPoint(x: 17.36, y: 7.63), controlPoint2: CGPoint(x: 16.27, y: 1.75))
            path.addCurve(to: CGPoint(x: 10.32, y: 3.56), controlPoint1: CGPoint(x: 14.38, y: 1.4), controlPoint2: CGPoint(x: 11.08, y: 2.48))
            path.addCurve(to: CGPoint(x: 12.07, y: 28.73), controlPoint1: CGPoint(x: 9.56, y: 4.64), controlPoint2: CGPoint(x: 13.3, y: 14.57))
            path.addCurve(to: CGPoint(x: 0, y: 57), controlPoint1: CGPoint(x: 10.84, y: 42.88), controlPoint2: CGPoint(x: 2, y: 52.5))
            path.addCurve(to: CGPoint(x: 5.58, y: 92.84), controlPoint1: CGPoint(x: 0.49, y: 62.1), controlPoint2: CGPoint(x: 5.08, y: 71.84))
            path.addCurve(to: CGPoint(x: 5.2, y: 120.69), controlPoint1: CGPoint(x: 6.08, y: 113.84), controlPoint2: CGPoint(x: 4.26, y: 119.3))
            path.addCurve(to: CGPoint(x: 45.56, y: 125.49), controlPoint1: CGPoint(x: 6.14, y: 122.09), controlPoint2: CGPoint(x: 23.46, y: 126.16))
            path.addCurve(to: CGPoint(x: 76.35, y: 120.69), controlPoint1: CGPoint(x: 67.65, y: 124.82), controlPoint2: CGPoint(x: 74.86, y: 122.2))
            path.addCurve(to: CGPoint(x: 78.41, y: 74.62), controlPoint1: CGPoint(x: 77.85, y: 119.19), controlPoint2: CGPoint(x: 72.38, y: 88.05))
            path.close()
        } else {
            path.move(to: CGPoint(x: 78.41, y: 74.62))
            path.addCurve(to: CGPoint(x: 77.16, y: 42.91), controlPoint1: CGPoint(x: 84.45, y: 61.19), controlPoint2: CGPoint(x: 79.79, y: 47.3))
            path.addCurve(to: CGPoint(x: 68.33, y: 21.39), controlPoint1: CGPoint(x: 74.53, y: 38.51), controlPoint2: CGPoint(x: 69.25, y: 30.32))
            path.addCurve(to: CGPoint(x: 67.63, y: 1.43), controlPoint1: CGPoint(x: 67.4, y: 12.47), controlPoint2: CGPoint(x: 68.26, y: 2.42))
            path.addCurve(to: CGPoint(x: 62.07, y: 0.11), controlPoint1: CGPoint(x: 66.99, y: 0.44), controlPoint2: CGPoint(x: 63.64, y: -0.29))
            path.addCurve(to: CGPoint(x: 61.02, y: 8.85), controlPoint1: CGPoint(x: 61.56, y: 0.24), controlPoint2: CGPoint(x: 61.12, y: 5.46))
            path.addCurve(to: CGPoint(x: 42.18, y: 36.03), controlPoint1: CGPoint(x: 60.21, y: 35.67), controlPoint2: CGPoint(x: 59.34, y: 35.45))
            path.addCurve(to: CGPoint(x: 18.26, y: 12.48), controlPoint1: CGPoint(x: 25.03, y: 36.62), controlPoint2: CGPoint(x: 22.95, y: 37.84))
            path.addLine(to: CGPoint(x: 18.23, y: 12.35))
            path.addCurve(to: CGPoint(x: 15.74, y: 1.65), controlPoint1: CGPoint(x: 17.36, y: 7.63), controlPoint2: CGPoint(x: 16.27, y: 1.75))
            path.addCurve(to: CGPoint(x: 10.32, y: 3.56), controlPoint1: CGPoint(x: 14.38, y: 1.4), controlPoint2: CGPoint(x: 11.08, y: 2.48))
            path.addCurve(to: CGPoint(x: 12.07, y: 28.73), controlPoint1: CGPoint(x: 9.56, y: 4.64), controlPoint2: CGPoint(x: 13.3, y: 14.57))
            path.addCurve(to: CGPoint(x: 0, y: 57), controlPoint1: CGPoint(x: 10.84, y: 42.88), controlPoint2: CGPoint(x: 2, y: 52.5))
            path.addCurve(to: CGPoint(x: 5.58, y: 92.84), controlPoint1: CGPoint(x: 0.49, y: 62.1), controlPoint2: CGPoint(x: 5.08, y: 71.84))
            path.addCurve(to: CGPoint(x: 5.2, y: 120.69), controlPoint1: CGPoint(x: 6.08, y: 113.84), controlPoint2: CGPoint(x: 4.26, y: 119.3))
            path.addCurve(to: CGPoint(x: 45.56, y: 125.49), controlPoint1: CGPoint(x: 6.14, y: 122.09), controlPoint2: CGPoint(x: 23.46, y: 126.16))
            path.addCurve(to: CGPoint(x: 76.35, y: 120.69), controlPoint1: CGPoint(x: 67.65, y: 124.82), controlPoint2: CGPoint(x: 74.86, y: 122.2))
            path.addCurve(to: CGPoint(x: 78.41, y: 74.62), controlPoint1: CGPoint(x: 77.85, y: 119.19), controlPoint2: CGPoint(x: 72.38, y: 88.05))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 89.85, y: 129.16))
        
        let top = UIView()
        top.layer.addSublayer(pathLayer)
        return top
    }
    
}
