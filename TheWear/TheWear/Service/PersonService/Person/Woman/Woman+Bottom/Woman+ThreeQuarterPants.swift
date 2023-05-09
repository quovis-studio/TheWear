/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawThreeQuarterPants(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 79.73, y: 160.3))
        path.addCurve(to: CGPoint(x: 63.83, y: 0), controlPoint1: CGPoint(x: 78.15, y: 137.14), controlPoint2: CGPoint(x: 63.83, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 4.75))
        path.addLine(to: CGPoint(x: 42.19, y: 181.5))
        path.addCurve(to: CGPoint(x: 45.18, y: 214.04), controlPoint1: CGPoint(x: 42.19, y: 181.5), controlPoint2: CGPoint(x: 43.78, y: 211.27))
        path.addCurve(to: CGPoint(x: 81.74, y: 210.07), controlPoint1: CGPoint(x: 46.58, y: 216.82), controlPoint2: CGPoint(x: 81.5, y: 213.1))
        path.addCurve(to: CGPoint(x: 79.73, y: 160.3), controlPoint1: CGPoint(x: 81.97, y: 207.04), controlPoint2: CGPoint(x: 81.31, y: 183.47))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 107.08, y: 289.25))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 79.73, y: 160.3))
        path2.addCurve(to: CGPoint(x: 63.83, y: 0), controlPoint1: CGPoint(x: 78.15, y: 137.14), controlPoint2: CGPoint(x: 63.83, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: 4.75))
        path2.addLine(to: CGPoint(x: 42.19, y: 181.5))
        path2.addCurve(to: CGPoint(x: 45.18, y: 214.04), controlPoint1: CGPoint(x: 42.19, y: 181.5), controlPoint2: CGPoint(x: 43.78, y: 211.27))
        path2.addCurve(to: CGPoint(x: 81.74, y: 210.07), controlPoint1: CGPoint(x: 46.58, y: 216.82), controlPoint2: CGPoint(x: 81.5, y: 213.1))
        path2.addCurve(to: CGPoint(x: 79.73, y: 160.3), controlPoint1: CGPoint(x: 81.97, y: 207.04), controlPoint2: CGPoint(x: 81.31, y: 183.47))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 107.08, y: 289.25))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 45.77, y: 175.19))
        path3.addCurve(to: CGPoint(x: 59.83, y: 2.7), controlPoint1: CGPoint(x: 47.16, y: 158.16), controlPoint2: CGPoint(x: 59.83, y: 2.7))
        path3.addLine(to: CGPoint(x: 6.82, y: 0))
        path3.addCurve(to: CGPoint(x: 0.04, y: 36.93), controlPoint1: CGPoint(x: 6.6, y: 1.4), controlPoint2: CGPoint(x: 0.58, y: 19.86))
        path3.addCurve(to: CGPoint(x: 4.47, y: 179.61), controlPoint1: CGPoint(x: -0.5, y: 53.99), controlPoint2: CGPoint(x: 4.47, y: 179.61))
        path3.addCurve(to: CGPoint(x: 1.97, y: 211.94), controlPoint1: CGPoint(x: 4.47, y: 179.61), controlPoint2: CGPoint(x: 1.8, y: 207.71))
        path3.addCurve(to: CGPoint(x: 39.37, y: 212.95), controlPoint1: CGPoint(x: 2.14, y: 216.17), controlPoint2: CGPoint(x: 38.45, y: 215.46))
        path3.addCurve(to: CGPoint(x: 45.77, y: 175.19), controlPoint1: CGPoint(x: 40.28, y: 210.45), controlPoint2: CGPoint(x: 44.39, y: 192.22))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 83.52, y: 291.3))
        
        let path31 = UIBezierPath()
        path31.move(to: CGPoint(x: 45.77, y: 175.19))
        path31.addCurve(to: CGPoint(x: 59.83, y: 2.7), controlPoint1: CGPoint(x: 47.16, y: 158.16), controlPoint2: CGPoint(x: 59.83, y: 2.7))
        path31.addLine(to: CGPoint(x: 6.82, y: 0))
        path31.addCurve(to: CGPoint(x: 0.04, y: 36.93), controlPoint1: CGPoint(x: 6.6, y: 1.4), controlPoint2: CGPoint(x: 0.58, y: 19.86))
        path31.addCurve(to: CGPoint(x: 4.47, y: 179.61), controlPoint1: CGPoint(x: -0.5, y: 53.99), controlPoint2: CGPoint(x: 4.47, y: 179.61))
        path31.addCurve(to: CGPoint(x: 1.97, y: 211.94), controlPoint1: CGPoint(x: 4.47, y: 179.61), controlPoint2: CGPoint(x: 1.8, y: 207.71))
        path31.addCurve(to: CGPoint(x: 39.37, y: 212.95), controlPoint1: CGPoint(x: 2.14, y: 216.17), controlPoint2: CGPoint(x: 38.45, y: 215.46))
        path31.addCurve(to: CGPoint(x: 45.77, y: 175.19), controlPoint1: CGPoint(x: 40.28, y: 210.45), controlPoint2: CGPoint(x: 44.39, y: 192.22))
        path31.close()
        let path31Layer = createLayer(path31, Color.shadow.light, CGPoint(x: 83.52, y: 291.3))
        
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
