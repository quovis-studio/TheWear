/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBaseballCapForLong(_ color: UIColor) -> UIView {
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
        path3.move(to: CGPoint(x: 64.9, y: 116.79))
        path3.addCurve(to: CGPoint(x: 43.77, y: 10.74), controlPoint1: CGPoint(x: 81.45, y: 117.8), controlPoint2: CGPoint(x: 61.27, y: 28.1))
        path3.addCurve(to: CGPoint(x: 7.52, y: 9.51), controlPoint1: CGPoint(x: 26.27, y: -6.62), controlPoint2: CGPoint(x: 16.43, y: 0.14))
        path3.addCurve(to: CGPoint(x: 1.84, y: 76.97), controlPoint1: CGPoint(x: -1.39, y: 18.87), controlPoint2: CGPoint(x: -1.09, y: 73.57))
        path3.addCurve(to: CGPoint(x: 14.04, y: 81.67), controlPoint1: CGPoint(x: 2.44, y: 77.67), controlPoint2: CGPoint(x: 7.86, y: 79.62))
        path3.addLine(to: CGPoint(x: 16.52, y: 50.46))
        path3.addLine(to: CGPoint(x: 30.58, y: 63.05))
        path3.addLine(to: CGPoint(x: 33.42, y: 87.82))
        path3.addCurve(to: CGPoint(x: 64.9, y: 116.79), controlPoint1: CGPoint(x: 33.64, y: 88.23), controlPoint2: CGPoint(x: 48.47, y: 115.78))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 105.4, y: 41.32))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 23.98, y: 28.59))
        path5.addCurve(to: CGPoint(x: 31.13, y: 35.45), controlPoint1: CGPoint(x: 29.48, y: 28.09), controlPoint2: CGPoint(x: 29.29, y: 34.77))
        path5.addCurve(to: CGPoint(x: 39.79, y: 15.01), controlPoint1: CGPoint(x: 32.96, y: 36.13), controlPoint2: CGPoint(x: 37.6, y: 26.69))
        path5.addCurve(to: CGPoint(x: 44.21, y: 6.8), controlPoint1: CGPoint(x: 41.99, y: 3.33), controlPoint2: CGPoint(x: 46.07, y: 11.1))
        path5.addCurve(to: CGPoint(x: 39.79, y: 0.08), controlPoint1: CGPoint(x: 40.32, y: -2.23), controlPoint2: CGPoint(x: 48.56, y: 1.24))
        path5.addCurve(to: CGPoint(x: 12.93, y: 13.99), controlPoint1: CGPoint(x: 31.02, y: -1.09), controlPoint2: CGPoint(x: 12.65, y: 11.47))
        path5.addCurve(to: CGPoint(x: 1.5, y: 104.89), controlPoint1: CGPoint(x: 15.5, y: 36.93), controlPoint2: CGPoint(x: -5.7, y: 97.29))
        path5.addCurve(to: CGPoint(x: 36.73, y: 119.23), controlPoint1: CGPoint(x: 8.69, y: 112.49), controlPoint2: CGPoint(x: 27.07, y: 121.67))
        path5.addCurve(to: CGPoint(x: 28.96, y: 59.14), controlPoint1: CGPoint(x: 46.38, y: 116.78), controlPoint2: CGPoint(x: 28.96, y: 59.14))
        path5.addCurve(to: CGPoint(x: 20.9, y: 46.01), controlPoint1: CGPoint(x: 28.96, y: 59.14), controlPoint2: CGPoint(x: 21.54, y: 47.29))
        path5.addCurve(to: CGPoint(x: 23.98, y: 28.59), controlPoint1: CGPoint(x: 15.4, y: 35.01), controlPoint2: CGPoint(x: 18.48, y: 29.09))
        path5.close()
        let path5Layer = createLayer(path5, hairColor, CGPoint(x: 92.05, y: 43.85))
        
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
