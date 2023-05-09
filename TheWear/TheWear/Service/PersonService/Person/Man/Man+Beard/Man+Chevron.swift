/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawChevron() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 10.93, y: 5.1))
        path.addCurve(to: CGPoint(x: 21.61, y: 4.61), controlPoint1: CGPoint(x: 16.01, y: 4.06), controlPoint2: CGPoint(x: 22.79, y: 6.62))
        path.addCurve(to: CGPoint(x: 13.53, y: 0.09), controlPoint1: CGPoint(x: 20.43, y: 2.59), controlPoint2: CGPoint(x: 16.17, y: 0.52))
        path.addCurve(to: CGPoint(x: 9.82, y: 1.12), controlPoint1: CGPoint(x: 10.88, y: -0.35), controlPoint2: CGPoint(x: 11.65, y: 0.98))
        path.addCurve(to: CGPoint(x: 5.06, y: 1.85), controlPoint1: CGPoint(x: 7.99, y: 1.26), controlPoint2: CGPoint(x: 7.63, y: 0.01))
        path.addCurve(to: CGPoint(x: 0.08, y: 8.1), controlPoint1: CGPoint(x: 2.5, y: 3.69), controlPoint2: CGPoint(x: 0.95, y: 6.04))
        path.addCurve(to: CGPoint(x: 10.93, y: 5.1), controlPoint1: CGPoint(x: -0.79, y: 10.16), controlPoint2: CGPoint(x: 5.85, y: 6.14))
        path.close()
        let pathLayer = createLayer(path, beardColor, CGPoint(x: 141.58, y: 94.69))
        
        let chevronView = UIView()
        chevronView.layer.addSublayer(pathLayer)
        return chevronView
    }
    
    final class func drawChevronForBeanie() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 10.93, y: 5.1))
        path.addCurve(to: CGPoint(x: 21.61, y: 4.61), controlPoint1: CGPoint(x: 16.01, y: 4.06), controlPoint2: CGPoint(x: 22.79, y: 6.62))
        path.addCurve(to: CGPoint(x: 13.53, y: 0.09), controlPoint1: CGPoint(x: 20.43, y: 2.59), controlPoint2: CGPoint(x: 16.17, y: 0.52))
        path.addCurve(to: CGPoint(x: 9.82, y: 1.12), controlPoint1: CGPoint(x: 10.88, y: -0.35), controlPoint2: CGPoint(x: 11.65, y: 0.98))
        path.addCurve(to: CGPoint(x: 5.06, y: 1.85), controlPoint1: CGPoint(x: 7.99, y: 1.26), controlPoint2: CGPoint(x: 7.63, y: 0.01))
        path.addCurve(to: CGPoint(x: 0.08, y: 8.1), controlPoint1: CGPoint(x: 2.5, y: 3.69), controlPoint2: CGPoint(x: 0.95, y: 6.04))
        path.addCurve(to: CGPoint(x: 10.93, y: 5.1), controlPoint1: CGPoint(x: -0.79, y: 10.16), controlPoint2: CGPoint(x: 5.85, y: 6.14))
        path.close()
        
        return createLayer(path, beardColor, CGPoint(x: 141.58, y: 94.69))
    }
    
}
