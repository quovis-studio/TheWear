/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawPoirot() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 12.64, y: 6.86))
        path.addCurve(to: CGPoint(x: 21.95, y: 0), controlPoint1: CGPoint(x: 16.73, y: 8.3), controlPoint2: CGPoint(x: 22.3, y: 6.39))
        path.addCurve(to: CGPoint(x: 11.84, y: 2.8), controlPoint1: CGPoint(x: 18.62, y: 3.21), controlPoint2: CGPoint(x: 16.65, y: -1.78))
        path.addCurve(to: CGPoint(x: 0, y: 3.93), controlPoint1: CGPoint(x: 6.74, y: -0.53), controlPoint2: CGPoint(x: 5.28, y: 5.84))
        path.addCurve(to: CGPoint(x: 12.64, y: 6.86), controlPoint1: CGPoint(x: 0.64, y: 10.67), controlPoint2: CGPoint(x: 9.92, y: 9.57))
        path.close()
        let pathLayer = createLayer(path, beardColor, CGPoint(x: 139.76, y: 93.99))
        
        let poirotView = UIView()
        poirotView.layer.addSublayer(pathLayer)
        return poirotView
    }
    
    final class func drawPoirotForBeanie() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 12.64, y: 6.86))
        path.addCurve(to: CGPoint(x: 21.95, y: 0), controlPoint1: CGPoint(x: 16.73, y: 8.3), controlPoint2: CGPoint(x: 22.3, y: 6.39))
        path.addCurve(to: CGPoint(x: 11.84, y: 2.8), controlPoint1: CGPoint(x: 18.62, y: 3.21), controlPoint2: CGPoint(x: 16.65, y: -1.78))
        path.addCurve(to: CGPoint(x: 0, y: 3.93), controlPoint1: CGPoint(x: 6.74, y: -0.53), controlPoint2: CGPoint(x: 5.28, y: 5.84))
        path.addCurve(to: CGPoint(x: 12.64, y: 6.86), controlPoint1: CGPoint(x: 0.64, y: 10.67), controlPoint2: CGPoint(x: 9.92, y: 9.57))
        path.close()
        
        return createLayer(path, beardColor, CGPoint(x: 139.76, y: 93.99))
    }
    
}
