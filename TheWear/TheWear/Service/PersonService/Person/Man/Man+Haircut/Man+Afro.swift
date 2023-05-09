/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawAfro() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 27.59, y: 54.91))
        path.addLine(to: CGPoint(x: 32.09, y: 55.41))
        path.addCurve(to: CGPoint(x: 34.01, y: 43.69), controlPoint1: CGPoint(x: 31.09, y: 47.91), controlPoint2: CGPoint(x: 31.51, y: 46.28))
        path.addCurve(to: CGPoint(x: 34.01, y: 36.87), controlPoint1: CGPoint(x: 35.26, y: 42.4), controlPoint2: CGPoint(x: 32.43, y: 38.45))
        path.addCurve(to: CGPoint(x: 65.31, y: 34.89), controlPoint1: CGPoint(x: 36.51, y: 34.37), controlPoint2: CGPoint(x: 56.09, y: 39.75))
        path.addCurve(to: CGPoint(x: 71.5, y: 23.84), controlPoint1: CGPoint(x: 69.31, y: 32.78), controlPoint2: CGPoint(x: 67.45, y: 27.39))
        path.addCurve(to: CGPoint(x: 68.53, y: 16.57), controlPoint1: CGPoint(x: 75.55, y: 20.29), controlPoint2: CGPoint(x: 68.27, y: 19.71))
        path.addCurve(to: CGPoint(x: 62.33, y: 10.28), controlPoint1: CGPoint(x: 69.02, y: 10.53), controlPoint2: CGPoint(x: 63.98, y: 12.93))
        path.addCurve(to: CGPoint(x: 56.38, y: 4.91), controlPoint1: CGPoint(x: 60.67, y: 7.64), controlPoint2: CGPoint(x: 61.42, y: 4.91))
        path.addCurve(to: CGPoint(x: 47.37, y: 3.67), controlPoint1: CGPoint(x: 51.33, y: 4.91), controlPoint2: CGPoint(x: 54.35, y: 2.49))
        path.addCurve(to: CGPoint(x: 39.27, y: 0.28), controlPoint1: CGPoint(x: 40.39, y: 4.86), controlPoint2: CGPoint(x: 45.19, y: -1.38))
        path.addCurve(to: CGPoint(x: 29.68, y: 3.67), controlPoint1: CGPoint(x: 33.34, y: 1.95), controlPoint2: CGPoint(x: 33.4, y: 4.66))
        path.addCurve(to: CGPoint(x: 20.42, y: 5.49), controlPoint1: CGPoint(x: 25.96, y: 2.68), controlPoint2: CGPoint(x: 25.22, y: 1.36))
        path.addCurve(to: CGPoint(x: 14.47, y: 11.36), controlPoint1: CGPoint(x: 15.63, y: 9.62), controlPoint2: CGPoint(x: 16.25, y: 10.05))
        path.addCurve(to: CGPoint(x: 6.37, y: 19.62), controlPoint1: CGPoint(x: 11.51, y: 13.53), controlPoint2: CGPoint(x: 7.61, y: 11.36))
        path.addCurve(to: CGPoint(x: 0.01, y: 30.45), controlPoint1: CGPoint(x: 5.13, y: 27.89), controlPoint2: CGPoint(x: 0.23, y: 25.59))
        path.addCurve(to: CGPoint(x: 1.74, y: 42.77), controlPoint1: CGPoint(x: -0.21, y: 35.32), controlPoint2: CGPoint(x: 3.56, y: 36.24))
        path.addCurve(to: CGPoint(x: 17.09, y: 62.41), controlPoint1: CGPoint(x: -0.07, y: 49.3), controlPoint2: CGPoint(x: 10.53, y: 57.33))
        path.addLine(to: CGPoint(x: 19.59, y: 62.41))
        path.addCurve(to: CGPoint(x: 20.59, y: 44.91), controlPoint1: CGPoint(x: 14.09, y: 51.41), controlPoint2: CGPoint(x: 15.09, y: 45.41))
        path.addCurve(to: CGPoint(x: 27.59, y: 54.91), controlPoint1: CGPoint(x: 26.09, y: 44.41), controlPoint2: CGPoint(x: 27.59, y: 54.91))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 93.42, y: 27.84))
        
        let afroView = UIView()
        afroView.layer.addSublayers(headLayer, pathLayer)
        return afroView
    }
    
}
