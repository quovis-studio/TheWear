/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawWidePants(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 48.87, y: 245.02))
        path.addCurve(to: CGPoint(x: 80.59, y: 243.22), controlPoint1: CGPoint(x: 52.14, y: 249.31), controlPoint2: CGPoint(x: 78.61, y: 247.8))
        path.addCurve(to: CGPoint(x: 72, y: 137.49), controlPoint1: CGPoint(x: 82.56, y: 238.64), controlPoint2: CGPoint(x: 73.17, y: 164.64))
        path.addCurve(to: CGPoint(x: 58.19, y: 0), controlPoint1: CGPoint(x: 70.82, y: 110.34), controlPoint2: CGPoint(x: 58.19, y: 0))
        path.addLine(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: 32.02, y: 145.2))
        path.addCurve(to: CGPoint(x: 37.51, y: 184.39), controlPoint1: CGPoint(x: 32.02, y: 145.2), controlPoint2: CGPoint(x: 34.78, y: 165.46))
        path.addLine(to: CGPoint(x: 37.59, y: 184.94))
        path.addCurve(to: CGPoint(x: 48.87, y: 245.02), controlPoint1: CGPoint(x: 40.34, y: 204.03), controlPoint2: CGPoint(x: 45.64, y: 240.77))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 117.01, y: 316))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 48.87, y: 245.02))
        path2.addCurve(to: CGPoint(x: 80.59, y: 243.22), controlPoint1: CGPoint(x: 52.14, y: 249.31), controlPoint2: CGPoint(x: 78.61, y: 247.8))
        path2.addCurve(to: CGPoint(x: 72, y: 137.49), controlPoint1: CGPoint(x: 82.56, y: 238.64), controlPoint2: CGPoint(x: 73.17, y: 164.64))
        path2.addCurve(to: CGPoint(x: 58.19, y: 0), controlPoint1: CGPoint(x: 70.82, y: 110.34), controlPoint2: CGPoint(x: 58.19, y: 0))
        path2.addLine(to: CGPoint.zero)
        path2.addLine(to: CGPoint(x: 32.02, y: 145.2))
        path2.addCurve(to: CGPoint(x: 37.51, y: 184.39), controlPoint1: CGPoint(x: 32.02, y: 145.2), controlPoint2: CGPoint(x: 34.78, y: 165.46))
        path2.addLine(to: CGPoint(x: 37.59, y: 184.94))
        path2.addCurve(to: CGPoint(x: 48.87, y: 245.02), controlPoint1: CGPoint(x: 40.34, y: 204.03), controlPoint2: CGPoint(x: 45.64, y: 240.77))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 117.01, y: 316))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 46.27, y: 144.76))
        path3.addCurve(to: CGPoint(x: 59.76, y: 0), controlPoint1: CGPoint(x: 50.3, y: 123.91), controlPoint2: CGPoint(x: 59.76, y: 0))
        path3.addLine(to: CGPoint(x: 2.26, y: 0))
        path3.addLine(to: CGPoint(x: 5.15, y: 147.54))
        path3.addCurve(to: CGPoint(x: 3.98, y: 174.07), controlPoint1: CGPoint(x: 5.15, y: 147.54), controlPoint2: CGPoint(x: 4.5, y: 159.28))
        path3.addCurve(to: CGPoint(x: 0.06, y: 243.43), controlPoint1: CGPoint(x: 3.47, y: 188.86), controlPoint2: CGPoint(x: -0.51, y: 237.63))
        path3.addCurve(to: CGPoint(x: 32.41, y: 244.07), controlPoint1: CGPoint(x: 0.62, y: 249.24), controlPoint2: CGPoint(x: 30.26, y: 248.13))
        path3.addCurve(to: CGPoint(x: 46.27, y: 144.76), controlPoint1: CGPoint(x: 34.56, y: 240.01), controlPoint2: CGPoint(x: 42.24, y: 165.61))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 84, y: 316))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 46.27, y: 144.76))
        path4.addCurve(to: CGPoint(x: 59.76, y: 0), controlPoint1: CGPoint(x: 50.3, y: 123.91), controlPoint2: CGPoint(x: 59.76, y: 0))
        path4.addLine(to: CGPoint(x: 2.26, y: 0))
        path4.addLine(to: CGPoint(x: 5.15, y: 147.54))
        path4.addCurve(to: CGPoint(x: 3.98, y: 174.07), controlPoint1: CGPoint(x: 5.15, y: 147.54), controlPoint2: CGPoint(x: 4.5, y: 159.28))
        path4.addCurve(to: CGPoint(x: 0.06, y: 243.43), controlPoint1: CGPoint(x: 3.47, y: 188.86), controlPoint2: CGPoint(x: -0.51, y: 237.63))
        path4.addCurve(to: CGPoint(x: 32.41, y: 244.07), controlPoint1: CGPoint(x: 0.62, y: 249.24), controlPoint2: CGPoint(x: 30.26, y: 248.13))
        path4.addCurve(to: CGPoint(x: 46.27, y: 144.76), controlPoint1: CGPoint(x: 34.56, y: 240.01), controlPoint2: CGPoint(x: 42.24, y: 165.61))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.light, CGPoint(x: 84, y: 316))
        
        let widePantsView = UIView()
        widePantsView.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer)
        return widePantsView
    }
    
}
