/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBaseballCapForBob(_ color: UIColor) -> UIView {
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
        path3.move(to: CGPoint(x: 62.68, y: 73.23))
        path3.addCurve(to: CGPoint(x: 43.85, y: 11.48), controlPoint1: CGPoint(x: 67.95, y: 61.64), controlPoint2: CGPoint(x: 63.09, y: 30.32))
        path3.addCurve(to: CGPoint(x: 13.95, y: 7.6), controlPoint1: CGPoint(x: 26.22, y: -5.76), controlPoint2: CGPoint(x: 21.46, y: -0.58))
        path3.addCurve(to: CGPoint(x: 11.79, y: 9.93), controlPoint1: CGPoint(x: 13.25, y: 8.36), controlPoint2: CGPoint(x: 12.54, y: 9.14))
        path3.addCurve(to: CGPoint(x: 0.84, y: 73.23), controlPoint1: CGPoint(x: 2.88, y: 19.29), controlPoint2: CGPoint(x: -2.09, y: 69.84))
        path3.addCurve(to: CGPoint(x: 1.45, y: 73.87), controlPoint1: CGPoint(x: 1.16, y: 73.6), controlPoint2: CGPoint(x: 1.28, y: 73.78))
        path3.addCurve(to: CGPoint(x: 13.84, y: 76.29), controlPoint1: CGPoint(x: 2.02, y: 74.19), controlPoint2: CGPoint(x: 3.1, y: 73.58))
        path3.addLine(to: CGPoint(x: 16.25, y: 45.99))
        path3.addLine(to: CGPoint(x: 30.31, y: 58.58))
        path3.addLine(to: CGPoint(x: 32.63, y: 78.8))
        path3.addCurve(to: CGPoint(x: 62.68, y: 73.23), controlPoint1: CGPoint(x: 46.56, y: 79.28), controlPoint2: CGPoint(x: 60.83, y: 77.31))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 105.67, y: 45.79))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 19.16, y: 33.38))
        path5.addCurve(to: CGPoint(x: 26.31, y: 40.23), controlPoint1: CGPoint(x: 24.66, y: 32.88), controlPoint2: CGPoint(x: 24.48, y: 39.55))
        path5.addCurve(to: CGPoint(x: 33.62, y: 21.66), controlPoint1: CGPoint(x: 28.14, y: 40.91), controlPoint2: CGPoint(x: 30.43, y: 31.23))
        path5.addCurve(to: CGPoint(x: 51.84, y: 16.64), controlPoint1: CGPoint(x: 36.81, y: 12.09), controlPoint2: CGPoint(x: 54.06, y: 20.6))
        path5.addCurve(to: CGPoint(x: 37.65, y: 0.04), controlPoint1: CGPoint(x: 47.02, y: 8.07), controlPoint2: CGPoint(x: 47.01, y: 0.95))
        path5.addCurve(to: CGPoint(x: 5.81, y: 20.06), controlPoint1: CGPoint(x: 28.29, y: -0.87), controlPoint2: CGPoint(x: 5.81, y: 13.99))
        path5.addCurve(to: CGPoint(x: 1.45, y: 76.66), controlPoint1: CGPoint(x: 5.81, y: 53.75), controlPoint2: CGPoint(x: -3.5, y: 71.06))
        path5.addCurve(to: CGPoint(x: 26.31, y: 82.93), controlPoint1: CGPoint(x: 6.4, y: 82.25), controlPoint2: CGPoint(x: 15.84, y: 84.33))
        path5.addCurve(to: CGPoint(x: 16.08, y: 50.79), controlPoint1: CGPoint(x: 36.78, y: 81.53), controlPoint2: CGPoint(x: 17.67, y: 53.98))
        path5.addCurve(to: CGPoint(x: 19.16, y: 33.38), controlPoint1: CGPoint(x: 10.58, y: 39.79), controlPoint2: CGPoint(x: 13.66, y: 33.88))
        path5.close()
        let path5Layer = createLayer(path5, hairColor, CGPoint(x: 98.71, y: 41.58))
        
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
