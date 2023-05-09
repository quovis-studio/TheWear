/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawGym(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.45, y: 4.46))
        path.addCurve(to: CGPoint(x: 2.74, y: 0), controlPoint1: CGPoint(x: 1.45, y: 3.89), controlPoint2: CGPoint(x: -0.12, y: -0.1))
        path.addCurve(to: CGPoint(x: 10.96, y: 4.67), controlPoint1: CGPoint(x: 4.31, y: 0.06), controlPoint2: CGPoint(x: 6.35, y: 4.29))
        path.addCurve(to: CGPoint(x: 19.25, y: 0.5), controlPoint1: CGPoint(x: 15.57, y: 5.04), controlPoint2: CGPoint(x: 15.91, y: 0.81))
        path.addCurve(to: CGPoint(x: 53.66, y: 10.43), controlPoint1: CGPoint(x: 24.58, y: 0), controlPoint2: CGPoint(x: 28.5, y: 7.27))
        path.addCurve(to: CGPoint(x: 53.66, y: 23.32), controlPoint1: CGPoint(x: 58.66, y: 10.81), controlPoint2: CGPoint(x: 58.2, y: 23.32))
        path.addCurve(to: CGPoint(x: 0.18, y: 23.32), controlPoint1: CGPoint(x: 49.12, y: 23.32), controlPoint2: CGPoint(x: 0.98, y: 23.99))
        path.addCurve(to: CGPoint(x: 1.45, y: 4.46), controlPoint1: CGPoint(x: -0.62, y: 22.65), controlPoint2: CGPoint(x: 1.45, y: 7.08))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 82.39, y: 572.13))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.77, y: 4.41))
        path2.addCurve(to: CGPoint(x: 1.37, y: 0.02), controlPoint1: CGPoint(x: 0.77, y: 3.84), controlPoint2: CGPoint(x: -1.31, y: 0.02))
        path2.addCurve(to: CGPoint(x: 10.1, y: 4.78), controlPoint1: CGPoint(x: 3.46, y: 0.02), controlPoint2: CGPoint(x: 5.3, y: 4.42))
        path2.addCurve(to: CGPoint(x: 18.63, y: 0.02), controlPoint1: CGPoint(x: 14.89, y: 5.13), controlPoint2: CGPoint(x: 15.29, y: 0.34))
        path2.addCurve(to: CGPoint(x: 54.77, y: 10.02), controlPoint1: CGPoint(x: 23.95, y: -0.47), controlPoint2: CGPoint(x: 29.61, y: 6.87))
        path2.addCurve(to: CGPoint(x: 54.77, y: 23.21), controlPoint1: CGPoint(x: 59.77, y: 10.4), controlPoint2: CGPoint(x: 59.31, y: 23.21))
        path2.addCurve(to: CGPoint(x: 1.72, y: 23.06), controlPoint1: CGPoint(x: 50.23, y: 23.21), controlPoint2: CGPoint(x: 2.51, y: 23.73))
        path2.addCurve(to: CGPoint(x: 0.77, y: 4.41), controlPoint1: CGPoint(x: 0.92, y: 22.38), controlPoint2: CGPoint(x: 0.77, y: 7.03))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 171.72, y: 572.52))
        
        let shoes = UIView()
        shoes.layer.addSublayers(pathLayer, path2Layer)
        return shoes
    }
    
}
