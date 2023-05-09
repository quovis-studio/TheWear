/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawHalfbox() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 17.63, y: 45.14))
        path.addLine(to: CGPoint(x: 22.13, y: 45.64))
        path.addCurve(to: CGPoint(x: 25.02, y: 33.17), controlPoint1: CGPoint(x: 21.13, y: 38.14), controlPoint2: CGPoint(x: 22.52, y: 35.77))
        path.addCurve(to: CGPoint(x: 25.47, y: 25.11), controlPoint1: CGPoint(x: 26.48, y: 31.66), controlPoint2: CGPoint(x: 23.89, y: 26.69))
        path.addCurve(to: CGPoint(x: 45.63, y: 25.64), controlPoint1: CGPoint(x: 27.97, y: 22.61), controlPoint2: CGPoint(x: 39.17, y: 26.4))
        path.addCurve(to: CGPoint(x: 57.13, y: 18.14), controlPoint1: CGPoint(x: 54.13, y: 24.64), controlPoint2: CGPoint(x: 55.63, y: 21.64))
        path.addCurve(to: CGPoint(x: 55.63, y: 11.14), controlPoint1: CGPoint(x: 58.41, y: 15.14), controlPoint2: CGPoint(x: 57.69, y: 8.04))
        path.addCurve(to: CGPoint(x: 50.63, y: 6.64), controlPoint1: CGPoint(x: 54.83, y: 12.33), controlPoint2: CGPoint(x: 53.13, y: 5.14))
        path.addCurve(to: CGPoint(x: 45.13, y: 2.64), controlPoint1: CGPoint(x: 46.32, y: 9.22), controlPoint2: CGPoint(x: 47.13, y: 1.14))
        path.addCurve(to: CGPoint(x: 37.13, y: 0.64), controlPoint1: CGPoint(x: 43.48, y: 3.88), controlPoint2: CGPoint(x: 37.13, y: -1.86))
        path.addCurve(to: CGPoint(x: 32.63, y: 1.14), controlPoint1: CGPoint(x: 37.13, y: 2.87), controlPoint2: CGPoint(x: 35.18, y: 1.14))
        path.addCurve(to: CGPoint(x: 26.13, y: 1.64), controlPoint1: CGPoint(x: 30.63, y: 1.14), controlPoint2: CGPoint(x: 27.95, y: -0.79))
        path.addCurve(to: CGPoint(x: 17.13, y: 3.14), controlPoint1: CGPoint(x: 24.63, y: 3.64), controlPoint2: CGPoint(x: 22.63, y: -0.36))
        path.addCurve(to: CGPoint(x: 3.33, y: 15.65), controlPoint1: CGPoint(x: 11.84, y: 6.5), controlPoint2: CGPoint(x: 11.33, y: 4.15))
        path.addCurve(to: CGPoint(x: 7.13, y: 52.64), controlPoint1: CGPoint(x: -3.07, y: 24.85), controlPoint2: CGPoint(x: 0.63, y: 43.14))
        path.addLine(to: CGPoint(x: 9.63, y: 52.64))
        path.addCurve(to: CGPoint(x: 10.63, y: 35.14), controlPoint1: CGPoint(x: 4.13, y: 41.64), controlPoint2: CGPoint(x: 5.13, y: 35.64))
        path.addCurve(to: CGPoint(x: 17.63, y: 45.14), controlPoint1: CGPoint(x: 16.13, y: 34.64), controlPoint2: CGPoint(x: 17.63, y: 45.14))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 103.38, y: 37.62))
        
        let halfboxView = UIView()
        halfboxView.layer.addSublayers(headLayer, pathLayer)
        return halfboxView
    }
    
}
