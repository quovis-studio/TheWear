/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSkipper() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 4.52, y: 0.5))
        path.addLine(to: CGPoint.zero)
        path.addCurve(to: CGPoint(x: 4.46, y: 21.13), controlPoint1: CGPoint(x: 0.64, y: 6.1), controlPoint2: CGPoint(x: 1.34, y: 11.91))
        path.addCurve(to: CGPoint(x: 35.23, y: 34.79), controlPoint1: CGPoint(x: 7.58, y: 30.36), controlPoint2: CGPoint(x: 24.32, y: 45.24))
        path.addCurve(to: CGPoint(x: 34.4, y: 32.82), controlPoint1: CGPoint(x: 37.84, y: 32.29), controlPoint2: CGPoint(x: 38.61, y: 30.27))
        path.addCurve(to: CGPoint(x: 20.87, y: 33.36), controlPoint1: CGPoint(x: 30.19, y: 35.37), controlPoint2: CGPoint(x: 26.15, y: 35.37))
        path.addCurve(to: CGPoint(x: 7.38, y: 17.85), controlPoint1: CGPoint(x: 15.6, y: 31.34), controlPoint2: CGPoint(x: 9.49, y: 23.99))
        path.addCurve(to: CGPoint(x: 4.52, y: 0.5), controlPoint1: CGPoint(x: 5.27, y: 11.72), controlPoint2: CGPoint(x: 4.52, y: 0.5))
        path.close()
        let pathLayer = createLayer(path, beardColor, CGPoint(x: 120.99, y: 82.73))
        
        let skipperView = UIView()
        skipperView.layer.addSublayer(pathLayer)
        return skipperView
    }
    
    final class func drawSkipperForBeanie() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 4.52, y: 0.5))
        path.addLine(to: CGPoint.zero)
        path.addCurve(to: CGPoint(x: 4.46, y: 21.13), controlPoint1: CGPoint(x: 0.64, y: 6.1), controlPoint2: CGPoint(x: 1.34, y: 11.91))
        path.addCurve(to: CGPoint(x: 35.23, y: 34.79), controlPoint1: CGPoint(x: 7.58, y: 30.36), controlPoint2: CGPoint(x: 24.32, y: 45.24))
        path.addCurve(to: CGPoint(x: 34.4, y: 32.82), controlPoint1: CGPoint(x: 37.84, y: 32.29), controlPoint2: CGPoint(x: 38.61, y: 30.27))
        path.addCurve(to: CGPoint(x: 20.87, y: 33.36), controlPoint1: CGPoint(x: 30.19, y: 35.37), controlPoint2: CGPoint(x: 26.15, y: 35.37))
        path.addCurve(to: CGPoint(x: 7.38, y: 17.85), controlPoint1: CGPoint(x: 15.6, y: 31.34), controlPoint2: CGPoint(x: 9.49, y: 23.99))
        path.addCurve(to: CGPoint(x: 4.52, y: 0.5), controlPoint1: CGPoint(x: 5.27, y: 11.72), controlPoint2: CGPoint(x: 4.52, y: 0.5))
        path.close()
        
        return createLayer(path, beardColor, CGPoint(x: 120.99, y: 82.73))
    }
    
}
