/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawUndercut() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 13.15, y: 33.28))
        path.addLine(to: CGPoint(x: 17.65, y: 33.78))
        path.addCurve(to: CGPoint(x: 20.75, y: 21.28), controlPoint1: CGPoint(x: 16.65, y: 26.28), controlPoint2: CGPoint(x: 17.87, y: 23.44))
        path.addCurve(to: CGPoint(x: 21.51, y: 11.2), controlPoint1: CGPoint(x: 22.59, y: 19.9), controlPoint2: CGPoint(x: 19.01, y: 13.7))
        path.addCurve(to: CGPoint(x: 7.65, y: 0.28), controlPoint1: CGPoint(x: 23.29, y: 9.42), controlPoint2: CGPoint(x: 10.95, y: -1.92))
        path.addCurve(to: CGPoint(x: 3.84, y: 9.55), controlPoint1: CGPoint(x: 4.35, y: 2.48), controlPoint2: CGPoint(x: 9.63, y: -2.25))
        path.addCurve(to: CGPoint(x: 3.85, y: 40.8), controlPoint1: CGPoint(x: -1.94, y: 21.34), controlPoint2: CGPoint(x: -0.58, y: 31.74))
        path.addLine(to: CGPoint(x: 4.82, y: 40.8))
        path.addCurve(to: CGPoint(x: 6.15, y: 23.28), controlPoint1: CGPoint(x: 0.82, y: 30.05), controlPoint2: CGPoint(x: 0.65, y: 23.78))
        path.addCurve(to: CGPoint(x: 13.15, y: 33.28), controlPoint1: CGPoint(x: 11.65, y: 22.78), controlPoint2: CGPoint(x: 13.15, y: 33.28))
        path.close()
        let pathLayer = createLayer(path, Color.shadow.medium, CGPoint(x: 107.9, y: 49.55)) // medium
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 18.19, y: 1.02))
        path2.addCurve(to: CGPoint(x: 2.93, y: 10.39), controlPoint1: CGPoint(x: 19.96, y: 2.79), controlPoint2: CGPoint(x: 8.58, y: 4.03))
        path2.addCurve(to: CGPoint(x: 1.16, y: 20.14), controlPoint1: CGPoint(x: 0.79, y: 12.79), controlPoint2: CGPoint(x: -1.41, y: 21.91))
        path2.addCurve(to: CGPoint(x: 4.2, y: 24.44), controlPoint1: CGPoint(x: 3.72, y: 18.37), controlPoint2: CGPoint(x: 4.26, y: 22.79))
        path2.addCurve(to: CGPoint(x: 22.83, y: 23.2), controlPoint1: CGPoint(x: 9.7, y: 19.44), controlPoint2: CGPoint(x: 17.04, y: 20.53))
        path2.addCurve(to: CGPoint(x: 44.07, y: 25.53), controlPoint1: CGPoint(x: 28.62, y: 25.87), controlPoint2: CGPoint(x: 37.61, y: 26.29))
        path2.addCurve(to: CGPoint(x: 54.19, y: 17.52), controlPoint1: CGPoint(x: 52.57, y: 24.53), controlPoint2: CGPoint(x: 53.72, y: 21.3))
        path2.addCurve(to: CGPoint(x: 51.69, y: 11.52), controlPoint1: CGPoint(x: 54.69, y: 13.52), controlPoint2: CGPoint(x: 51.19, y: 6.52))
        path2.addCurve(to: CGPoint(x: 48.19, y: 6.52), controlPoint1: CGPoint(x: 51.83, y: 12.96), controlPoint2: CGPoint(x: 48.69, y: 3.52))
        path2.addCurve(to: CGPoint(x: 42.19, y: 3.02), controlPoint1: CGPoint(x: 47.36, y: 11.48), controlPoint2: CGPoint(x: 44.19, y: 1.52))
        path2.addCurve(to: CGPoint(x: 36.19, y: 2.02), controlPoint1: CGPoint(x: 40.54, y: 4.26), controlPoint2: CGPoint(x: 39.72, y: 2.02))
        path2.addCurve(to: CGPoint(x: 28.69, y: 1.02), controlPoint1: CGPoint(x: 34.19, y: 2.02), controlPoint2: CGPoint(x: 27.19, y: -1.48))
        path2.addCurve(to: CGPoint(x: 18.19, y: 1.02), controlPoint1: CGPoint(x: 29.72, y: 2.74), controlPoint2: CGPoint(x: 15.19, y: -1.98))
        path2.close()
        let path2Layer = createLayer(path2, hairColor, CGPoint(x: 106.36, y: 37.31))
        
        let undercutView = UIView()
        undercutView.layer.addSublayers(headLayer, pathLayer, path2Layer)
        return undercutView
    }
    
}
