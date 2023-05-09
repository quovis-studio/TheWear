/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawShortSkirt(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 88.48, y: 0))
        path.addCurve(to: CGPoint(x: 7.62, y: 0.04), controlPoint1: CGPoint(x: 74.86, y: 0), controlPoint2: CGPoint(x: 7.62, y: 0.04))
        path.addCurve(to: CGPoint(x: 0.03, y: 36.13), controlPoint1: CGPoint(x: 6.05, y: 3.92), controlPoint2: CGPoint(x: 0.57, y: 19.07))
        path.addCurve(to: CGPoint(x: 5.84, y: 126.01), controlPoint1: CGPoint(x: -0.51, y: 53.2), controlPoint2: CGPoint(x: 6.14, y: 100.1))
        path.addCurve(to: CGPoint(x: 101.81, y: 118.48), controlPoint1: CGPoint(x: 5.54, y: 151.92), controlPoint2: CGPoint(x: 105.13, y: 148.84))
        path.addLine(to: CGPoint(x: 101.53, y: 115.93))
        path.addCurve(to: CGPoint(x: 88.48, y: 0), controlPoint1: CGPoint(x: 98.12, y: 84.78), controlPoint2: CGPoint(x: 91.63, y: 25.5))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 82.63, y: 291.61))
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 88.48, y: 0))
        path1.addCurve(to: CGPoint(x: 7.62, y: 0.04), controlPoint1: CGPoint(x: 74.86, y: 0), controlPoint2: CGPoint(x: 7.62, y: 0.04))
        path1.addCurve(to: CGPoint(x: 0.03, y: 36.13), controlPoint1: CGPoint(x: 6.05, y: 3.92), controlPoint2: CGPoint(x: 0.57, y: 19.07))
        path1.addCurve(to: CGPoint(x: 5.84, y: 126.01), controlPoint1: CGPoint(x: -0.51, y: 53.2), controlPoint2: CGPoint(x: 6.14, y: 100.1))
        path1.addCurve(to: CGPoint(x: 101.81, y: 118.48), controlPoint1: CGPoint(x: 5.54, y: 151.92), controlPoint2: CGPoint(x: 105.13, y: 148.84))
        path1.addLine(to: CGPoint(x: 101.53, y: 115.93))
        path1.addCurve(to: CGPoint(x: 88.48, y: 0), controlPoint1: CGPoint(x: 98.12, y: 84.78), controlPoint2: CGPoint(x: 91.63, y: 25.5))
        path1.close()
        let path1Layer = createLayer(path1, Color.shadow.light, CGPoint(x: 82.63, y: 291.61))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 2.84, y: 0.15))
        path2.addCurve(to: CGPoint(x: 44.35, y: 4.11), controlPoint1: CGPoint(x: 4.06, y: 1.17), controlPoint2: CGPoint(x: 21.33, y: 4.46))
        path2.addCurve(to: CGPoint(x: 78.6, y: 0.01), controlPoint1: CGPoint(x: 67.37, y: 3.76), controlPoint2: CGPoint(x: 77.88, y: 0.5))
        path2.addCurve(to: CGPoint(x: 81.1, y: 14.49), controlPoint1: CGPoint(x: 79.31, y: -0.47), controlPoint2: CGPoint(x: 81.66, y: 13.65))
        path2.addCurve(to: CGPoint(x: 44.67, y: 17.82), controlPoint1: CGPoint(x: 80.53, y: 15.33), controlPoint2: CGPoint(x: 64.72, y: 17.42))
        path2.addCurve(to: CGPoint(x: 0.02, y: 14.6), controlPoint1: CGPoint(x: 24.63, y: 18.22), controlPoint2: CGPoint(x: 0.26, y: 16.57))
        path2.addCurve(to: CGPoint(x: 2.84, y: 0.15), controlPoint1: CGPoint(x: -0.22, y: 12.63), controlPoint2: CGPoint(x: 1.63, y: -0.88))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 90.06, y: 277.38))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 2.84, y: 0.15))
        path3.addCurve(to: CGPoint(x: 44.35, y: 4.11), controlPoint1: CGPoint(x: 4.06, y: 1.17), controlPoint2: CGPoint(x: 21.33, y: 4.46))
        path3.addCurve(to: CGPoint(x: 78.6, y: 0.01), controlPoint1: CGPoint(x: 67.37, y: 3.76), controlPoint2: CGPoint(x: 77.88, y: 0.5))
        path3.addCurve(to: CGPoint(x: 81.1, y: 14.49), controlPoint1: CGPoint(x: 79.31, y: -0.47), controlPoint2: CGPoint(x: 81.66, y: 13.65))
        path3.addCurve(to: CGPoint(x: 44.67, y: 17.82), controlPoint1: CGPoint(x: 80.53, y: 15.33), controlPoint2: CGPoint(x: 64.72, y: 17.42))
        path3.addCurve(to: CGPoint(x: 0.02, y: 14.6), controlPoint1: CGPoint(x: 24.63, y: 18.22), controlPoint2: CGPoint(x: 0.26, y: 16.57))
        path3.addCurve(to: CGPoint(x: 2.84, y: 0.15), controlPoint1: CGPoint(x: -0.22, y: 12.63), controlPoint2: CGPoint(x: 1.63, y: -0.88))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.medium, CGPoint(x: 90.06, y: 277.38))
        
        let bottom = UIView()
        bottom.layer.addSublayers(pathLayer, path1Layer, path2Layer, path3Layer)
        return bottom
    }
    
}
