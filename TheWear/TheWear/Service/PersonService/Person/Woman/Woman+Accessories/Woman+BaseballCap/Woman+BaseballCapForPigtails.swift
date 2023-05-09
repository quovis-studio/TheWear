/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBaseballCapForPigtails(_ color: UIColor) -> UIView {
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
        path3.move(to: CGPoint(x: 42.49, y: 10.8))
        path3.addCurve(to: CGPoint(x: 54.23, y: 56.17), controlPoint1: CGPoint(x: 54.67, y: 24.73), controlPoint2: CGPoint(x: 54.23, y: 46.72))
        path3.addCurve(to: CGPoint(x: 49.5, y: 79.06), controlPoint1: CGPoint(x: 54.23, y: 60.74), controlPoint2: CGPoint(x: 52.38, y: 65.69))
        path3.addCurve(to: CGPoint(x: 49.84, y: 91.32), controlPoint1: CGPoint(x: 48.26, y: 84.8), controlPoint2: CGPoint(x: 50.11, y: 85.71))
        path3.addCurve(to: CGPoint(x: 48.23, y: 102.02), controlPoint1: CGPoint(x: 49.58, y: 96.93), controlPoint2: CGPoint(x: 47.23, y: 98.55))
        path3.addCurve(to: CGPoint(x: 46.75, y: 114.82), controlPoint1: CGPoint(x: 49.23, y: 105.49), controlPoint2: CGPoint(x: 48.04, y: 109.34))
        path3.addCurve(to: CGPoint(x: 42.44, y: 140.36), controlPoint1: CGPoint(x: 50.03, y: 125.34), controlPoint2: CGPoint(x: 46.28, y: 140.39))
        path3.addCurve(to: CGPoint(x: 38.36, y: 114.82), controlPoint1: CGPoint(x: 38.59, y: 140.33), controlPoint2: CGPoint(x: 34.96, y: 128.12))
        path3.addCurve(to: CGPoint(x: 35.48, y: 102.7), controlPoint1: CGPoint(x: 37.54, y: 112.71), controlPoint2: CGPoint(x: 34.89, y: 108.6))
        path3.addCurve(to: CGPoint(x: 34.11, y: 91.32), controlPoint1: CGPoint(x: 36.07, y: 96.8), controlPoint2: CGPoint(x: 33.93, y: 96.18))
        path3.addCurve(to: CGPoint(x: 34.41, y: 82.43), controlPoint1: CGPoint(x: 34.3, y: 86.46), controlPoint2: CGPoint(x: 34.94, y: 86.34))
        path3.addCurve(to: CGPoint(x: 33.18, y: 67.07), controlPoint1: CGPoint(x: 33.87, y: 78.51), controlPoint2: CGPoint(x: 31.28, y: 76.49))
        path3.addCurve(to: CGPoint(x: 1.41, y: 8.44), controlPoint1: CGPoint(x: 35.08, y: 57.66), controlPoint2: CGPoint(x: -8.27, y: 17.71))
        path3.addCurve(to: CGPoint(x: 42.49, y: 10.8), controlPoint1: CGPoint(x: 11.1, y: -0.84), controlPoint2: CGPoint(x: 28.22, y: -5.52))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 106.77, y: 40.29))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 18.74, y: 27.52))
        path5.addCurve(to: CGPoint(x: 25.89, y: 34.38), controlPoint1: CGPoint(x: 24.24, y: 27.02), controlPoint2: CGPoint(x: 24.06, y: 33.7))
        path5.addCurve(to: CGPoint(x: 32.03, y: 13.55), controlPoint1: CGPoint(x: 27.72, y: 35.06), controlPoint2: CGPoint(x: 32.03, y: 22.84))
        path5.addCurve(to: CGPoint(x: 41.3, y: 5.14), controlPoint1: CGPoint(x: 32.03, y: 4.25), controlPoint2: CGPoint(x: 43.16, y: 9.45))
        path5.addCurve(to: CGPoint(x: 29.62, y: 0.81), controlPoint1: CGPoint(x: 37.41, y: -3.89), controlPoint2: CGPoint(x: 38.39, y: 1.97))
        path5.addCurve(to: CGPoint(x: 6.03, y: 15.98), controlPoint1: CGPoint(x: 20.85, y: -0.35), controlPoint2: CGPoint(x: 14.78, y: 2.27))
        path5.addCurve(to: CGPoint(x: 3.87, y: 33.08), controlPoint1: CGPoint(x: 0.09, y: 25.28), controlPoint2: CGPoint(x: 4.57, y: 20.6))
        path5.addCurve(to: CGPoint(x: 0.09, y: 54.07), controlPoint1: CGPoint(x: 3.4, y: 41.36), controlPoint2: CGPoint(x: 0.82, y: 46.22))
        path5.addCurve(to: CGPoint(x: 1.3, y: 75.45), controlPoint1: CGPoint(x: -0.63, y: 61.93), controlPoint2: CGPoint(x: 3.17, y: 66.02))
        path5.addCurve(to: CGPoint(x: 3.29, y: 95.9), controlPoint1: CGPoint(x: -0.57, y: 84.88), controlPoint2: CGPoint(x: 5.35, y: 88.58))
        path5.addCurve(to: CGPoint(x: 6.82, y: 110.91), controlPoint1: CGPoint(x: 1.22, y: 103.22), controlPoint2: CGPoint(x: 6.17, y: 107.31))
        path5.addCurve(to: CGPoint(x: 10.96, y: 136.25), controlPoint1: CGPoint(x: 3.91, y: 119.1), controlPoint2: CGPoint(x: 6.74, y: 136.15))
        path5.addCurve(to: CGPoint(x: 15.17, y: 110.91), controlPoint1: CGPoint(x: 15.17, y: 136.35), controlPoint2: CGPoint(x: 19.58, y: 122.24))
        path5.addCurve(to: CGPoint(x: 17.83, y: 98.78), controlPoint1: CGPoint(x: 15.17, y: 105.9), controlPoint2: CGPoint(x: 17.19, y: 104.41))
        path5.addCurve(to: CGPoint(x: 17.25, y: 88.94), controlPoint1: CGPoint(x: 18.47, y: 93.14), controlPoint2: CGPoint(x: 15.53, y: 93.49))
        path5.addCurve(to: CGPoint(x: 18.14, y: 72.99), controlPoint1: CGPoint(x: 18.98, y: 84.39), controlPoint2: CGPoint(x: 19.12, y: 78.09))
        path5.addCurve(to: CGPoint(x: 20.18, y: 60.43), controlPoint1: CGPoint(x: 17.16, y: 67.89), controlPoint2: CGPoint(x: 19.6, y: 64.07))
        path5.addCurve(to: CGPoint(x: 15.66, y: 44.94), controlPoint1: CGPoint(x: 21.11, y: 54.64), controlPoint2: CGPoint(x: 16.38, y: 46.38))
        path5.addCurve(to: CGPoint(x: 18.74, y: 27.52), controlPoint1: CGPoint(x: 10.16, y: 33.94), controlPoint2: CGPoint(x: 13.24, y: 28.02))
        path5.close()
        let path5Layer = createLayer(path5, hairColor, CGPoint(x: 100.04, y: 45.1))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 0.35, y: 0.85))
        path6.addCurve(to: CGPoint(x: 0.65, y: 4.9), controlPoint1: CGPoint(x: -0.25, y: 1.49), controlPoint2: CGPoint(x: -0.04, y: 4.32))
        path6.addCurve(to: CGPoint(x: 10.29, y: 4.81), controlPoint1: CGPoint(x: 1.26, y: 5.42), controlPoint2: CGPoint(x: 9.78, y: 5.47))
        path6.addCurve(to: CGPoint(x: 10.06, y: 0.46), controlPoint1: CGPoint(x: 10.83, y: 4.11), controlPoint2: CGPoint(x: 10.57, y: 1))
        path6.addCurve(to: CGPoint(x: 0.35, y: 0.85), controlPoint1: CGPoint(x: 9.26, y: -0.39), controlPoint2: CGPoint(x: 1.09, y: 0.06))
        path6.close()
        let path6Layer = createLayer(path6, Color.clothes.red.color, CGPoint(x: 105.55, y: 152.38))
        
        let path7 = UIBezierPath()
        path7.move(to: CGPoint(x: 0.43, y: 0.75))
        path7.addCurve(to: CGPoint(x: 0.54, y: 4.64), controlPoint1: CGPoint(x: -0.17, y: 1.39), controlPoint2: CGPoint(x: -0.15, y: 4.06))
        path7.addCurve(to: CGPoint(x: 10.29, y: 4.77), controlPoint1: CGPoint(x: 1.15, y: 5.15), controlPoint2: CGPoint(x: 9.77, y: 5.43))
        path7.addCurve(to: CGPoint(x: 10.06, y: 0.51), controlPoint1: CGPoint(x: 10.82, y: 4.08), controlPoint2: CGPoint(x: 10.57, y: 1.06))
        path7.addCurve(to: CGPoint(x: 0.43, y: 0.75), controlPoint1: CGPoint(x: 9.27, y: -0.34), controlPoint2: CGPoint(x: 1.17, y: -0.04))
        path7.close()
        let path7Layer = createLayer(path7, Color.clothes.red.color, CGPoint(x: 144.07, y: 152.38))
        
        let path8 = UIBezierPath()
        path8.move(to: CGPoint(x: 16.79, y: 2.63))
        path8.addCurve(to: CGPoint(x: 57.1, y: 23.62), controlPoint1: CGPoint(x: 36.5, y: -4.48), controlPoint2: CGPoint(x: 53.06, y: 2.93))
        path8.addCurve(to: CGPoint(x: 21.61, y: 31.62), controlPoint1: CGPoint(x: 36.9, y: 22.51), controlPoint2: CGPoint(x: 21.86, y: 27.52))
        path8.addCurve(to: CGPoint(x: 2.26, y: 38.06), controlPoint1: CGPoint(x: 21.37, y: 35.72), controlPoint2: CGPoint(x: 10.48, y: 31.62))
        path8.addCurve(to: CGPoint(x: 16.79, y: 2.63), controlPoint1: CGPoint(x: -1.44, y: 40.97), controlPoint2: CGPoint(x: -2.93, y: 9.74))
        path8.close()
        let path8Layer = createLayer(path8, color, CGPoint(x: 102.24, y: 37.36))
        
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
        cap.layer.addSublayers(pathLayer, path2Layer, path3Layer, headLayer, path5Layer, path6Layer, path7Layer, path8Layer, kozLayer, kozsLayer)
        return cap
    }
    
}
