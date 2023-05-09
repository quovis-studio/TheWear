/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSlates(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.66, y: 5.22))
        path.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        path.close()
        let pathLayer = createLayer(path, Color.white.primary, CGPoint(x: 86.61, y: 589.83))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.66, y: 5.22))
        path2.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path2.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path2.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path2.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 86.61, y: 589.83))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 26.02, y: 0.02))
        path3.addCurve(to: CGPoint(x: 0, y: 11.9), controlPoint1: CGPoint(x: 21.85, y: -0.34), controlPoint2: CGPoint(x: 1.75, y: 5.44))
        path3.addLine(to: CGPoint(x: 5.44, y: 11.9))
        path3.addCurve(to: CGPoint(x: 30.34, y: 2.02), controlPoint1: CGPoint(x: 9.67, y: 6.54), controlPoint2: CGPoint(x: 25.56, y: 2.45))
        path3.addCurve(to: CGPoint(x: 26.02, y: 0.02), controlPoint1: CGPoint(x: 32.13, y: 1.86), controlPoint2: CGPoint(x: 29.43, y: 0.31))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 101.84, y: 578.63))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0.66, y: 5.22))
        path4.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path4.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path4.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path4.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        path4.close()
        let path4Layer = createLayer(path4, Color.white.primary, CGPoint(x: 171.95, y: 589.83))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 0.66, y: 5.22))
        path5.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path5.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path5.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path5.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        path5.close()
        let path5Layer = createLayer(path5, Color.shadow.medium, CGPoint(x: 171.95, y: 589.83))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 26.02, y: 0.02))
        path6.addCurve(to: CGPoint(x: 0, y: 11.9), controlPoint1: CGPoint(x: 21.85, y: -0.34), controlPoint2: CGPoint(x: 1.75, y: 5.44))
        path6.addLine(to: CGPoint(x: 5.44, y: 11.9))
        path6.addCurve(to: CGPoint(x: 30.34, y: 2.02), controlPoint1: CGPoint(x: 9.67, y: 6.54), controlPoint2: CGPoint(x: 25.56, y: 2.45))
        path6.addCurve(to: CGPoint(x: 26.02, y: 0.02), controlPoint1: CGPoint(x: 32.13, y: 1.86), controlPoint2: CGPoint(x: 29.43, y: 0.31))
        path6.close()
        let path6Layer = createLayer(path6, color, CGPoint(x: 187.18, y: 578.63))
        
        let slatesView = UIView()
        slatesView.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer, path5Layer, path6Layer)
        return slatesView
    }
    
}
