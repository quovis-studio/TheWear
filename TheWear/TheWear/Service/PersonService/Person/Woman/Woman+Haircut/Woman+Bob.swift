/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBob() -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 72.16, y: 77.32))
        path.addCurve(to: CGPoint(x: 58.13, y: 10.24), controlPoint1: CGPoint(x: 77.43, y: 65.73), controlPoint2: CGPoint(x: 79.6, y: 27.84))
        path.addCurve(to: CGPoint(x: 4.98, y: 10.48), controlPoint1: CGPoint(x: 36.66, y: -7.36), controlPoint2: CGPoint(x: 13.89, y: 1.12))
        path.addCurve(to: CGPoint(x: 4.18, y: 77.32), controlPoint1: CGPoint(x: -3.93, y: 19.85), controlPoint2: CGPoint(x: 1.25, y: 73.92))
        path.addCurve(to: CGPoint(x: 4.79, y: 77.96), controlPoint1: CGPoint(x: 4.5, y: 77.69), controlPoint2: CGPoint(x: 4.62, y: 77.87))
        path.addCurve(to: CGPoint(x: 17.18, y: 80.38), controlPoint1: CGPoint(x: 5.36, y: 78.27), controlPoint2: CGPoint(x: 6.44, y: 77.66))
        path.addLine(to: CGPoint(x: 19.59, y: 50.07))
        path.addLine(to: CGPoint(x: 33.65, y: 62.67))
        path.addLine(to: CGPoint(x: 35.96, y: 82.84))
        path.addCurve(to: CGPoint(x: 72.16, y: 77.32), controlPoint1: CGPoint(x: 52.08, y: 83.49), controlPoint2: CGPoint(x: 70.25, y: 81.52))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 102.33, y: 41.7))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 33.59, y: 33.47))
        path3.addCurve(to: CGPoint(x: 40.74, y: 40.33), controlPoint1: CGPoint(x: 39.09, y: 32.97), controlPoint2: CGPoint(x: 38.91, y: 39.65))
        path3.addCurve(to: CGPoint(x: 59.63, y: 28.07), controlPoint1: CGPoint(x: 42.57, y: 41.01), controlPoint2: CGPoint(x: 47.43, y: 34.23))
        path3.addCurve(to: CGPoint(x: 80.61, y: 15.83), controlPoint1: CGPoint(x: 71.82, y: 21.9), controlPoint2: CGPoint(x: 82.84, y: 19.79))
        path3.addCurve(to: CGPoint(x: 52.08, y: 0.14), controlPoint1: CGPoint(x: 75.79, y: 7.26), controlPoint2: CGPoint(x: 61.43, y: 1.04))
        path3.addCurve(to: CGPoint(x: 21.66, y: 12.12), controlPoint1: CGPoint(x: 42.72, y: -0.77), controlPoint2: CGPoint(x: 29.26, y: 2.8))
        path3.addCurve(to: CGPoint(x: 1.28, y: 77.45), controlPoint1: CGPoint(x: 10.71, y: 25.56), controlPoint2: CGPoint(x: -4.52, y: 71.33))
        path3.addCurve(to: CGPoint(x: 39.53, y: 83.08), controlPoint1: CGPoint(x: 7.07, y: 83.58), controlPoint2: CGPoint(x: 27.1, y: 84.25))
        path3.addCurve(to: CGPoint(x: 30.51, y: 50.89), controlPoint1: CGPoint(x: 51.95, y: 81.9), controlPoint2: CGPoint(x: 32.1, y: 54.07))
        path3.addCurve(to: CGPoint(x: 33.59, y: 33.47), controlPoint1: CGPoint(x: 25.01, y: 39.89), controlPoint2: CGPoint(x: 28.09, y: 33.97))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 84.29, y: 41.48))
        
        let hair = UIView()
        hair.layer.addSublayers(pathLayer, headLayer, path3Layer)
        return hair
    }
    
}
