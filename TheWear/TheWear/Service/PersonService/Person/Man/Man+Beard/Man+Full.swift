/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawFull() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: 4.52, y: 0))
        path.addCurve(to: CGPoint(x: 9.41, y: 13.76), controlPoint1: CGPoint(x: 4.52, y: 0.5), controlPoint2: CGPoint(x: 5.35, y: 9.28))
        path.addCurve(to: CGPoint(x: 23.3, y: 14.56), controlPoint1: CGPoint(x: 13.48, y: 18.24), controlPoint2: CGPoint(x: 19.31, y: 16.65))
        path.addCurve(to: CGPoint(x: 37.11, y: 12.14), controlPoint1: CGPoint(x: 27.29, y: 12.47), controlPoint2: CGPoint(x: 32.39, y: 11.37))
        path.addCurve(to: CGPoint(x: 41.9, y: 11.52), controlPoint1: CGPoint(x: 41.83, y: 12.91), controlPoint2: CGPoint(x: 41.9, y: 11.52))
        path.addCurve(to: CGPoint(x: 36.4, y: 37.97), controlPoint1: CGPoint(x: 44.86, y: 12.49), controlPoint2: CGPoint(x: 46.89, y: 35.57))
        path.addCurve(to: CGPoint(x: 2.66, y: 21.7), controlPoint1: CGPoint(x: 20.24, y: 41.66), controlPoint2: CGPoint(x: 4.81, y: 31.14))
        path.addCurve(to: CGPoint(x: 0.42, y: 5.12), controlPoint1: CGPoint(x: 1.1, y: 14.85), controlPoint2: CGPoint(x: 0.74, y: 9.74))
        path.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 0.29, y: 3.36), controlPoint2: CGPoint(x: 0.18, y: 1.68))
        path.close()
        let pathLayer = createLayer(path, beardColor, CGPoint(x: 120.99, y: 82.73))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.04, y: 4.23))
        path2.addCurve(to: CGPoint(x: 12.6, y: 1.44), controlPoint1: CGPoint(x: -0.76, y: 0.93), controlPoint2: CGPoint(x: 12.03, y: -1.77))
        path2.addCurve(to: CGPoint(x: 0.04, y: 4.23), controlPoint1: CGPoint(x: 13.17, y: 4.65), controlPoint2: CGPoint(x: 0.83, y: 7.54))
        path2.close()
        let path2Layer = createLayer(path2, skinColor, CGPoint(x: 146.76, y: 99.88))
        
        let fullView = UIView()
        fullView.layer.addSublayers(pathLayer, path2Layer)
        return fullView
    }
    
    final class func drawFullForBeanie() -> CAShapeLayer {
        let beard = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: 4.52, y: 0))
        path.addCurve(to: CGPoint(x: 9.41, y: 13.76), controlPoint1: CGPoint(x: 4.52, y: 0.5), controlPoint2: CGPoint(x: 5.35, y: 9.28))
        path.addCurve(to: CGPoint(x: 23.3, y: 14.56), controlPoint1: CGPoint(x: 13.48, y: 18.24), controlPoint2: CGPoint(x: 19.31, y: 16.65))
        path.addCurve(to: CGPoint(x: 37.11, y: 12.14), controlPoint1: CGPoint(x: 27.29, y: 12.47), controlPoint2: CGPoint(x: 32.39, y: 11.37))
        path.addCurve(to: CGPoint(x: 41.9, y: 11.52), controlPoint1: CGPoint(x: 41.83, y: 12.91), controlPoint2: CGPoint(x: 41.9, y: 11.52))
        path.addCurve(to: CGPoint(x: 36.4, y: 37.97), controlPoint1: CGPoint(x: 44.86, y: 12.49), controlPoint2: CGPoint(x: 46.89, y: 35.57))
        path.addCurve(to: CGPoint(x: 2.66, y: 21.7), controlPoint1: CGPoint(x: 20.24, y: 41.66), controlPoint2: CGPoint(x: 4.81, y: 31.14))
        path.addCurve(to: CGPoint(x: 0.42, y: 5.12), controlPoint1: CGPoint(x: 1.1, y: 14.85), controlPoint2: CGPoint(x: 0.74, y: 9.74))
        path.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 0.29, y: 3.36), controlPoint2: CGPoint(x: 0.18, y: 1.68))
        path.close()
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.04, y: 4.23))
        path2.addCurve(to: CGPoint(x: 12.6, y: 1.44), controlPoint1: CGPoint(x: -0.76, y: 0.93), controlPoint2: CGPoint(x: 12.03, y: -1.77))
        path2.addCurve(to: CGPoint(x: 0.04, y: 4.23), controlPoint1: CGPoint(x: 13.17, y: 4.65), controlPoint2: CGPoint(x: 0.83, y: 7.54))
        path2.close()
        
        beard.addSublayer(createLayer(path, beardColor, CGPoint(x: 120.99, y: 82.73)))
        beard.addSublayer(createLayer(path2, skinColor, CGPoint(x: 146.76, y: 99.88)))
        return beard
    }
    
}
