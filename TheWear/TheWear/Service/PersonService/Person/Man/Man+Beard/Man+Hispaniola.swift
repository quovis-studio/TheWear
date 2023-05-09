/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawHispaniola() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3.68, y: 6.74))
        path.addCurve(to: CGPoint(x: 15.72, y: 3.88), controlPoint1: CGPoint(x: 9.16, y: 8.18), controlPoint2: CGPoint(x: 13.71, y: 5.62))
        path.addCurve(to: CGPoint(x: 14.89, y: 1.02), controlPoint1: CGPoint(x: 18.76, y: 1.25), controlPoint2: CGPoint(x: 19.45, y: -1.56))
        path.addCurve(to: CGPoint(x: 1.52, y: 2.57), controlPoint1: CGPoint(x: 10.33, y: 3.6), controlPoint2: CGPoint(x: 2.98, y: 2.72))
        path.addCurve(to: CGPoint(x: 3.68, y: 6.74), controlPoint1: CGPoint(x: 0.06, y: 2.42), controlPoint2: CGPoint(x: -1.79, y: 5.3))
        path.close()
        let pathLayer = createLayer(path, beardColor, CGPoint(x: 140.4, y: 114.27))
        
        let hispaniolaView = UIView()
        hispaniolaView.layer.addSublayer(pathLayer)
        return hispaniolaView
    }
    
    final class func drawHispaniolaForBeanie() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3.68, y: 6.74))
        path.addCurve(to: CGPoint(x: 15.72, y: 3.88), controlPoint1: CGPoint(x: 9.16, y: 8.18), controlPoint2: CGPoint(x: 13.71, y: 5.62))
        path.addCurve(to: CGPoint(x: 14.89, y: 1.02), controlPoint1: CGPoint(x: 18.76, y: 1.25), controlPoint2: CGPoint(x: 19.45, y: -1.56))
        path.addCurve(to: CGPoint(x: 1.52, y: 2.57), controlPoint1: CGPoint(x: 10.33, y: 3.6), controlPoint2: CGPoint(x: 2.98, y: 2.72))
        path.addCurve(to: CGPoint(x: 3.68, y: 6.74), controlPoint1: CGPoint(x: 0.06, y: 2.42), controlPoint2: CGPoint(x: -1.79, y: 5.3))
        path.close()
        
        return createLayer(path, beardColor, CGPoint(x: 140.4, y: 114.27))
    }
    
}
