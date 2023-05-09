/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBaseballCapForBang(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 17.6, y: 5.31))
        path.addCurve(to: CGPoint(x: 0, y: 5.31), controlPoint1: CGPoint(x: 13.34, y: 9.09), controlPoint2: CGPoint(x: 3.68, y: 7.82))
        path.addLine(to: CGPoint(x: 0.82, y: 1.31))
        path.addLine(to: CGPoint(x: 8.37, y: 0))
        path.addCurve(to: CGPoint(x: 17.6, y: 5.31), controlPoint1: CGPoint(x: 11.63, y: 0), controlPoint2: CGPoint(x: 21.86, y: 1.52))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 156.96, y: 64.75))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 17.6, y: 5.31))
        path2.addCurve(to: CGPoint(x: 0, y: 5.31), controlPoint1: CGPoint(x: 13.34, y: 9.09), controlPoint2: CGPoint(x: 3.68, y: 7.82))
        path2.addLine(to: CGPoint(x: 0.82, y: 1.31))
        path2.addLine(to: CGPoint(x: 8.37, y: 0))
        path2.addCurve(to: CGPoint(x: 17.6, y: 5.31), controlPoint1: CGPoint(x: 11.63, y: 0), controlPoint2: CGPoint(x: 21.86, y: 1.52))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.heavy, CGPoint(x: 156.96, y: 64.75))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 44.35, y: 89.84))
        path3.addCurve(to: CGPoint(x: 60.64, y: 94.33), controlPoint1: CGPoint(x: 50.98, y: 94.98), controlPoint2: CGPoint(x: 56.45, y: 99.22))
        path3.addCurve(to: CGPoint(x: 42.03, y: 6.15), controlPoint1: CGPoint(x: 69.99, y: 83.42), controlPoint2: CGPoint(x: 60, y: 13.08))
        path3.addCurve(to: CGPoint(x: 7.65, y: 6.15), controlPoint1: CGPoint(x: 24.06, y: -0.79), controlPoint2: CGPoint(x: 16.56, y: -3.22))
        path3.addCurve(to: CGPoint(x: 14.3, y: 82.27), controlPoint1: CGPoint(x: -1.2, y: 15.45), controlPoint2: CGPoint(x: -6.1, y: 92.37))
        path3.addLine(to: CGPoint(x: 17.15, y: 46.44))
        path3.addLine(to: CGPoint(x: 31.21, y: 59.03))
        path3.addLine(to: CGPoint(x: 33.91, y: 82.67))
        path3.addCurve(to: CGPoint(x: 44.35, y: 89.84), controlPoint1: CGPoint(x: 37.65, y: 84.65), controlPoint2: CGPoint(x: 41.14, y: 87.35))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 104.77, y: 45.34))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 21.71, y: 24.3))
        path5.addCurve(to: CGPoint(x: 28.86, y: 31.15), controlPoint1: CGPoint(x: 27.21, y: 23.8), controlPoint2: CGPoint(x: 27.03, y: 30.48))
        path5.addCurve(to: CGPoint(x: 33.59, y: 14.1), controlPoint1: CGPoint(x: 30.69, y: 31.83), controlPoint2: CGPoint(x: 32.56, y: 23.33))
        path5.addCurve(to: CGPoint(x: 37.48, y: 4.3), controlPoint1: CGPoint(x: 34.54, y: 5.5), controlPoint2: CGPoint(x: 35.88, y: 0.59))
        path5.addCurve(to: CGPoint(x: 26.04, y: 2.29), controlPoint1: CGPoint(x: 33.58, y: -4.73), controlPoint2: CGPoint(x: 34.81, y: 3.45))
        path5.addCurve(to: CGPoint(x: 7.88, y: 15.53), controlPoint1: CGPoint(x: 17.27, y: 1.13), controlPoint2: CGPoint(x: 7.58, y: 7.3))
        path5.addCurve(to: CGPoint(x: 1.59, y: 85.02), controlPoint1: CGPoint(x: 8.82, y: 41.71), controlPoint2: CGPoint(x: -4.47, y: 73.77))
        path5.addCurve(to: CGPoint(x: 29.95, y: 94.15), controlPoint1: CGPoint(x: 7.65, y: 96.28), controlPoint2: CGPoint(x: 27.69, y: 100.42))
        path5.addCurve(to: CGPoint(x: 26.04, y: 57.96), controlPoint1: CGPoint(x: 31.28, y: 90.42), controlPoint2: CGPoint(x: 28.23, y: 65.97))
        path5.addCurve(to: CGPoint(x: 18.63, y: 41.71), controlPoint1: CGPoint(x: 23.85, y: 49.95), controlPoint2: CGPoint(x: 19.28, y: 43.01))
        path5.addCurve(to: CGPoint(x: 21.71, y: 24.3), controlPoint1: CGPoint(x: 13.13, y: 30.71), controlPoint2: CGPoint(x: 16.21, y: 24.8))
        path5.close()
        let path5Layer = createLayer(path5, hairColor, CGPoint(x: 96.68, y: 47.73))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 16.79, y: 2.63))
        path6.addCurve(to: CGPoint(x: 57.1, y: 23.62), controlPoint1: CGPoint(x: 36.5, y: -4.48), controlPoint2: CGPoint(x: 53.06, y: 2.93))
        path6.addCurve(to: CGPoint(x: 21.61, y: 31.62), controlPoint1: CGPoint(x: 36.9, y: 22.51), controlPoint2: CGPoint(x: 21.86, y: 27.52))
        path6.addCurve(to: CGPoint(x: 2.26, y: 38.06), controlPoint1: CGPoint(x: 21.37, y: 35.72), controlPoint2: CGPoint(x: 10.48, y: 31.62))
        path6.addCurve(to: CGPoint(x: 16.79, y: 2.63), controlPoint1: CGPoint(x: -1.44, y: 40.97), controlPoint2: CGPoint(x: -2.93, y: 9.74))
        path6.close()
        let path6Layer = createLayer(path6, color, CGPoint(x: 102.24, y: 37.36))
        
        let koz = UIBezierPath()
        koz.move(to: CGPoint(x: 0, y: 12.68))
        koz.addCurve(to: CGPoint(x: 38.46, y: 1.96), controlPoint1: CGPoint(x: 13.22, y: -1.82), controlPoint2: CGPoint(x: 28.1, y: -1.45))
        koz.addCurve(to: CGPoint(x: 54.83, y: 10.13), controlPoint1: CGPoint(x: 38.46, y: 1.96), controlPoint2: CGPoint(x: 55.44, y: 6.95))
        koz.addCurve(to: CGPoint(x: 29.45, y: 15.19), controlPoint1: CGPoint(x: 48.62, y: 6.19), controlPoint2: CGPoint(x: 38.25, y: 8.29))
        koz.addCurve(to: CGPoint(x: 0, y: 12.68), controlPoint1: CGPoint(x: 20.65, y: 22.09), controlPoint2: CGPoint(x: 12.23, y: 18.33))
        koz.close()
        let kozLayer = createLayer(koz, color, CGPoint(x: 120.74, y: 58.32))
        
        let kozs = UIBezierPath()
        kozs.move(to: CGPoint(x: 0, y: 12.68))
        kozs.addCurve(to: CGPoint(x: 38.46, y: 1.96), controlPoint1: CGPoint(x: 13.22, y: -1.82), controlPoint2: CGPoint(x: 28.1, y: -1.45))
        kozs.addCurve(to: CGPoint(x: 54.83, y: 10.13), controlPoint1: CGPoint(x: 38.46, y: 1.96), controlPoint2: CGPoint(x: 55.44, y: 6.95))
        kozs.addCurve(to: CGPoint(x: 29.45, y: 15.19), controlPoint1: CGPoint(x: 48.62, y: 6.19), controlPoint2: CGPoint(x: 38.25, y: 8.29))
        kozs.addCurve(to: CGPoint(x: 0, y: 12.68), controlPoint1: CGPoint(x: 20.65, y: 22.09), controlPoint2: CGPoint(x: 12.23, y: 18.33))
        kozs.close()
        let kozsLayer = createLayer(kozs, Color.shadow.bold, CGPoint(x: 120.74, y: 58.32))
        
        let cap = UIView()
        cap.layer.addSublayers(pathLayer, path2Layer, path3Layer, headLayer, path5Layer, path6Layer, kozLayer, kozsLayer)
        return cap
    }
    
}
