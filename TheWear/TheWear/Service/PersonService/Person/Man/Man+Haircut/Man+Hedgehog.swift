/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawHedgehog() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 18.35, y: 41.36))
        path.addLine(to: CGPoint(x: 22.85, y: 41.86))
        path.addCurve(to: CGPoint(x: 24.59, y: 28.88), controlPoint1: CGPoint(x: 21.85, y: 34.36), controlPoint2: CGPoint(x: 22.48, y: 31.17))
        path.addCurve(to: CGPoint(x: 25.66, y: 21.06), controlPoint1: CGPoint(x: 26.18, y: 27.14), controlPoint2: CGPoint(x: 22.67, y: 19.44))
        path.addCurve(to: CGPoint(x: 39.66, y: 20.93), controlPoint1: CGPoint(x: 28.66, y: 22.69), controlPoint2: CGPoint(x: 37.03, y: 22.05))
        path.addCurve(to: CGPoint(x: 47.23, y: 20.69), controlPoint1: CGPoint(x: 42.28, y: 19.81), controlPoint2: CGPoint(x: 45.2, y: 21.13))
        path.addCurve(to: CGPoint(x: 49.09, y: 18.43), controlPoint1: CGPoint(x: 49.35, y: 20.23), controlPoint2: CGPoint(x: 45.91, y: 17.96))
        path.addCurve(to: CGPoint(x: 55.85, y: 17.86), controlPoint1: CGPoint(x: 52.27, y: 18.9), controlPoint2: CGPoint(x: 54.74, y: 20.37))
        path.addCurve(to: CGPoint(x: 53.16, y: 6.77), controlPoint1: CGPoint(x: 57.85, y: 13.36), controlPoint2: CGPoint(x: 54.66, y: 4.27))
        path.addCurve(to: CGPoint(x: 46.9, y: 3.74), controlPoint1: CGPoint(x: 52.32, y: 8.17), controlPoint2: CGPoint(x: 46.9, y: 1.62))
        path.addCurve(to: CGPoint(x: 37.74, y: 1.2), controlPoint1: CGPoint(x: 46.9, y: 5.1), controlPoint2: CGPoint(x: 42.12, y: 1.25))
        path.addCurve(to: CGPoint(x: 29.99, y: 0), controlPoint1: CGPoint(x: 33.37, y: 1.14), controlPoint2: CGPoint(x: 32.88, y: 0))
        path.addCurve(to: CGPoint(x: 3.71, y: 10.38), controlPoint1: CGPoint(x: 21.17, y: 0), controlPoint2: CGPoint(x: 11.21, y: 1.38))
        path.addCurve(to: CGPoint(x: 7.85, y: 48.86), controlPoint1: CGPoint(x: -3.79, y: 19.38), controlPoint2: CGPoint(x: 1.35, y: 39.36))
        path.addLine(to: CGPoint(x: 10.35, y: 48.86))
        path.addCurve(to: CGPoint(x: 11.35, y: 31.36), controlPoint1: CGPoint(x: 4.85, y: 37.86), controlPoint2: CGPoint(x: 5.85, y: 31.86))
        path.addCurve(to: CGPoint(x: 18.35, y: 41.36), controlPoint1: CGPoint(x: 16.85, y: 30.86), controlPoint2: CGPoint(x: 18.35, y: 41.36))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 102.67, y: 41.44))
        
        let hedgehogView = UIView()
        hedgehogView.layer.addSublayers(headLayer, pathLayer)
        return hedgehogView
    }
    
}
