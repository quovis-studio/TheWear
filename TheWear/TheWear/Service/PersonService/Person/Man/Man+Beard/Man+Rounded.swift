/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawRounded() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 18.11, y: 3.18))
        path.addCurve(to: CGPoint(x: 18.31, y: 3.39), controlPoint1: CGPoint(x: 18.19, y: 3.26), controlPoint2: CGPoint(x: 18.25, y: 3.33))
        path.addCurve(to: CGPoint(x: 19.27, y: 9.97), controlPoint1: CGPoint(x: 19.2, y: 4.29), controlPoint2: CGPoint(x: 19.52, y: 7.51))
        path.addCurve(to: CGPoint(x: 8.98, y: 24.69), controlPoint1: CGPoint(x: 19.02, y: 12.43), controlPoint2: CGPoint(x: 17.54, y: 22.41))
        path.addCurve(to: CGPoint(x: 0.02, y: 11.12), controlPoint1: CGPoint(x: 1.81, y: 26.61), controlPoint2: CGPoint(x: -0.25, y: 16.09))
        path.addCurve(to: CGPoint(x: 1.98, y: 3.88), controlPoint1: CGPoint(x: 0.3, y: 6.16), controlPoint2: CGPoint(x: 0.77, y: 4.84))
        path.addCurve(to: CGPoint(x: 11, y: 0.02), controlPoint1: CGPoint(x: 2.77, y: 3.25), controlPoint2: CGPoint(x: 6.91, y: 0.33))
        path.addCurve(to: CGPoint(x: 18.11, y: 3.18), controlPoint1: CGPoint(x: 14.82, y: -0.26), controlPoint2: CGPoint(x: 17.11, y: 2.13))
        path.close()
        path.move(to: CGPoint(x: 17.37, y: 5.83))
        path.addCurve(to: CGPoint(x: 3.16, y: 6.8), controlPoint1: CGPoint(x: 16.91, y: 2), controlPoint2: CGPoint(x: 4.05, y: 3.09))
        path.addCurve(to: CGPoint(x: 5.78, y: 20.42), controlPoint1: CGPoint(x: 2.28, y: 10.51), controlPoint2: CGPoint(x: 1.91, y: 17.64))
        path.addCurve(to: CGPoint(x: 8.35, y: 15.21), controlPoint1: CGPoint(x: 8.15, y: 22.13), controlPoint2: CGPoint(x: 8.49, y: 15.95))
        path.addLine(to: CGPoint(x: 8.35, y: 15.21))
        path.addLine(to: CGPoint(x: 11.71, y: 15.21))
        path.addCurve(to: CGPoint(x: 11.69, y: 16.88), controlPoint1: CGPoint(x: 11.81, y: 15.45), controlPoint2: CGPoint(x: 11.75, y: 16.12))
        path.addCurve(to: CGPoint(x: 11.64, y: 17.45), controlPoint1: CGPoint(x: 11.67, y: 17.07), controlPoint2: CGPoint(x: 11.66, y: 17.26))
        path.addLine(to: CGPoint(x: 11.62, y: 17.74))
        path.addCurve(to: CGPoint(x: 12.81, y: 19.74), controlPoint1: CGPoint(x: 11.52, y: 19.22), controlPoint2: CGPoint(x: 11.59, y: 20.61))
        path.addCurve(to: CGPoint(x: 17.37, y: 5.83), controlPoint1: CGPoint(x: 17.37, y: 16.48), controlPoint2: CGPoint(x: 17.83, y: 9.66))
        path.close()
        let pathLayer = createLayer(path, beardColor, CGPoint(x: 141.65, y: 96.17))
        
        let roundedView = UIView()
        roundedView.layer.addSublayer(pathLayer)
        return roundedView
    }
    
    final class func drawRoundedForBeanie() -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 18.11, y: 3.18))
        path.addCurve(to: CGPoint(x: 18.31, y: 3.39), controlPoint1: CGPoint(x: 18.19, y: 3.26), controlPoint2: CGPoint(x: 18.25, y: 3.33))
        path.addCurve(to: CGPoint(x: 19.27, y: 9.97), controlPoint1: CGPoint(x: 19.2, y: 4.29), controlPoint2: CGPoint(x: 19.52, y: 7.51))
        path.addCurve(to: CGPoint(x: 8.98, y: 24.69), controlPoint1: CGPoint(x: 19.02, y: 12.43), controlPoint2: CGPoint(x: 17.54, y: 22.41))
        path.addCurve(to: CGPoint(x: 0.02, y: 11.12), controlPoint1: CGPoint(x: 1.81, y: 26.61), controlPoint2: CGPoint(x: -0.25, y: 16.09))
        path.addCurve(to: CGPoint(x: 1.98, y: 3.88), controlPoint1: CGPoint(x: 0.3, y: 6.16), controlPoint2: CGPoint(x: 0.77, y: 4.84))
        path.addCurve(to: CGPoint(x: 11, y: 0.02), controlPoint1: CGPoint(x: 2.77, y: 3.25), controlPoint2: CGPoint(x: 6.91, y: 0.33))
        path.addCurve(to: CGPoint(x: 18.11, y: 3.18), controlPoint1: CGPoint(x: 14.82, y: -0.26), controlPoint2: CGPoint(x: 17.11, y: 2.13))
        path.close()
        path.move(to: CGPoint(x: 17.37, y: 5.83))
        path.addCurve(to: CGPoint(x: 3.16, y: 6.8), controlPoint1: CGPoint(x: 16.91, y: 2), controlPoint2: CGPoint(x: 4.05, y: 3.09))
        path.addCurve(to: CGPoint(x: 5.78, y: 20.42), controlPoint1: CGPoint(x: 2.28, y: 10.51), controlPoint2: CGPoint(x: 1.91, y: 17.64))
        path.addCurve(to: CGPoint(x: 8.35, y: 15.21), controlPoint1: CGPoint(x: 8.15, y: 22.13), controlPoint2: CGPoint(x: 8.49, y: 15.95))
        path.addLine(to: CGPoint(x: 8.35, y: 15.21))
        path.addLine(to: CGPoint(x: 11.71, y: 15.21))
        path.addCurve(to: CGPoint(x: 11.69, y: 16.88), controlPoint1: CGPoint(x: 11.81, y: 15.45), controlPoint2: CGPoint(x: 11.75, y: 16.12))
        path.addCurve(to: CGPoint(x: 11.64, y: 17.45), controlPoint1: CGPoint(x: 11.67, y: 17.07), controlPoint2: CGPoint(x: 11.66, y: 17.26))
        path.addLine(to: CGPoint(x: 11.62, y: 17.74))
        path.addCurve(to: CGPoint(x: 12.81, y: 19.74), controlPoint1: CGPoint(x: 11.52, y: 19.22), controlPoint2: CGPoint(x: 11.59, y: 20.61))
        path.addCurve(to: CGPoint(x: 17.37, y: 5.83), controlPoint1: CGPoint(x: 17.37, y: 16.48), controlPoint2: CGPoint(x: 17.83, y: 9.66))
        path.close()
        
        return createLayer(path, beardColor, CGPoint(x: 141.65, y: 96.17))
    }
    
}
