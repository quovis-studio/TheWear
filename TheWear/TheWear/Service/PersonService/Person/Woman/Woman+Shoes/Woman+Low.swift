/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawLow(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.85, y: 13.99))
        path.addCurve(to: CGPoint(x: 3.09, y: 0.1), controlPoint1: CGPoint(x: -1.13, y: 9.56), controlPoint2: CGPoint(x: 0.66, y: -1.13))
        path.addCurve(to: CGPoint(x: 23.33, y: 6.73), controlPoint1: CGPoint(x: 5.53, y: 1.32), controlPoint2: CGPoint(x: 9.95, y: 7.02))
        path.addCurve(to: CGPoint(x: 41.28, y: 2.11), controlPoint1: CGPoint(x: 36.71, y: 6.44), controlPoint2: CGPoint(x: 38.01, y: 1.19))
        path.addCurve(to: CGPoint(x: 58.3, y: 7.54), controlPoint1: CGPoint(x: 54.58, y: 5.83), controlPoint2: CGPoint(x: 56.54, y: 3.42))
        path.addCurve(to: CGPoint(x: 49.66, y: 14.36), controlPoint1: CGPoint(x: 59.17, y: 9.59), controlPoint2: CGPoint(x: 56.57, y: 13.38))
        path.addCurve(to: CGPoint(x: 22.65, y: 15.33), controlPoint1: CGPoint(x: 42.75, y: 15.33), controlPoint2: CGPoint(x: 34.95, y: 15.36))
        path.addCurve(to: CGPoint(x: 0.85, y: 13.99), controlPoint1: CGPoint(x: 11.26, y: 15.3), controlPoint2: CGPoint(x: 1.31, y: 15.03))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 83.84, y: 579.34))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 1.14, y: 13.72))
        path2.addCurve(to: CGPoint(x: 2.32, y: 0.1), controlPoint1: CGPoint(x: -0.84, y: 9.3), controlPoint2: CGPoint(x: -0.11, y: -1.12))
        path2.addCurve(to: CGPoint(x: 23.62, y: 6.46), controlPoint1: CGPoint(x: 4.76, y: 1.32), controlPoint2: CGPoint(x: 10.24, y: 6.75))
        path2.addCurve(to: CGPoint(x: 41.57, y: 1.84), controlPoint1: CGPoint(x: 37, y: 6.17), controlPoint2: CGPoint(x: 38.3, y: 0.92))
        path2.addCurve(to: CGPoint(x: 58.59, y: 7.28), controlPoint1: CGPoint(x: 54.87, y: 5.56), controlPoint2: CGPoint(x: 56.83, y: 3.15))
        path2.addCurve(to: CGPoint(x: 49.95, y: 14.09), controlPoint1: CGPoint(x: 59.46, y: 9.33), controlPoint2: CGPoint(x: 56.86, y: 13.12))
        path2.addCurve(to: CGPoint(x: 22.94, y: 15.06), controlPoint1: CGPoint(x: 43.04, y: 15.06), controlPoint2: CGPoint(x: 35.24, y: 15.09))
        path2.addCurve(to: CGPoint(x: 1.14, y: 13.72), controlPoint1: CGPoint(x: 11.55, y: 15.03), controlPoint2: CGPoint(x: 1.6, y: 14.76))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 173.35, y: 579.61))
        
        let shoes = UIView()
        shoes.layer.addSublayers(pathLayer, path2Layer)
        return shoes
    }
    
}
