/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSlippers(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.66, y: 5.22))
        path.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        path.close()
        let pathLayer = createLayer(path, Color.white.primary, CGPoint(x: 88.25, y: 589.83))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.66, y: 5.22))
        path2.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path2.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path2.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path2.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 88.25, y: 589.83))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 12.38, y: 0.01))
        path3.addCurve(to: CGPoint(x: 0, y: 15.09), controlPoint1: CGPoint(x: 8.2, y: -0.35), controlPoint2: CGPoint(x: 0.86, y: 7.89))
        path3.addLine(to: CGPoint(x: 20.44, y: 15.09))
        path3.addCurve(to: CGPoint(x: 28.56, y: 5.15), controlPoint1: CGPoint(x: 22.05, y: 11), controlPoint2: CGPoint(x: 24.04, y: 7.69))
        path3.addCurve(to: CGPoint(x: 12.38, y: 0.01), controlPoint1: CGPoint(x: 31.42, y: 3.55), controlPoint2: CGPoint(x: 15.79, y: 0.3))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 105.48, y: 575.44))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0.66, y: 5.22))
        path4.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path4.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path4.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path4.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        path4.close()
        let path4Layer = createLayer(path4, Color.white.primary, CGPoint(x: 173.59, y: 589.83))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 0.66, y: 5.22))
        path5.addCurve(to: CGPoint(x: 0.66, y: 0.66), controlPoint1: CGPoint(x: -0.04, y: 4.15), controlPoint2: CGPoint(x: -0.38, y: 1.54))
        path5.addCurve(to: CGPoint(x: 60.58, y: 0.66), controlPoint1: CGPoint(x: 1.7, y: -0.21), controlPoint2: CGPoint(x: 59.84, y: -0.23))
        path5.addCurve(to: CGPoint(x: 60.58, y: 5.22), controlPoint1: CGPoint(x: 61.32, y: 1.56), controlPoint2: CGPoint(x: 61.46, y: 4.35))
        path5.addCurve(to: CGPoint(x: 0.66, y: 5.22), controlPoint1: CGPoint(x: 59.71, y: 6.09), controlPoint2: CGPoint(x: 1.36, y: 6.29))
        path5.close()
        let path5Layer = createLayer(path5, Color.shadow.medium, CGPoint(x: 173.59, y: 589.83))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 12.38, y: 0.01))
        path6.addCurve(to: CGPoint(x: 0, y: 15.09), controlPoint1: CGPoint(x: 8.2, y: -0.35), controlPoint2: CGPoint(x: 0.86, y: 7.89))
        path6.addLine(to: CGPoint(x: 20.44, y: 15.09))
        path6.addCurve(to: CGPoint(x: 28.72, y: 5.19), controlPoint1: CGPoint(x: 22.05, y: 11), controlPoint2: CGPoint(x: 24.19, y: 7.72))
        path6.addCurve(to: CGPoint(x: 12.38, y: 0.01), controlPoint1: CGPoint(x: 31.58, y: 3.58), controlPoint2: CGPoint(x: 15.79, y: 0.3))
        path6.close()
        let path6Layer = createLayer(path6, color, CGPoint(x: 190.82, y: 575.44))
        
        let slippersView = UIView()
        slippersView.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer, path5Layer, path6Layer)
        return slippersView
    }
    
}
