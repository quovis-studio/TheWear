/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawTightPants(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 64.66, y: 274.93))
        path.addCurve(to: CGPoint(x: 81.65, y: 274.2), controlPoint1: CGPoint(x: 66.28, y: 277.67), controlPoint2: CGPoint(x: 80.69, y: 277.47))
        path.addCurve(to: CGPoint(x: 77.42, y: 161.75), controlPoint1: CGPoint(x: 82.61, y: 270.92), controlPoint2: CGPoint(x: 77.42, y: 187.16))
        path.addCurve(to: CGPoint(x: 64.05, y: 0), controlPoint1: CGPoint(x: 77.42, y: 136.34), controlPoint2: CGPoint(x: 64.05, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 4.75))
        path.addLine(to: CGPoint(x: 50.1, y: 179.45))
        path.addCurve(to: CGPoint(x: 51.96, y: 210.9), controlPoint1: CGPoint(x: 50.1, y: 179.45), controlPoint2: CGPoint(x: 48.95, y: 186.46))
        path.addCurve(to: CGPoint(x: 64.66, y: 274.93), controlPoint1: CGPoint(x: 54.98, y: 235.33), controlPoint2: CGPoint(x: 63.03, y: 272.18))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 106.86, y: 289.25))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 64.66, y: 274.93))
        path2.addCurve(to: CGPoint(x: 81.65, y: 274.2), controlPoint1: CGPoint(x: 66.28, y: 277.67), controlPoint2: CGPoint(x: 80.69, y: 277.47))
        path2.addCurve(to: CGPoint(x: 77.42, y: 161.75), controlPoint1: CGPoint(x: 82.61, y: 270.92), controlPoint2: CGPoint(x: 77.42, y: 187.16))
        path2.addCurve(to: CGPoint(x: 64.05, y: 0), controlPoint1: CGPoint(x: 77.42, y: 136.34), controlPoint2: CGPoint(x: 64.05, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: 4.75))
        path2.addLine(to: CGPoint(x: 50.1, y: 179.45))
        path2.addCurve(to: CGPoint(x: 51.96, y: 210.9), controlPoint1: CGPoint(x: 50.1, y: 179.45), controlPoint2: CGPoint(x: 48.95, y: 186.46))
        path2.addCurve(to: CGPoint(x: 64.66, y: 274.93), controlPoint1: CGPoint(x: 54.98, y: 235.33), controlPoint2: CGPoint(x: 63.03, y: 272.18))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 106.86, y: 289.25))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 39.92, y: 171.65))
        path3.addCurve(to: CGPoint(x: 56.82, y: 2.7), controlPoint1: CGPoint(x: 43.94, y: 150.8), controlPoint2: CGPoint(x: 56.82, y: 2.7))
        path3.addLine(to: CGPoint(x: 5.91, y: 0))
        path3.addCurve(to: CGPoint(x: 0, y: 37.6), controlPoint1: CGPoint(x: 5.69, y: 1.4), controlPoint2: CGPoint(x: 0, y: 21.78))
        path3.addCurve(to: CGPoint(x: 8.96, y: 182.57), controlPoint1: CGPoint(x: 0, y: 53.42), controlPoint2: CGPoint(x: 8.96, y: 182.57))
        path3.addCurve(to: CGPoint(x: 4.33, y: 211.67), controlPoint1: CGPoint(x: 8.96, y: 182.57), controlPoint2: CGPoint(x: 5.76, y: 192.02))
        path3.addCurve(to: CGPoint(x: 1.31, y: 271.17), controlPoint1: CGPoint(x: 2.91, y: 231.33), controlPoint2: CGPoint(x: 1.31, y: 267.04))
        path3.addCurve(to: CGPoint(x: 18.51, y: 273.23), controlPoint1: CGPoint(x: 1.31, y: 275.31), controlPoint2: CGPoint(x: 16.91, y: 275.66))
        path3.addCurve(to: CGPoint(x: 39.92, y: 171.65), controlPoint1: CGPoint(x: 20.1, y: 270.8), controlPoint2: CGPoint(x: 35.89, y: 192.5))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 84.43, y: 291.3))
        
        let path31 = UIBezierPath()
        path31.move(to: CGPoint(x: 39.92, y: 171.65))
        path31.addCurve(to: CGPoint(x: 56.82, y: 2.7), controlPoint1: CGPoint(x: 43.94, y: 150.8), controlPoint2: CGPoint(x: 56.82, y: 2.7))
        path31.addLine(to: CGPoint(x: 5.91, y: 0))
        path31.addCurve(to: CGPoint(x: 0, y: 37.6), controlPoint1: CGPoint(x: 5.69, y: 1.4), controlPoint2: CGPoint(x: 0, y: 21.78))
        path31.addCurve(to: CGPoint(x: 8.96, y: 182.57), controlPoint1: CGPoint(x: 0, y: 53.42), controlPoint2: CGPoint(x: 8.96, y: 182.57))
        path31.addCurve(to: CGPoint(x: 4.33, y: 211.67), controlPoint1: CGPoint(x: 8.96, y: 182.57), controlPoint2: CGPoint(x: 5.76, y: 192.02))
        path31.addCurve(to: CGPoint(x: 1.31, y: 271.17), controlPoint1: CGPoint(x: 2.91, y: 231.33), controlPoint2: CGPoint(x: 1.31, y: 267.04))
        path31.addCurve(to: CGPoint(x: 18.51, y: 273.23), controlPoint1: CGPoint(x: 1.31, y: 275.31), controlPoint2: CGPoint(x: 16.91, y: 275.66))
        path31.addCurve(to: CGPoint(x: 39.92, y: 171.65), controlPoint1: CGPoint(x: 20.1, y: 270.8), controlPoint2: CGPoint(x: 35.89, y: 192.5))
        path31.close()
        let path31Layer = createLayer(path31, Color.shadow.light, CGPoint(x: 84.43, y: 291.3))
        
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
