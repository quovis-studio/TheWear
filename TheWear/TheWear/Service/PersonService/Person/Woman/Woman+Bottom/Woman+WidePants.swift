/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawWidePants(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 47.16, y: 274.79))
        path.addCurve(to: CGPoint(x: 82.12, y: 273.54), controlPoint1: CGPoint(x: 48.79, y: 277.53), controlPoint2: CGPoint(x: 81.15, y: 276.82))
        path.addCurve(to: CGPoint(x: 77.62, y: 162.58), controlPoint1: CGPoint(x: 83.08, y: 270.27), controlPoint2: CGPoint(x: 79.65, y: 203.53))
        path.addCurve(to: CGPoint(x: 60.55, y: 0), controlPoint1: CGPoint(x: 75.59, y: 121.62), controlPoint2: CGPoint(x: 60.55, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 4.75))
        path.addCurve(to: CGPoint(x: 38.14, y: 178.21), controlPoint1: CGPoint(x: 0, y: 4.75), controlPoint2: CGPoint(x: 33.73, y: 149.31))
        path.addCurve(to: CGPoint(x: 47.16, y: 274.79), controlPoint1: CGPoint(x: 42.55, y: 207.12), controlPoint2: CGPoint(x: 47.16, y: 274.79))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 110.36, y: 289.25))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 47.16, y: 274.79))
        path2.addCurve(to: CGPoint(x: 82.12, y: 273.54), controlPoint1: CGPoint(x: 48.79, y: 277.53), controlPoint2: CGPoint(x: 81.15, y: 276.82))
        path2.addCurve(to: CGPoint(x: 77.62, y: 162.58), controlPoint1: CGPoint(x: 83.08, y: 270.27), controlPoint2: CGPoint(x: 79.65, y: 203.53))
        path2.addCurve(to: CGPoint(x: 60.55, y: 0), controlPoint1: CGPoint(x: 75.59, y: 121.62), controlPoint2: CGPoint(x: 60.55, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: 4.75))
        path2.addCurve(to: CGPoint(x: 38.14, y: 178.21), controlPoint1: CGPoint(x: 0, y: 4.75), controlPoint2: CGPoint(x: 33.73, y: 149.31))
        path2.addCurve(to: CGPoint(x: 47.16, y: 274.79), controlPoint1: CGPoint(x: 42.55, y: 207.12), controlPoint2: CGPoint(x: 47.16, y: 274.79))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 110.36, y: 289.25))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 48.79, y: 174.65))
        path3.addCurve(to: CGPoint(x: 68.96, y: 2.7), controlPoint1: CGPoint(x: 51.42, y: 153.8), controlPoint2: CGPoint(x: 68.96, y: 2.7))
        path3.addLine(to: CGPoint(x: 10.61, y: 0))
        path3.addCurve(to: CGPoint(x: 3.51, y: 44.96), controlPoint1: CGPoint(x: 10.38, y: 1.4), controlPoint2: CGPoint(x: 4.27, y: 20.86))
        path3.addCurve(to: CGPoint(x: 6.06, y: 176.6), controlPoint1: CGPoint(x: 2.74, y: 69.06), controlPoint2: CGPoint(x: 6.06, y: 168.7))
        path3.addCurve(to: CGPoint(x: 0, y: 272.31), controlPoint1: CGPoint(x: 6.06, y: 184.49), controlPoint2: CGPoint(x: 0, y: 272.31))
        path3.addCurve(to: CGPoint(x: 39.47, y: 272.31), controlPoint1: CGPoint(x: -0.02, y: 275.93), controlPoint2: CGPoint(x: 37.87, y: 274.75))
        path3.addCurve(to: CGPoint(x: 48.79, y: 174.65), controlPoint1: CGPoint(x: 41.06, y: 269.88), controlPoint2: CGPoint(x: 46.16, y: 195.51))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 79.73, y: 291.3))
        
        let path31 = UIBezierPath()
        path31.move(to: CGPoint(x: 48.79, y: 174.65))
        path31.addCurve(to: CGPoint(x: 68.96, y: 2.7), controlPoint1: CGPoint(x: 51.42, y: 153.8), controlPoint2: CGPoint(x: 68.96, y: 2.7))
        path31.addLine(to: CGPoint(x: 10.61, y: 0))
        path31.addCurve(to: CGPoint(x: 3.51, y: 44.96), controlPoint1: CGPoint(x: 10.38, y: 1.4), controlPoint2: CGPoint(x: 4.27, y: 20.86))
        path31.addCurve(to: CGPoint(x: 6.06, y: 176.6), controlPoint1: CGPoint(x: 2.74, y: 69.06), controlPoint2: CGPoint(x: 6.06, y: 168.7))
        path31.addCurve(to: CGPoint(x: 0, y: 272.31), controlPoint1: CGPoint(x: 6.06, y: 184.49), controlPoint2: CGPoint(x: 0, y: 272.31))
        path31.addCurve(to: CGPoint(x: 39.47, y: 272.31), controlPoint1: CGPoint(x: -0.02, y: 275.93), controlPoint2: CGPoint(x: 37.87, y: 274.75))
        path31.addCurve(to: CGPoint(x: 48.79, y: 174.65), controlPoint1: CGPoint(x: 41.06, y: 269.88), controlPoint2: CGPoint(x: 46.16, y: 195.51))
        path31.close()
        let path31Layer = createLayer(path31, Color.shadow.light, CGPoint(x: 79.73, y: 291.3))
        
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
