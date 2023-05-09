/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSlippers(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.6, y: 4.78))
        path.addCurve(to: CGPoint(x: 0.6, y: 0.61), controlPoint1: CGPoint(x: -0.04, y: 3.8), controlPoint2: CGPoint(x: -0.35, y: 1.41))
        path.addCurve(to: CGPoint(x: 55.43, y: 0.61), controlPoint1: CGPoint(x: 1.55, y: -0.19), controlPoint2: CGPoint(x: 54.75, y: -0.21))
        path.addCurve(to: CGPoint(x: 55.43, y: 4.78), controlPoint1: CGPoint(x: 56.11, y: 1.43), controlPoint2: CGPoint(x: 56.23, y: 3.98))
        path.addCurve(to: CGPoint(x: 0.6, y: 4.78), controlPoint1: CGPoint(x: 54.63, y: 5.57), controlPoint2: CGPoint(x: 1.24, y: 5.75))
        path.close()
        let pathLayer = createLayer(path, .white, CGPoint(x: 83.03, y: 589.9))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.6, y: 4.78))
        path2.addCurve(to: CGPoint(x: 0.6, y: 0.61), controlPoint1: CGPoint(x: -0.04, y: 3.8), controlPoint2: CGPoint(x: -0.35, y: 1.41))
        path2.addCurve(to: CGPoint(x: 55.43, y: 0.61), controlPoint1: CGPoint(x: 1.55, y: -0.19), controlPoint2: CGPoint(x: 54.75, y: -0.21))
        path2.addCurve(to: CGPoint(x: 55.43, y: 4.78), controlPoint1: CGPoint(x: 56.11, y: 1.43), controlPoint2: CGPoint(x: 56.23, y: 3.98))
        path2.addCurve(to: CGPoint(x: 0.6, y: 4.78), controlPoint1: CGPoint(x: 54.63, y: 5.57), controlPoint2: CGPoint(x: 1.24, y: 5.75))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 83.03, y: 589.9))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 10.63, y: 0.01))
        path3.addCurve(to: CGPoint(x: 0, y: 13.17), controlPoint1: CGPoint(x: 6.81, y: -0.31), controlPoint2: CGPoint(x: 0.79, y: 6.58))
        path3.addLine(to: CGPoint(x: 18.7, y: 13.17))
        path3.addCurve(to: CGPoint(x: 25.44, y: 4.72), controlPoint1: CGPoint(x: 20.17, y: 9.43), controlPoint2: CGPoint(x: 21.3, y: 7.04))
        path3.addCurve(to: CGPoint(x: 10.63, y: 0.01), controlPoint1: CGPoint(x: 28.05, y: 3.25), controlPoint2: CGPoint(x: 13.75, y: 0.28))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 98.8, y: 577.37))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0.6, y: 4.78))
        path4.addCurve(to: CGPoint(x: 0.6, y: 0.61), controlPoint1: CGPoint(x: -0.04, y: 3.8), controlPoint2: CGPoint(x: -0.35, y: 1.41))
        path4.addCurve(to: CGPoint(x: 55.43, y: 0.61), controlPoint1: CGPoint(x: 1.55, y: -0.19), controlPoint2: CGPoint(x: 54.75, y: -0.21))
        path4.addCurve(to: CGPoint(x: 55.43, y: 4.78), controlPoint1: CGPoint(x: 56.11, y: 1.43), controlPoint2: CGPoint(x: 56.23, y: 3.98))
        path4.addCurve(to: CGPoint(x: 0.6, y: 4.78), controlPoint1: CGPoint(x: 54.63, y: 5.57), controlPoint2: CGPoint(x: 1.24, y: 5.76))
        path4.close()
        let path4Layer = createLayer(path4, .white, CGPoint(x: 173.13, y: 589.9))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 0.6, y: 4.78))
        path5.addCurve(to: CGPoint(x: 0.6, y: 0.61), controlPoint1: CGPoint(x: -0.04, y: 3.8), controlPoint2: CGPoint(x: -0.35, y: 1.41))
        path5.addCurve(to: CGPoint(x: 55.43, y: 0.61), controlPoint1: CGPoint(x: 1.55, y: -0.19), controlPoint2: CGPoint(x: 54.75, y: -0.21))
        path5.addCurve(to: CGPoint(x: 55.43, y: 4.78), controlPoint1: CGPoint(x: 56.11, y: 1.43), controlPoint2: CGPoint(x: 56.23, y: 3.98))
        path5.addCurve(to: CGPoint(x: 0.6, y: 4.78), controlPoint1: CGPoint(x: 54.63, y: 5.57), controlPoint2: CGPoint(x: 1.24, y: 5.76))
        path5.close()
        let path5Layer = createLayer(path5, Color.shadow.medium, CGPoint(x: 173.13, y: 589.9))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 10.16, y: 0.01))
        path6.addCurve(to: CGPoint(x: 0, y: 13.1), controlPoint1: CGPoint(x: 6.35, y: -0.31), controlPoint2: CGPoint(x: 0.79, y: 6.51))
        path6.addLine(to: CGPoint(x: 18.7, y: 13.1))
        path6.addCurve(to: CGPoint(x: 24.89, y: 4.93), controlPoint1: CGPoint(x: 20.17, y: 9.36), controlPoint2: CGPoint(x: 20.75, y: 7.25))
        path6.addCurve(to: CGPoint(x: 10.16, y: 0.01), controlPoint1: CGPoint(x: 27.51, y: 3.47), controlPoint2: CGPoint(x: 13.29, y: 0.28))
        path6.close()
        let path6Layer = createLayer(path6, color, CGPoint(x: 188.9, y: 577.44))
        
        let shoes = UIView()
        shoes.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer, path5Layer, path6Layer)
        return shoes
    }
    
}
