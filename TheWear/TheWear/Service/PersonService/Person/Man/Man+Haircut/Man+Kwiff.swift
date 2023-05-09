/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawKwiff() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 19.65, y: 45.08))
        path.addLine(to: CGPoint(x: 24.15, y: 45.58))
        path.addCurve(to: CGPoint(x: 27.81, y: 34.66), controlPoint1: CGPoint(x: 23.15, y: 38.08), controlPoint2: CGPoint(x: 24.81, y: 36.65))
        path.addCurve(to: CGPoint(x: 28.79, y: 26.62), controlPoint1: CGPoint(x: 30.06, y: 33.18), controlPoint2: CGPoint(x: 26.59, y: 26.26))
        path.addCurve(to: CGPoint(x: 45.57, y: 26.2), controlPoint1: CGPoint(x: 31.79, y: 27.12), controlPoint2: CGPoint(x: 39.11, y: 26.96))
        path.addCurve(to: CGPoint(x: 58.07, y: 18.09), controlPoint1: CGPoint(x: 54.07, y: 25.2), controlPoint2: CGPoint(x: 57.83, y: 21.81))
        path.addCurve(to: CGPoint(x: 43.37, y: 0.44), controlPoint1: CGPoint(x: 58.68, y: 8.77), controlPoint2: CGPoint(x: 50.79, y: -2.37))
        path.addCurve(to: CGPoint(x: 24.14, y: 1.75), controlPoint1: CGPoint(x: 35.95, y: 3.26), controlPoint2: CGPoint(x: 33.03, y: 0.41))
        path.addCurve(to: CGPoint(x: 3.33, y: 13.48), controlPoint1: CGPoint(x: 15.25, y: 3.09), controlPoint2: CGPoint(x: 10.12, y: 3.29))
        path.addCurve(to: CGPoint(x: 7.72, y: 52.58), controlPoint1: CGPoint(x: -3.47, y: 23.67), controlPoint2: CGPoint(x: 1.22, y: 43.08))
        path.addLine(to: CGPoint(x: 11.65, y: 52.58))
        path.addCurve(to: CGPoint(x: 12.65, y: 35.08), controlPoint1: CGPoint(x: 6.15, y: 41.58), controlPoint2: CGPoint(x: 7.15, y: 35.58))
        path.addCurve(to: CGPoint(x: 19.65, y: 45.08), controlPoint1: CGPoint(x: 18.15, y: 34.58), controlPoint2: CGPoint(x: 19.65, y: 45.08))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 101.36, y: 37.68))
        
        let kwiffView = UIView()
        kwiffView.layer.addSublayers(headLayer, pathLayer)
        return kwiffView
    }
    
}
