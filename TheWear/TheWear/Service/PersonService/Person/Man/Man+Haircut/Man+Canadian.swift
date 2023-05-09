/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawCanadian() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 17.24, y: 41))
        path.addLine(to: CGPoint(x: 21.74, y: 41.5))
        path.addCurve(to: CGPoint(x: 24.02, y: 29.86), controlPoint1: CGPoint(x: 21.24, y: 33.98), controlPoint2: CGPoint(x: 21.45, y: 32.39))
        path.addCurve(to: CGPoint(x: 25.37, y: 21.98), controlPoint1: CGPoint(x: 25.69, y: 28.22), controlPoint2: CGPoint(x: 23.17, y: 21.61))
        path.addCurve(to: CGPoint(x: 44.74, y: 22), controlPoint1: CGPoint(x: 28.37, y: 22.48), controlPoint2: CGPoint(x: 38.28, y: 22.76))
        path.addCurve(to: CGPoint(x: 56.24, y: 14), controlPoint1: CGPoint(x: 53.24, y: 21), controlPoint2: CGPoint(x: 56.24, y: 17.73))
        path.addCurve(to: CGPoint(x: 46.74, y: 2.5), controlPoint1: CGPoint(x: 56.24, y: 10), controlPoint2: CGPoint(x: 49.74, y: 0.5))
        path.addCurve(to: CGPoint(x: 28.74, y: 0), controlPoint1: CGPoint(x: 43.74, y: 4.5), controlPoint2: CGPoint(x: 37.44, y: -0.14))
        path.addCurve(to: CGPoint(x: 4.23, y: 12.25), controlPoint1: CGPoint(x: 19.91, y: 0.15), controlPoint2: CGPoint(x: 11.73, y: 3.25))
        path.addCurve(to: CGPoint(x: 6.74, y: 48.5), controlPoint1: CGPoint(x: -3.27, y: 21.25), controlPoint2: CGPoint(x: 0.24, y: 39))
        path.addLine(to: CGPoint(x: 9.24, y: 48.5))
        path.addCurve(to: CGPoint(x: 10.24, y: 31), controlPoint1: CGPoint(x: 3.74, y: 37.5), controlPoint2: CGPoint(x: 4.74, y: 31.5))
        path.addCurve(to: CGPoint(x: 17.24, y: 41), controlPoint1: CGPoint(x: 15.74, y: 30.5), controlPoint2: CGPoint(x: 17.24, y: 41))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 103.76, y: 41.76))
        
        let canadianView = UIView()
        canadianView.layer.addSublayers(headLayer, pathLayer)
        return canadianView
    }
    
}
