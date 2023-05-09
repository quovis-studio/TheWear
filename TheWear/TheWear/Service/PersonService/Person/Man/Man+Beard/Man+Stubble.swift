/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawStubble() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: 4.52, y: 0.5))
        path.addCurve(to: CGPoint(x: 9.41, y: 13.76), controlPoint1: CGPoint(x: 4.52, y: 0.5), controlPoint2: CGPoint(x: 5.35, y: 9.28))
        path.addCurve(to: CGPoint(x: 23.85, y: 15.13), controlPoint1: CGPoint(x: 13.48, y: 18.24), controlPoint2: CGPoint(x: 19.86, y: 17.22))
        path.addCurve(to: CGPoint(x: 36.3, y: 12.47), controlPoint1: CGPoint(x: 27.84, y: 13.04), controlPoint2: CGPoint(x: 31.17, y: 11.56))
        path.addCurve(to: CGPoint(x: 41.89, y: 11.77), controlPoint1: CGPoint(x: 41.13, y: 13.33), controlPoint2: CGPoint(x: 41.83, y: 11.94))
        path.addLine(to: CGPoint(x: 41.9, y: 11.76))
        path.addCurve(to: CGPoint(x: 41.9, y: 11.76), controlPoint1: CGPoint(x: 41.9, y: 11.76), controlPoint2: CGPoint(x: 41.9, y: 11.76))
        path.addCurve(to: CGPoint(x: 33.28, y: 35.89), controlPoint1: CGPoint(x: 41.7, y: 16.43), controlPoint2: CGPoint(x: 40.87, y: 30.33))
        path.addCurve(to: CGPoint(x: 2.89, y: 20.42), controlPoint1: CGPoint(x: 23.1, y: 43.36), controlPoint2: CGPoint(x: 5.27, y: 28.39))
        path.addCurve(to: CGPoint(x: 0.39, y: 4.61), controlPoint1: CGPoint(x: 1.11, y: 14.43), controlPoint2: CGPoint(x: 0.74, y: 9.35))
        path.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 0.27, y: 3.04), controlPoint2: CGPoint(x: 0.16, y: 1.51))
        path.close()
        path.move(to: CGPoint(x: 38.37, y: 18.59))
        path.addCurve(to: CGPoint(x: 25.8, y: 21.38), controlPoint1: CGPoint(x: 37.8, y: 15.37), controlPoint2: CGPoint(x: 25, y: 18.07))
        path.addCurve(to: CGPoint(x: 38.37, y: 18.59), controlPoint1: CGPoint(x: 26.6, y: 24.68), controlPoint2: CGPoint(x: 38.93, y: 21.8))
        path.close()
        let pathLayer = createLayer(path, beardColor, CGPoint(x: 121, y: 83))
        
        let stubbleView = UIView()
        stubbleView.layer.addSublayer(pathLayer)
        stubbleView.alpha = 0.12
        return stubbleView
    }
    
    final class func drawStubbleForBeanie() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: 4.52, y: 0.5))
        path.addCurve(to: CGPoint(x: 9.41, y: 13.76), controlPoint1: CGPoint(x: 4.52, y: 0.5), controlPoint2: CGPoint(x: 5.35, y: 9.28))
        path.addCurve(to: CGPoint(x: 23.85, y: 15.13), controlPoint1: CGPoint(x: 13.48, y: 18.24), controlPoint2: CGPoint(x: 19.86, y: 17.22))
        path.addCurve(to: CGPoint(x: 36.3, y: 12.47), controlPoint1: CGPoint(x: 27.84, y: 13.04), controlPoint2: CGPoint(x: 31.17, y: 11.56))
        path.addCurve(to: CGPoint(x: 41.89, y: 11.77), controlPoint1: CGPoint(x: 41.13, y: 13.33), controlPoint2: CGPoint(x: 41.83, y: 11.94))
        path.addLine(to: CGPoint(x: 41.9, y: 11.76))
        path.addCurve(to: CGPoint(x: 41.9, y: 11.76), controlPoint1: CGPoint(x: 41.9, y: 11.76), controlPoint2: CGPoint(x: 41.9, y: 11.76))
        path.addCurve(to: CGPoint(x: 33.28, y: 35.89), controlPoint1: CGPoint(x: 41.7, y: 16.43), controlPoint2: CGPoint(x: 40.87, y: 30.33))
        path.addCurve(to: CGPoint(x: 2.89, y: 20.42), controlPoint1: CGPoint(x: 23.1, y: 43.36), controlPoint2: CGPoint(x: 5.27, y: 28.39))
        path.addCurve(to: CGPoint(x: 0.39, y: 4.61), controlPoint1: CGPoint(x: 1.11, y: 14.43), controlPoint2: CGPoint(x: 0.74, y: 9.35))
        path.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 0.27, y: 3.04), controlPoint2: CGPoint(x: 0.16, y: 1.51))
        path.close()
        path.move(to: CGPoint(x: 38.37, y: 18.59))
        path.addCurve(to: CGPoint(x: 25.8, y: 21.38), controlPoint1: CGPoint(x: 37.8, y: 15.37), controlPoint2: CGPoint(x: 25, y: 18.07))
        path.addCurve(to: CGPoint(x: 38.37, y: 18.59), controlPoint1: CGPoint(x: 26.6, y: 24.68), controlPoint2: CGPoint(x: 38.93, y: 21.8))
        path.close()
        
        return createLayer(path, beardColor.withAlphaComponent(0.12), CGPoint(x: 121, y: 83))
    }
    
}
