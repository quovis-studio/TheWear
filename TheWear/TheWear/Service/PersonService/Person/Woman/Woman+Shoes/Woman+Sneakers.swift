/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSneakers(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3.72, y: 0))
        path.addCurve(to: CGPoint(x: 11.12, y: 8.07), controlPoint1: CGPoint(x: 4.95, y: 0.04), controlPoint2: CGPoint(x: 4.94, y: 7.78))
        path.addCurve(to: CGPoint(x: 18.5, y: 0.77), controlPoint1: CGPoint(x: 16.93, y: 8.34), controlPoint2: CGPoint(x: 15.59, y: 2.24))
        path.addCurve(to: CGPoint(x: 31.63, y: 9.25), controlPoint1: CGPoint(x: 21.83, y: -0.91), controlPoint2: CGPoint(x: 22.16, y: 5.46))
        path.addCurve(to: CGPoint(x: 48.61, y: 15.13), controlPoint1: CGPoint(x: 42.4, y: 13.18), controlPoint2: CGPoint(x: 43.75, y: 13.92))
        path.addCurve(to: CGPoint(x: 56.49, y: 22.97), controlPoint1: CGPoint(x: 53.47, y: 16.34), controlPoint2: CGPoint(x: 58.42, y: 16.97))
        path.addCurve(to: CGPoint(x: 48.61, y: 28.75), controlPoint1: CGPoint(x: 55.79, y: 25.16), controlPoint2: CGPoint(x: 53.04, y: 28.75))
        path.addCurve(to: CGPoint(x: 5.29, y: 28.75), controlPoint1: CGPoint(x: 35.01, y: 28.75), controlPoint2: CGPoint(x: 15.09, y: 28.91))
        path.addCurve(to: CGPoint(x: 1.21, y: 27.9), controlPoint1: CGPoint(x: 2.63, y: 28.7), controlPoint2: CGPoint(x: 1.34, y: 28.01))
        path.addCurve(to: CGPoint(x: 0.06, y: 23.45), controlPoint1: CGPoint(x: 1.08, y: 27.79), controlPoint2: CGPoint(x: -0.3, y: 26.99))
        path.addCurve(to: CGPoint(x: 0.95, y: 18.18), controlPoint1: CGPoint(x: 0.18, y: 22.28), controlPoint2: CGPoint(x: 0.95, y: 18.18))
        path.addCurve(to: CGPoint(x: 0.47, y: 9.56), controlPoint1: CGPoint(x: 0.95, y: 18.18), controlPoint2: CGPoint(x: 0.52, y: 11.13))
        path.addCurve(to: CGPoint(x: 3.72, y: 0), controlPoint1: CGPoint(x: 0.33, y: 4.78), controlPoint2: CGPoint(x: 1.93, y: -0.06))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 83.11, y: 567.59))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 1.75, y: 0.31))
        path2.addCurve(to: CGPoint(x: 9.49, y: 7.81), controlPoint1: CGPoint(x: 2.98, y: 0.36), controlPoint2: CGPoint(x: 3.31, y: 7.52))
        path2.addCurve(to: CGPoint(x: 16.09, y: 0.31), controlPoint1: CGPoint(x: 15.1, y: 8.07), controlPoint2: CGPoint(x: 13.79, y: 1.62))
        path2.addCurve(to: CGPoint(x: 32.18, y: 8.99), controlPoint1: CGPoint(x: 19.33, y: -1.53), controlPoint2: CGPoint(x: 22.71, y: 5.2))
        path2.addCurve(to: CGPoint(x: 49.2, y: 14.71), controlPoint1: CGPoint(x: 42.95, y: 12.91), controlPoint2: CGPoint(x: 44.34, y: 13.5))
        path2.addCurve(to: CGPoint(x: 56.87, y: 22.78), controlPoint1: CGPoint(x: 54.06, y: 15.92), controlPoint2: CGPoint(x: 58.8, y: 16.78))
        path2.addCurve(to: CGPoint(x: 49.2, y: 28.48), controlPoint1: CGPoint(x: 56.17, y: 24.96), controlPoint2: CGPoint(x: 53.63, y: 28.48))
        path2.addCurve(to: CGPoint(x: 5.84, y: 28.48), controlPoint1: CGPoint(x: 35.6, y: 28.48), controlPoint2: CGPoint(x: 15.64, y: 28.65))
        path2.addCurve(to: CGPoint(x: 1.76, y: 27.64), controlPoint1: CGPoint(x: 3.18, y: 28.44), controlPoint2: CGPoint(x: 1.89, y: 27.74))
        path2.addCurve(to: CGPoint(x: 0.61, y: 23.19), controlPoint1: CGPoint(x: 1.63, y: 27.52), controlPoint2: CGPoint(x: 0.26, y: 26.72))
        path2.addCurve(to: CGPoint(x: 1.75, y: 17.95), controlPoint1: CGPoint(x: 0.73, y: 22.01), controlPoint2: CGPoint(x: 1.75, y: 17.95))
        path2.addCurve(to: CGPoint(x: 0.05, y: 8.95), controlPoint1: CGPoint(x: 1.75, y: 17.95), controlPoint2: CGPoint(x: 0.1, y: 10.52))
        path2.addCurve(to: CGPoint(x: 1.75, y: 0.31), controlPoint1: CGPoint(x: -0.09, y: 4.17), controlPoint2: CGPoint(x: -0.05, y: 0.25))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 172.17, y: 567.86))
        
        let shoes = UIView()
        shoes.layer.addSublayers(pathLayer, path2Layer)
        return shoes
    }
    
}
