/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawLongSkirt(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 88.46, y: 0))
        path.addCurve(to: CGPoint(x: 7.53, y: 0.21), controlPoint1: CGPoint(x: 74.84, y: 0), controlPoint2: CGPoint(x: 7.53, y: 0.21))
        path.addCurve(to: CGPoint(x: 0.02, y: 36.11), controlPoint1: CGPoint(x: 6.85, y: 2.48), controlPoint2: CGPoint(x: 0.56, y: 19.04))
        path.addCurve(to: CGPoint(x: 8.26, y: 144.74), controlPoint1: CGPoint(x: -0.35, y: 47.78), controlPoint2: CGPoint(x: 5.57, y: 102.92))
        path.addCurve(to: CGPoint(x: 8.26, y: 188.25), controlPoint1: CGPoint(x: 9.5, y: 164.08), controlPoint2: CGPoint(x: 8.46, y: 171.42))
        path.addCurve(to: CGPoint(x: 104.89, y: 184.24), controlPoint1: CGPoint(x: 8.07, y: 205.07), controlPoint2: CGPoint(x: 106.04, y: 205.88))
        path.addCurve(to: CGPoint(x: 98.74, y: 97.8), controlPoint1: CGPoint(x: 103.74, y: 162.6), controlPoint2: CGPoint(x: 101.17, y: 133.5))
        path.addCurve(to: CGPoint(x: 88.46, y: 0), controlPoint1: CGPoint(x: 96.18, y: 60.2), controlPoint2: CGPoint(x: 90.12, y: 13.45))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 82.64, y: 291.63))
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 88.46, y: 0))
        path1.addCurve(to: CGPoint(x: 7.53, y: 0.21), controlPoint1: CGPoint(x: 74.84, y: 0), controlPoint2: CGPoint(x: 7.53, y: 0.21))
        path1.addCurve(to: CGPoint(x: 0.02, y: 36.11), controlPoint1: CGPoint(x: 6.85, y: 2.48), controlPoint2: CGPoint(x: 0.56, y: 19.04))
        path1.addCurve(to: CGPoint(x: 8.26, y: 144.74), controlPoint1: CGPoint(x: -0.35, y: 47.78), controlPoint2: CGPoint(x: 5.57, y: 102.92))
        path1.addCurve(to: CGPoint(x: 8.26, y: 188.25), controlPoint1: CGPoint(x: 9.5, y: 164.08), controlPoint2: CGPoint(x: 8.46, y: 171.42))
        path1.addCurve(to: CGPoint(x: 104.89, y: 184.24), controlPoint1: CGPoint(x: 8.07, y: 205.07), controlPoint2: CGPoint(x: 106.04, y: 205.88))
        path1.addCurve(to: CGPoint(x: 98.74, y: 97.8), controlPoint1: CGPoint(x: 103.74, y: 162.6), controlPoint2: CGPoint(x: 101.17, y: 133.5))
        path1.addCurve(to: CGPoint(x: 88.46, y: 0), controlPoint1: CGPoint(x: 96.18, y: 60.2), controlPoint2: CGPoint(x: 90.12, y: 13.45))
        path1.close()
        let path1Layer = createLayer(path1, Color.shadow.light, CGPoint(x: 82.64, y: 291.63))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 2.84, y: 0.15))
        path2.addCurve(to: CGPoint(x: 44.35, y: 4.11), controlPoint1: CGPoint(x: 4.06, y: 1.17), controlPoint2: CGPoint(x: 21.33, y: 4.46))
        path2.addCurve(to: CGPoint(x: 78.6, y: 0.01), controlPoint1: CGPoint(x: 67.37, y: 3.76), controlPoint2: CGPoint(x: 77.88, y: 0.5))
        path2.addCurve(to: CGPoint(x: 81.1, y: 14.49), controlPoint1: CGPoint(x: 79.31, y: -0.47), controlPoint2: CGPoint(x: 81.66, y: 13.65))
        path2.addCurve(to: CGPoint(x: 44.67, y: 17.82), controlPoint1: CGPoint(x: 80.53, y: 15.33), controlPoint2: CGPoint(x: 64.72, y: 17.42))
        path2.addCurve(to: CGPoint(x: 0.02, y: 14.6), controlPoint1: CGPoint(x: 24.63, y: 18.22), controlPoint2: CGPoint(x: 0.26, y: 16.57))
        path2.addCurve(to: CGPoint(x: 2.84, y: 0.15), controlPoint1: CGPoint(x: -0.22, y: 12.63), controlPoint2: CGPoint(x: 1.63, y: -0.88))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 90.06, y: 277.38))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 2.84, y: 0.15))
        path3.addCurve(to: CGPoint(x: 44.35, y: 4.11), controlPoint1: CGPoint(x: 4.06, y: 1.17), controlPoint2: CGPoint(x: 21.33, y: 4.46))
        path3.addCurve(to: CGPoint(x: 78.6, y: 0.01), controlPoint1: CGPoint(x: 67.37, y: 3.76), controlPoint2: CGPoint(x: 77.88, y: 0.5))
        path3.addCurve(to: CGPoint(x: 81.1, y: 14.49), controlPoint1: CGPoint(x: 79.31, y: -0.47), controlPoint2: CGPoint(x: 81.66, y: 13.65))
        path3.addCurve(to: CGPoint(x: 44.67, y: 17.82), controlPoint1: CGPoint(x: 80.53, y: 15.33), controlPoint2: CGPoint(x: 64.72, y: 17.42))
        path3.addCurve(to: CGPoint(x: 0.02, y: 14.6), controlPoint1: CGPoint(x: 24.63, y: 18.22), controlPoint2: CGPoint(x: 0.26, y: 16.57))
        path3.addCurve(to: CGPoint(x: 2.84, y: 0.15), controlPoint1: CGPoint(x: -0.22, y: 12.63), controlPoint2: CGPoint(x: 1.63, y: -0.88))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.medium, CGPoint(x: 90.06, y: 277.38))
        
        let bottom = UIView()
        bottom.layer.addSublayers(pathLayer, path1Layer, path2Layer, path3Layer)
        return bottom
    }
    
}
