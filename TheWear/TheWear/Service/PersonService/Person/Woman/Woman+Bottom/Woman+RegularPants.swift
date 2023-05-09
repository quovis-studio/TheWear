/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawRegularPants(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 61.92, y: 273.81))
        path.addCurve(to: CGPoint(x: 83.04, y: 272.96), controlPoint1: CGPoint(x: 63.54, y: 276.56), controlPoint2: CGPoint(x: 82.08, y: 276.24))
        path.addCurve(to: CGPoint(x: 78.87, y: 161.32), controlPoint1: CGPoint(x: 84, y: 269.69), controlPoint2: CGPoint(x: 78.87, y: 186.73))
        path.addCurve(to: CGPoint(x: 63.83, y: 0), controlPoint1: CGPoint(x: 78.87, y: 135.91), controlPoint2: CGPoint(x: 63.83, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 4.75))
        path.addLine(to: CGPoint(x: 48.04, y: 179.34))
        path.addCurve(to: CGPoint(x: 50.34, y: 210.86), controlPoint1: CGPoint(x: 48.04, y: 179.34), controlPoint2: CGPoint(x: 47.44, y: 192.29))
        path.addCurve(to: CGPoint(x: 61.92, y: 273.81), controlPoint1: CGPoint(x: 53.24, y: 229.42), controlPoint2: CGPoint(x: 60.29, y: 271.07))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 107.08, y: 289.25))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 61.92, y: 273.81))
        path2.addCurve(to: CGPoint(x: 83.04, y: 272.96), controlPoint1: CGPoint(x: 63.54, y: 276.56), controlPoint2: CGPoint(x: 82.08, y: 276.24))
        path2.addCurve(to: CGPoint(x: 78.87, y: 161.32), controlPoint1: CGPoint(x: 84, y: 269.69), controlPoint2: CGPoint(x: 78.87, y: 186.73))
        path2.addCurve(to: CGPoint(x: 63.83, y: 0), controlPoint1: CGPoint(x: 78.87, y: 135.91), controlPoint2: CGPoint(x: 63.83, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: 4.75))
        path2.addLine(to: CGPoint(x: 48.04, y: 179.34))
        path2.addCurve(to: CGPoint(x: 50.34, y: 210.86), controlPoint1: CGPoint(x: 48.04, y: 179.34), controlPoint2: CGPoint(x: 47.44, y: 192.29))
        path2.addCurve(to: CGPoint(x: 61.92, y: 273.81), controlPoint1: CGPoint(x: 53.24, y: 229.42), controlPoint2: CGPoint(x: 60.29, y: 271.07))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 107.08, y: 289.25))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 43.03, y: 174.72))
        path3.addCurve(to: CGPoint(x: 59.81, y: 2.7), controlPoint1: CGPoint(x: 47.06, y: 153.87), controlPoint2: CGPoint(x: 59.81, y: 2.7))
        path3.addLine(to: CGPoint(x: 6.81, y: 0))
        path3.addCurve(to: CGPoint(x: 0.03, y: 36.93), controlPoint1: CGPoint(x: 6.58, y: 1.4), controlPoint2: CGPoint(x: 0.57, y: 19.86))
        path3.addCurve(to: CGPoint(x: 7.65, y: 183.42), controlPoint1: CGPoint(x: -0.51, y: 53.99), controlPoint2: CGPoint(x: 7.65, y: 183.42))
        path3.addCurve(to: CGPoint(x: 4.18, y: 214.08), controlPoint1: CGPoint(x: 7.65, y: 183.42), controlPoint2: CGPoint(x: 5.61, y: 194.42))
        path3.addCurve(to: CGPoint(x: 0.73, y: 270.28), controlPoint1: CGPoint(x: 2.76, y: 233.73), controlPoint2: CGPoint(x: 0.74, y: 266.66))
        path3.addCurve(to: CGPoint(x: 21.3, y: 271.54), controlPoint1: CGPoint(x: 0.71, y: 273.9), controlPoint2: CGPoint(x: 19.71, y: 273.98))
        path3.addCurve(to: CGPoint(x: 43.03, y: 174.72), controlPoint1: CGPoint(x: 22.9, y: 269.11), controlPoint2: CGPoint(x: 39, y: 195.57))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 83.53, y: 291.3))
        
        let path31 = UIBezierPath()
        path31.move(to: CGPoint(x: 43.03, y: 174.72))
        path31.addCurve(to: CGPoint(x: 59.81, y: 2.7), controlPoint1: CGPoint(x: 47.06, y: 153.87), controlPoint2: CGPoint(x: 59.81, y: 2.7))
        path31.addLine(to: CGPoint(x: 6.81, y: 0))
        path31.addCurve(to: CGPoint(x: 0.03, y: 36.93), controlPoint1: CGPoint(x: 6.58, y: 1.4), controlPoint2: CGPoint(x: 0.57, y: 19.86))
        path31.addCurve(to: CGPoint(x: 7.65, y: 183.42), controlPoint1: CGPoint(x: -0.51, y: 53.99), controlPoint2: CGPoint(x: 7.65, y: 183.42))
        path31.addCurve(to: CGPoint(x: 4.18, y: 214.08), controlPoint1: CGPoint(x: 7.65, y: 183.42), controlPoint2: CGPoint(x: 5.61, y: 194.42))
        path31.addCurve(to: CGPoint(x: 0.73, y: 270.28), controlPoint1: CGPoint(x: 2.76, y: 233.73), controlPoint2: CGPoint(x: 0.74, y: 266.66))
        path31.addCurve(to: CGPoint(x: 21.3, y: 271.54), controlPoint1: CGPoint(x: 0.71, y: 273.9), controlPoint2: CGPoint(x: 19.71, y: 273.98))
        path31.addCurve(to: CGPoint(x: 43.03, y: 174.72), controlPoint1: CGPoint(x: 22.9, y: 269.11), controlPoint2: CGPoint(x: 39, y: 195.57))
        path31.close()
        let path31Layer = createLayer(path31, Color.shadow.light, CGPoint(x: 83.53, y: 291.3))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 2.84, y: 0.15))
        path4.addCurve(to: CGPoint(x: 44.35, y: 4.11), controlPoint1: CGPoint(x: 4.06, y: 1.17), controlPoint2: CGPoint(x: 21.33, y: 4.46))
        path4.addCurve(to: CGPoint(x: 78.59, y: 0.01), controlPoint1: CGPoint(x: 67.37, y: 3.76), controlPoint2: CGPoint(x: 77.88, y: 0.5))
        path4.addCurve(to: CGPoint(x: 81.09, y: 14.49), controlPoint1: CGPoint(x: 79.31, y: -0.47), controlPoint2: CGPoint(x: 81.66, y: 13.65))
        path4.addCurve(to: CGPoint(x: 44.67, y: 17.82), controlPoint1: CGPoint(x: 80.53, y: 15.33), controlPoint2: CGPoint(x: 64.72, y: 17.42))
        path4.addCurve(to: CGPoint(x: 0.02, y: 14.6), controlPoint1: CGPoint(x: 24.63, y: 18.22), controlPoint2: CGPoint(x: 0.26, y: 16.57))
        path4.addCurve(to: CGPoint(x: 2.84, y: 0.15), controlPoint1: CGPoint(x: -0.22, y: 12.63), controlPoint2: CGPoint(x: 1.63, y: -0.88))
        path4.close()
        let path4Layer = createLayer(path4, color, CGPoint(x: 90.06, y: 277.38))
        
        let bottom = UIView()
        bottom.layer.addSublayers(pathLayer, path2Layer, path3Layer, path31Layer, path4Layer)
        return bottom
    }
    
}
