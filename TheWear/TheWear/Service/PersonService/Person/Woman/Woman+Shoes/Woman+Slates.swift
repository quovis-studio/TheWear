/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSlates(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.6, y: 4.74))
        path.addCurve(to: CGPoint(x: 0.6, y: 0.6), controlPoint1: CGPoint(x: -0.04, y: 3.77), controlPoint2: CGPoint(x: -0.35, y: 1.4))
        path.addCurve(to: CGPoint(x: 55.04, y: 0.6), controlPoint1: CGPoint(x: 1.54, y: -0.19), controlPoint2: CGPoint(x: 54.36, y: -0.21))
        path.addCurve(to: CGPoint(x: 55.04, y: 4.74), controlPoint1: CGPoint(x: 55.71, y: 1.42), controlPoint2: CGPoint(x: 55.83, y: 3.95))
        path.addCurve(to: CGPoint(x: 0.6, y: 4.74), controlPoint1: CGPoint(x: 54.24, y: 5.53), controlPoint2: CGPoint(x: 1.23, y: 5.72))
        path.close()
        let pathLayer = createLayer(path, .white, CGPoint(x: 83.46, y: 589.55))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.6, y: 4.74))
        path2.addCurve(to: CGPoint(x: 0.6, y: 0.6), controlPoint1: CGPoint(x: -0.04, y: 3.77), controlPoint2: CGPoint(x: -0.35, y: 1.4))
        path2.addCurve(to: CGPoint(x: 55.04, y: 0.6), controlPoint1: CGPoint(x: 1.54, y: -0.19), controlPoint2: CGPoint(x: 54.36, y: -0.21))
        path2.addCurve(to: CGPoint(x: 55.04, y: 4.74), controlPoint1: CGPoint(x: 55.71, y: 1.42), controlPoint2: CGPoint(x: 55.83, y: 3.95))
        path2.addCurve(to: CGPoint(x: 0.6, y: 4.74), controlPoint1: CGPoint(x: 54.24, y: 5.53), controlPoint2: CGPoint(x: 1.23, y: 5.72))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 83.46, y: 589.55))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 20.8, y: 0))
        path3.addCurve(to: CGPoint(x: 0, y: 10.13), controlPoint1: CGPoint(x: 17.59, y: 0.02), controlPoint2: CGPoint(x: 1.59, y: 4.26))
        path3.addLine(to: CGPoint(x: 4.94, y: 10.13))
        path3.addCurve(to: CGPoint(x: 25.13, y: 1.75), controlPoint1: CGPoint(x: 8.79, y: 5.26), controlPoint2: CGPoint(x: 20.79, y: 2.14))
        path3.addCurve(to: CGPoint(x: 20.8, y: 0), controlPoint1: CGPoint(x: 26.76, y: 1.61), controlPoint2: CGPoint(x: 24.01, y: -0.02))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 97.29, y: 580.06))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0.6, y: 4.74))
        path4.addCurve(to: CGPoint(x: 0.6, y: 0.6), controlPoint1: CGPoint(x: -0.04, y: 3.77), controlPoint2: CGPoint(x: -0.35, y: 1.4))
        path4.addCurve(to: CGPoint(x: 55.04, y: 0.6), controlPoint1: CGPoint(x: 1.54, y: -0.19), controlPoint2: CGPoint(x: 54.36, y: -0.21))
        path4.addCurve(to: CGPoint(x: 55.04, y: 4.74), controlPoint1: CGPoint(x: 55.71, y: 1.42), controlPoint2: CGPoint(x: 55.83, y: 3.95))
        path4.addCurve(to: CGPoint(x: 0.6, y: 4.74), controlPoint1: CGPoint(x: 54.24, y: 5.53), controlPoint2: CGPoint(x: 1.23, y: 5.72))
        path4.close()
        let path4Layer = createLayer(path4, .white, CGPoint(x: 173.49, y: 589.55))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 0.6, y: 4.74))
        path5.addCurve(to: CGPoint(x: 0.6, y: 0.6), controlPoint1: CGPoint(x: -0.04, y: 3.77), controlPoint2: CGPoint(x: -0.35, y: 1.4))
        path5.addCurve(to: CGPoint(x: 55.04, y: 0.6), controlPoint1: CGPoint(x: 1.54, y: -0.19), controlPoint2: CGPoint(x: 54.36, y: -0.21))
        path5.addCurve(to: CGPoint(x: 55.04, y: 4.74), controlPoint1: CGPoint(x: 55.71, y: 1.42), controlPoint2: CGPoint(x: 55.83, y: 3.95))
        path5.addCurve(to: CGPoint(x: 0.6, y: 4.74), controlPoint1: CGPoint(x: 54.24, y: 5.53), controlPoint2: CGPoint(x: 1.23, y: 5.72))
        path5.close()
        let path5Layer = createLayer(path5, Color.shadow.medium, CGPoint(x: 173.49, y: 589.55))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 18.9, y: 0.04))
        path6.addCurve(to: CGPoint(x: 0, y: 9.83), controlPoint1: CGPoint(x: 15.88, y: 0.38), controlPoint2: CGPoint(x: 1.59, y: 3.96))
        path6.addLine(to: CGPoint(x: 4.94, y: 9.83))
        path6.addCurve(to: CGPoint(x: 24.28, y: 1.59), controlPoint1: CGPoint(x: 8.79, y: 4.96), controlPoint2: CGPoint(x: 19.94, y: 1.97))
        path6.addCurve(to: CGPoint(x: 18.9, y: 0.04), controlPoint1: CGPoint(x: 25.91, y: 1.44), controlPoint2: CGPoint(x: 21.93, y: -0.29))
        path6.close()
        let path6Layer = createLayer(path6, color, CGPoint(x: 187.33, y: 580.35))
        
        let shoes = UIView()
        shoes.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer, path5Layer, path6Layer)
        return shoes
    }
    
}
