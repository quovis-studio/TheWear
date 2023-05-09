/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawForelock() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 22.28, y: 41.86))
        path.addLine(to: CGPoint(x: 17.78, y: 41.36))
        path.addCurve(to: CGPoint(x: 10.78, y: 31.36), controlPoint1: CGPoint(x: 17.78, y: 41.36), controlPoint2: CGPoint(x: 16.28, y: 30.86))
        path.addCurve(to: CGPoint(x: 9.78, y: 48.86), controlPoint1: CGPoint(x: 5.28, y: 31.86), controlPoint2: CGPoint(x: 4.28, y: 37.86))
        path.addLine(to: CGPoint(x: 7.28, y: 48.86))
        path.addCurve(to: CGPoint(x: 3.96, y: 10.68), controlPoint1: CGPoint(x: 0.78, y: 39.36), controlPoint2: CGPoint(x: -3.54, y: 19.68))
        path.addCurve(to: CGPoint(x: 29.42, y: 0), controlPoint1: CGPoint(x: 11.46, y: 1.68), controlPoint2: CGPoint(x: 20.6, y: 0))
        path.addCurve(to: CGPoint(x: 43.19, y: 2.68), controlPoint1: CGPoint(x: 32.31, y: 0), controlPoint2: CGPoint(x: 38.32, y: 0.87))
        path.addCurve(to: CGPoint(x: 58.15, y: 17.46), controlPoint1: CGPoint(x: 48.07, y: 4.48), controlPoint2: CGPoint(x: 54.87, y: 8.94))
        path.addCurve(to: CGPoint(x: 57.42, y: 32.85), controlPoint1: CGPoint(x: 61.43, y: 25.98), controlPoint2: CGPoint(x: 62.97, y: 37.03))
        path.addCurve(to: CGPoint(x: 49.24, y: 31.36), controlPoint1: CGPoint(x: 51.87, y: 28.66), controlPoint2: CGPoint(x: 48.65, y: 28.9))
        path.addCurve(to: CGPoint(x: 34.66, y: 29.54), controlPoint1: CGPoint(x: 50.07, y: 34.83), controlPoint2: CGPoint(x: 36.92, y: 26.28))
        path.addCurve(to: CGPoint(x: 24.7, y: 26.06), controlPoint1: CGPoint(x: 32.41, y: 32.78), controlPoint2: CGPoint(x: 27.91, y: 29.58))
        path.addCurve(to: CGPoint(x: 24.02, y: 28.88), controlPoint1: CGPoint(x: 24.75, y: 27.26), controlPoint2: CGPoint(x: 24.53, y: 28.31))
        path.addCurve(to: CGPoint(x: 22.28, y: 41.86), controlPoint1: CGPoint(x: 21.91, y: 31.17), controlPoint2: CGPoint(x: 21.28, y: 34.36))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 103.23, y: 41.44))
        
        let forelockView = UIView()
        forelockView.layer.addSublayers(headLayer, pathLayer)
        return forelockView
    }
    
}
