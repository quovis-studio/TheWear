/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawShort() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 17.03, y: 40.66))
        path.addLine(to: CGPoint(x: 21.53, y: 41.16))
        path.addCurve(to: CGPoint(x: 23.45, y: 29.43), controlPoint1: CGPoint(x: 20.53, y: 33.66), controlPoint2: CGPoint(x: 20.94, y: 32.03))
        path.addCurve(to: CGPoint(x: 23.66, y: 21.71), controlPoint1: CGPoint(x: 24.69, y: 28.15), controlPoint2: CGPoint(x: 22.08, y: 23.29))
        path.addCurve(to: CGPoint(x: 42.9, y: 19.99), controlPoint1: CGPoint(x: 26.16, y: 19.21), controlPoint2: CGPoint(x: 36.44, y: 20.74))
        path.addCurve(to: CGPoint(x: 53.19, y: 13.85), controlPoint1: CGPoint(x: 51.4, y: 18.99), controlPoint2: CGPoint(x: 54.92, y: 17.15))
        path.addCurve(to: CGPoint(x: 5.03, y: 10.16), controlPoint1: CGPoint(x: 43.19, y: -5.15), controlPoint2: CGPoint(x: 13.53, y: -2.84))
        path.addCurve(to: CGPoint(x: 6.53, y: 48.16), controlPoint1: CGPoint(x: -3.47, y: 23.16), controlPoint2: CGPoint(x: 0.03, y: 38.66))
        path.addLine(to: CGPoint(x: 9.03, y: 48.16))
        path.addCurve(to: CGPoint(x: 10.03, y: 30.66), controlPoint1: CGPoint(x: 3.53, y: 37.16), controlPoint2: CGPoint(x: 4.53, y: 31.16))
        path.addCurve(to: CGPoint(x: 17.03, y: 40.66), controlPoint1: CGPoint(x: 15.53, y: 30.16), controlPoint2: CGPoint(x: 17.03, y: 40.66))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 103.98, y: 42.09))
        
        let shortView = UIView()
        shortView.layer.addSublayers(headLayer, pathLayer)
        return shortView
    }
    
}
