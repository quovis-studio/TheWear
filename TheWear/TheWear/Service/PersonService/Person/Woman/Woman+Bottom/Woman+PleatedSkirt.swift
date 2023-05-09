/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawPleatedSkirt(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 102.32, y: 0))
        path.addCurve(to: CGPoint(x: 21.46, y: 0.26), controlPoint1: CGPoint(x: 88.7, y: 0), controlPoint2: CGPoint(x: 21.46, y: 0.26))
        path.addCurve(to: CGPoint(x: 11.82, y: 30.81), controlPoint1: CGPoint(x: 21.46, y: 0.26), controlPoint2: CGPoint(x: 14.62, y: 11.72))
        path.addCurve(to: CGPoint(x: 0.14, y: 93.73), controlPoint1: CGPoint(x: 9.02, y: 49.9), controlPoint2: CGPoint(x: -1.32, y: 87.5))
        path.addCurve(to: CGPoint(x: 30.3, y: 101.87), controlPoint1: CGPoint(x: 0.64, y: 95.86), controlPoint2: CGPoint(x: 10.66, y: 102.85))
        path.addCurve(to: CGPoint(x: 66.24, y: 106.61), controlPoint1: CGPoint(x: 29.23, y: 108.1), controlPoint2: CGPoint(x: 55.65, y: 108.42))
        path.addCurve(to: CGPoint(x: 100.36, y: 101.87), controlPoint1: CGPoint(x: 66.24, y: 111.41), controlPoint2: CGPoint(x: 92.56, y: 107.58))
        path.addCurve(to: CGPoint(x: 129.37, y: 94.86), controlPoint1: CGPoint(x: 101.33, y: 105.59), controlPoint2: CGPoint(x: 128.9, y: 96.94))
        path.addCurve(to: CGPoint(x: 102.32, y: 0), controlPoint1: CGPoint(x: 131.16, y: 87.04), controlPoint2: CGPoint(x: 109.27, y: 33.16))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 68.79, y: 291.55))
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 102.32, y: 0))
        path1.addCurve(to: CGPoint(x: 21.46, y: 0.26), controlPoint1: CGPoint(x: 88.7, y: 0), controlPoint2: CGPoint(x: 21.46, y: 0.26))
        path1.addCurve(to: CGPoint(x: 11.82, y: 30.81), controlPoint1: CGPoint(x: 21.46, y: 0.26), controlPoint2: CGPoint(x: 14.62, y: 11.72))
        path1.addCurve(to: CGPoint(x: 0.14, y: 93.73), controlPoint1: CGPoint(x: 9.02, y: 49.9), controlPoint2: CGPoint(x: -1.32, y: 87.5))
        path1.addCurve(to: CGPoint(x: 30.3, y: 101.87), controlPoint1: CGPoint(x: 0.64, y: 95.86), controlPoint2: CGPoint(x: 10.66, y: 102.85))
        path1.addCurve(to: CGPoint(x: 66.24, y: 106.61), controlPoint1: CGPoint(x: 29.23, y: 108.1), controlPoint2: CGPoint(x: 55.65, y: 108.42))
        path1.addCurve(to: CGPoint(x: 100.36, y: 101.87), controlPoint1: CGPoint(x: 66.24, y: 111.41), controlPoint2: CGPoint(x: 92.56, y: 107.58))
        path1.addCurve(to: CGPoint(x: 129.37, y: 94.86), controlPoint1: CGPoint(x: 101.33, y: 105.59), controlPoint2: CGPoint(x: 128.9, y: 96.94))
        path1.addCurve(to: CGPoint(x: 102.32, y: 0), controlPoint1: CGPoint(x: 131.16, y: 87.04), controlPoint2: CGPoint(x: 109.27, y: 33.16))
        path1.close()
        let path1Layer = createLayer(path1, Color.shadow.light, CGPoint(x: 68.79, y: 291.55))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 8.98, y: 1.17))
        path2.addCurve(to: CGPoint(x: 0.03, y: 59.49), controlPoint1: CGPoint(x: 9.47, y: -9.73), controlPoint2: CGPoint(x: 0.12, y: 58.84))
        path2.addCurve(to: CGPoint(x: 1.18, y: 61.85), controlPoint1: CGPoint(x: -0.05, y: 60.13), controlPoint2: CGPoint(x: -0.05, y: 60.89))
        path2.addCurve(to: CGPoint(x: 8.98, y: 1.17), controlPoint1: CGPoint(x: 2.41, y: 62.82), controlPoint2: CGPoint(x: 8.49, y: 12.07))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 99.06, y: 333.93))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 0.37, y: 1.28))
        path3.addCurve(to: CGPoint(x: 1.04, y: 60.06), controlPoint1: CGPoint(x: -0.75, y: -10.14), controlPoint2: CGPoint(x: 1.04, y: 58.78))
        path3.addCurve(to: CGPoint(x: 2.73, y: 62.42), controlPoint1: CGPoint(x: 1.04, y: 61.34), controlPoint2: CGPoint(x: 1.08, y: 61.78))
        path3.addCurve(to: CGPoint(x: 0.37, y: 1.28), controlPoint1: CGPoint(x: 4.37, y: 63.07), controlPoint2: CGPoint(x: 1.49, y: 12.69))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.bold, CGPoint(x: 133.95, y: 337.34))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0.01, y: 0.41))
        path4.addCurve(to: CGPoint(x: 13.16, y: 61.98), controlPoint1: CGPoint(x: -0.33, y: -5.86), controlPoint2: CGPoint(x: 14.58, y: 62.07))
        path4.addCurve(to: CGPoint(x: 10.85, y: 60.66), controlPoint1: CGPoint(x: 11.74, y: 61.88), controlPoint2: CGPoint(x: 11.02, y: 61.71))
        path4.addCurve(to: CGPoint(x: 0.01, y: 0.41), controlPoint1: CGPoint(x: 10.68, y: 59.62), controlPoint2: CGPoint(x: 0.34, y: 6.68))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.bold, CGPoint(x: 158.17, y: 332.35))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 2.84, y: 0.15))
        path5.addCurve(to: CGPoint(x: 44.35, y: 4.11), controlPoint1: CGPoint(x: 4.06, y: 1.17), controlPoint2: CGPoint(x: 21.33, y: 4.46))
        path5.addCurve(to: CGPoint(x: 78.6, y: 0.01), controlPoint1: CGPoint(x: 67.37, y: 3.76), controlPoint2: CGPoint(x: 77.88, y: 0.5))
        path5.addCurve(to: CGPoint(x: 81.1, y: 14.49), controlPoint1: CGPoint(x: 79.31, y: -0.47), controlPoint2: CGPoint(x: 81.66, y: 13.65))
        path5.addCurve(to: CGPoint(x: 44.67, y: 17.82), controlPoint1: CGPoint(x: 80.53, y: 15.33), controlPoint2: CGPoint(x: 64.72, y: 17.42))
        path5.addCurve(to: CGPoint(x: 0.02, y: 14.6), controlPoint1: CGPoint(x: 24.63, y: 18.22), controlPoint2: CGPoint(x: 0.26, y: 16.57))
        path5.addCurve(to: CGPoint(x: 2.84, y: 0.15), controlPoint1: CGPoint(x: -0.22, y: 12.63), controlPoint2: CGPoint(x: 1.63, y: -0.88))
        path5.close()
        let path5Layer = createLayer(path5, color, CGPoint(x: 90.06, y: 277.38))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 2.84, y: 0.15))
        path6.addCurve(to: CGPoint(x: 44.35, y: 4.11), controlPoint1: CGPoint(x: 4.06, y: 1.17), controlPoint2: CGPoint(x: 21.33, y: 4.46))
        path6.addCurve(to: CGPoint(x: 78.6, y: 0.01), controlPoint1: CGPoint(x: 67.37, y: 3.76), controlPoint2: CGPoint(x: 77.88, y: 0.5))
        path6.addCurve(to: CGPoint(x: 81.1, y: 14.49), controlPoint1: CGPoint(x: 79.31, y: -0.47), controlPoint2: CGPoint(x: 81.66, y: 13.65))
        path6.addCurve(to: CGPoint(x: 44.67, y: 17.82), controlPoint1: CGPoint(x: 80.53, y: 15.33), controlPoint2: CGPoint(x: 64.72, y: 17.42))
        path6.addCurve(to: CGPoint(x: 0.02, y: 14.6), controlPoint1: CGPoint(x: 24.63, y: 18.22), controlPoint2: CGPoint(x: 0.26, y: 16.57))
        path6.addCurve(to: CGPoint(x: 2.84, y: 0.15), controlPoint1: CGPoint(x: -0.22, y: 12.63), controlPoint2: CGPoint(x: 1.63, y: -0.88))
        path6.close()
        let path6Layer = createLayer(path6, Color.shadow.medium, CGPoint(x: 90.06, y: 277.38))
        
        let bottom = UIView()
        bottom.layer.addSublayers(pathLayer, path1Layer, path2Layer, path3Layer, path4Layer, path5Layer, path6Layer)
        return bottom
    }
    
}
