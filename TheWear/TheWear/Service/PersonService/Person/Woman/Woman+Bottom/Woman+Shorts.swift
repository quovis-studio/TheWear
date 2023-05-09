/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawShorts(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 72.13, y: 130.06))
        path.addCurve(to: CGPoint(x: 60.55, y: 0), controlPoint1: CGPoint(x: 72.24, y: 125.56), controlPoint2: CGPoint(x: 60.55, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 4.75))
        path.addCurve(to: CGPoint(x: 30.72, y: 131.4), controlPoint1: CGPoint(x: 0, y: 4.75), controlPoint2: CGPoint(x: 29.88, y: 128.24))
        path.addCurve(to: CGPoint(x: 72.13, y: 130.06), controlPoint1: CGPoint(x: 31.55, y: 134.55), controlPoint2: CGPoint(x: 72.03, y: 134.56))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 110.36, y: 289.25))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 72.13, y: 130.06))
        path2.addCurve(to: CGPoint(x: 60.55, y: 0), controlPoint1: CGPoint(x: 72.24, y: 125.56), controlPoint2: CGPoint(x: 60.55, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: 4.75))
        path2.addCurve(to: CGPoint(x: 30.72, y: 131.4), controlPoint1: CGPoint(x: 0, y: 4.75), controlPoint2: CGPoint(x: 29.88, y: 128.24))
        path2.addCurve(to: CGPoint(x: 72.13, y: 130.06), controlPoint1: CGPoint(x: 31.55, y: 134.55), controlPoint2: CGPoint(x: 72.03, y: 134.56))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 110.36, y: 289.25))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 46.85, y: 127.9))
        path3.addCurve(to: CGPoint(x: 56.28, y: 2.7), controlPoint1: CGPoint(x: 47.47, y: 121.31), controlPoint2: CGPoint(x: 56.28, y: 2.7))
        path3.addLine(to: CGPoint(x: 7.44, y: 0))
        path3.addCurve(to: CGPoint(x: 0.09, y: 41.61), controlPoint1: CGPoint(x: 7.22, y: 1.4), controlPoint2: CGPoint(x: 0.85, y: 17.51))
        path3.addCurve(to: CGPoint(x: 3.54, y: 126.75), controlPoint1: CGPoint(x: -0.67, y: 65.71), controlPoint2: CGPoint(x: 3.54, y: 122.91))
        path3.addCurve(to: CGPoint(x: 46.85, y: 127.9), controlPoint1: CGPoint(x: 3.54, y: 130.59), controlPoint2: CGPoint(x: 46.22, y: 134.49))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 82.9, y: 291.3))
        
        let path31 = UIBezierPath()
        path31.move(to: CGPoint(x: 46.85, y: 127.9))
        path31.addCurve(to: CGPoint(x: 56.28, y: 2.7), controlPoint1: CGPoint(x: 47.47, y: 121.31), controlPoint2: CGPoint(x: 56.28, y: 2.7))
        path31.addLine(to: CGPoint(x: 7.44, y: 0))
        path31.addCurve(to: CGPoint(x: 0.09, y: 41.61), controlPoint1: CGPoint(x: 7.22, y: 1.4), controlPoint2: CGPoint(x: 0.85, y: 17.51))
        path31.addCurve(to: CGPoint(x: 3.54, y: 126.75), controlPoint1: CGPoint(x: -0.67, y: 65.71), controlPoint2: CGPoint(x: 3.54, y: 122.91))
        path31.addCurve(to: CGPoint(x: 46.85, y: 127.9), controlPoint1: CGPoint(x: 3.54, y: 130.59), controlPoint2: CGPoint(x: 46.22, y: 134.49))
        path31.close()
        let path31Layer = createLayer(path31, Color.shadow.light, CGPoint(x: 82.9, y: 291.3))
        
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
