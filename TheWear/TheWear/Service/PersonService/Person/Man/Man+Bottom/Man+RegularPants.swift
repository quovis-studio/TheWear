/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawRegularPants(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50.33, y: 245.69))
        path.addCurve(to: CGPoint(x: 76.7, y: 243.86), controlPoint1: CGPoint(x: 51.89, y: 249.12), controlPoint2: CGPoint(x: 75.74, y: 247.14))
        path.addCurve(to: CGPoint(x: 70.18, y: 137.28), controlPoint1: CGPoint(x: 77.66, y: 240.59), controlPoint2: CGPoint(x: 71.36, y: 164.43))
        path.addCurve(to: CGPoint(x: 56.04, y: 0), controlPoint1: CGPoint(x: 69, y: 110.13), controlPoint2: CGPoint(x: 56.04, y: 0))
        path.addLine(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: 31.16, y: 144.96))
        path.addCurve(to: CGPoint(x: 37.31, y: 178.98), controlPoint1: CGPoint(x: 31.16, y: 144.96), controlPoint2: CGPoint(x: 33.59, y: 160.89))
        path.addCurve(to: CGPoint(x: 50.33, y: 245.69), controlPoint1: CGPoint(x: 41.02, y: 197.07), controlPoint2: CGPoint(x: 48.77, y: 242.26))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 118.71, y: 316))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 50.33, y: 245.69))
        path2.addCurve(to: CGPoint(x: 76.7, y: 243.86), controlPoint1: CGPoint(x: 51.89, y: 249.12), controlPoint2: CGPoint(x: 75.74, y: 247.14))
        path2.addCurve(to: CGPoint(x: 70.18, y: 137.28), controlPoint1: CGPoint(x: 77.66, y: 240.59), controlPoint2: CGPoint(x: 71.36, y: 164.43))
        path2.addCurve(to: CGPoint(x: 56.04, y: 0), controlPoint1: CGPoint(x: 69, y: 110.13), controlPoint2: CGPoint(x: 56.04, y: 0))
        path2.addLine(to: CGPoint.zero)
        path2.addLine(to: CGPoint(x: 31.16, y: 144.96))
        path2.addCurve(to: CGPoint(x: 37.31, y: 178.98), controlPoint1: CGPoint(x: 31.16, y: 144.96), controlPoint2: CGPoint(x: 33.59, y: 160.89))
        path2.addCurve(to: CGPoint(x: 50.33, y: 245.69), controlPoint1: CGPoint(x: 41.02, y: 197.07), controlPoint2: CGPoint(x: 48.77, y: 242.26))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 118.71, y: 316))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 44.17, y: 143.57))
        path3.addCurve(to: CGPoint(x: 59.15, y: 0), controlPoint1: CGPoint(x: 48.2, y: 122.72), controlPoint2: CGPoint(x: 59.15, y: 0))
        path3.addLine(to: CGPoint(x: 0.43, y: 0))
        path3.addLine(to: CGPoint(x: 3.08, y: 147.87))
        path3.addCurve(to: CGPoint(x: 1.82, y: 175.6), controlPoint1: CGPoint(x: 3.08, y: 147.87), controlPoint2: CGPoint(x: 2.49, y: 156.04))
        path3.addCurve(to: CGPoint(x: 0, y: 244.55), controlPoint1: CGPoint(x: 1.14, y: 195.16), controlPoint2: CGPoint(x: 0.02, y: 240.93))
        path3.addCurve(to: CGPoint(x: 27.59, y: 246.05), controlPoint1: CGPoint(x: -0.02, y: 248.17), controlPoint2: CGPoint(x: 26, y: 248.48))
        path3.addCurve(to: CGPoint(x: 44.17, y: 143.57), controlPoint1: CGPoint(x: 29.19, y: 243.61), controlPoint2: CGPoint(x: 40.14, y: 164.42))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 86.23, y: 316))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 44.17, y: 143.57))
        path4.addCurve(to: CGPoint(x: 59.15, y: 0), controlPoint1: CGPoint(x: 48.2, y: 122.72), controlPoint2: CGPoint(x: 59.15, y: 0))
        path4.addLine(to: CGPoint(x: 0.43, y: 0))
        path4.addLine(to: CGPoint(x: 3.08, y: 147.87))
        path4.addCurve(to: CGPoint(x: 1.82, y: 175.6), controlPoint1: CGPoint(x: 3.08, y: 147.87), controlPoint2: CGPoint(x: 2.49, y: 156.04))
        path4.addCurve(to: CGPoint(x: 0, y: 244.55), controlPoint1: CGPoint(x: 1.14, y: 195.16), controlPoint2: CGPoint(x: 0.02, y: 240.93))
        path4.addCurve(to: CGPoint(x: 27.59, y: 246.05), controlPoint1: CGPoint(x: -0.02, y: 248.17), controlPoint2: CGPoint(x: 26, y: 248.48))
        path4.addCurve(to: CGPoint(x: 44.17, y: 143.57), controlPoint1: CGPoint(x: 29.19, y: 243.61), controlPoint2: CGPoint(x: 40.14, y: 164.42))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.light, CGPoint(x: 86.23, y: 316))

        let regularPantsView = UIView()
        regularPantsView.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer)
        return regularPantsView
    }
    
}
