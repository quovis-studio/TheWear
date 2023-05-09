/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawShorts(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 72.07, y: 135.25))
        path.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 71.53, y: 126.8), controlPoint2: CGPoint(x: 57.18, y: 0))
        path.addLine(to: CGPoint.zero)
        path.addCurve(to: CGPoint(x: 28.66, y: 138.5), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 27.09, y: 132.02))
        path.addCurve(to: CGPoint(x: 72.07, y: 135.25), controlPoint1: CGPoint(x: 30.24, y: 144.99), controlPoint2: CGPoint(x: 72.6, y: 143.69))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 117.9, y: 316))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 72.07, y: 135.25))
        path2.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 71.53, y: 126.8), controlPoint2: CGPoint(x: 57.18, y: 0))
        path2.addLine(to: CGPoint.zero)
        path2.addCurve(to: CGPoint(x: 28.66, y: 138.5), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 27.09, y: 132.02))
        path2.addCurve(to: CGPoint(x: 72.07, y: 135.25), controlPoint1: CGPoint(x: 30.24, y: 144.99), controlPoint2: CGPoint(x: 72.6, y: 143.69))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 117.9, y: 316))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 46.14, y: 139.39))
        path3.addCurve(to: CGPoint(x: 59.47, y: 0), controlPoint1: CGPoint(x: 48.03, y: 131.62), controlPoint2: CGPoint(x: 59.47, y: 0))
        path3.addLine(to: CGPoint.zero)
        path3.addCurve(to: CGPoint(x: 2.07, y: 138.95), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 1.71, y: 132.49))
        path3.addCurve(to: CGPoint(x: 46.14, y: 139.39), controlPoint1: CGPoint(x: 2.44, y: 145.4), controlPoint2: CGPoint(x: 44.25, y: 147.17))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 86.65, y: 316))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 46.14, y: 139.39))
        path4.addCurve(to: CGPoint(x: 59.47, y: 0), controlPoint1: CGPoint(x: 48.03, y: 131.62), controlPoint2: CGPoint(x: 59.47, y: 0))
        path4.addLine(to: CGPoint.zero)
        path4.addCurve(to: CGPoint(x: 2.07, y: 138.95), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 1.71, y: 132.49))
        path4.addCurve(to: CGPoint(x: 46.14, y: 139.39), controlPoint1: CGPoint(x: 2.44, y: 145.4), controlPoint2: CGPoint(x: 44.25, y: 147.17))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.light, CGPoint(x: 86.65, y: 316))
        
        let shortsView = UIView()
        shortsView.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer)
        return shortsView
    }
    
}
