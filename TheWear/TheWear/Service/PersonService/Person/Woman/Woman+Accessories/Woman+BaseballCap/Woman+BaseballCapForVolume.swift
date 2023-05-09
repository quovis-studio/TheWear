/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBaseballCapForVolume(_ color: UIColor) -> UIView {
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
        path3.move(to: CGPoint(x: 35.9, y: 3.4))
        path3.addCurve(to: CGPoint(x: 14.2, y: 8.11), controlPoint1: CGPoint(x: 29.43, y: -2.07), controlPoint2: CGPoint(x: 23.11, y: -1.25))
        path3.addCurve(to: CGPoint(x: 0.64, y: 76.73), controlPoint1: CGPoint(x: 5.29, y: 17.48), controlPoint2: CGPoint(x: -2.29, y: 73.33))
        path3.addCurve(to: CGPoint(x: 14.83, y: 81.67), controlPoint1: CGPoint(x: 1.28, y: 77.48), controlPoint2: CGPoint(x: 7.75, y: 79.57))
        path3.addLine(to: CGPoint(x: 17.29, y: 50.74))
        path3.addLine(to: CGPoint(x: 31.35, y: 63.33))
        path3.addLine(to: CGPoint(x: 34.05, y: 86.97))
        path3.addCurve(to: CGPoint(x: 34.06, y: 86.97), controlPoint1: CGPoint(x: 34.05, y: 86.97), controlPoint2: CGPoint(x: 34.05, y: 86.97))
        path3.addCurve(to: CGPoint(x: 34.13, y: 87.63), controlPoint1: CGPoint(x: 34.07, y: 87.06), controlPoint2: CGPoint(x: 34.09, y: 87.28))
        path3.addCurve(to: CGPoint(x: 34.13, y: 87.68), controlPoint1: CGPoint(x: 34.13, y: 87.64), controlPoint2: CGPoint(x: 34.13, y: 87.66))
        path3.addLine(to: CGPoint(x: 34.18, y: 88.1))
        path3.addLine(to: CGPoint(x: 34.18, y: 88.1))
        path3.addCurve(to: CGPoint(x: 49.9, y: 121.69), controlPoint1: CGPoint(x: 34.76, y: 93.56), controlPoint2: CGPoint(x: 37.51, y: 116.4))
        path3.addCurve(to: CGPoint(x: 76.32, y: 115.66), controlPoint1: CGPoint(x: 63.67, y: 127.57), controlPoint2: CGPoint(x: 72.41, y: 122.78))
        path3.addCurve(to: CGPoint(x: 75.96, y: 103.22), controlPoint1: CGPoint(x: 78.81, y: 111.14), controlPoint2: CGPoint(x: 77.36, y: 107.1))
        path3.addCurve(to: CGPoint(x: 74.37, y: 96.61), controlPoint1: CGPoint(x: 75.16, y: 100.98), controlPoint2: CGPoint(x: 74.37, y: 98.8))
        path3.addCurve(to: CGPoint(x: 74.6, y: 91.25), controlPoint1: CGPoint(x: 74.36, y: 94.59), controlPoint2: CGPoint(x: 74.48, y: 92.89))
        path3.addCurve(to: CGPoint(x: 74.37, y: 81.03), controlPoint1: CGPoint(x: 74.83, y: 88.19), controlPoint2: CGPoint(x: 75.04, y: 85.34))
        path3.addCurve(to: CGPoint(x: 71.94, y: 74.31), controlPoint1: CGPoint(x: 73.9, y: 78.05), controlPoint2: CGPoint(x: 72.95, y: 76.25))
        path3.addCurve(to: CGPoint(x: 68.34, y: 61.64), controlPoint1: CGPoint(x: 70.51, y: 71.59), controlPoint2: CGPoint(x: 68.93, y: 68.6))
        path3.addCurve(to: CGPoint(x: 64.25, y: 48.43), controlPoint1: CGPoint(x: 67.72, y: 54.37), controlPoint2: CGPoint(x: 66.06, y: 51.53))
        path3.addCurve(to: CGPoint(x: 60.83, y: 40.97), controlPoint1: CGPoint(x: 63.09, y: 46.45), controlPoint2: CGPoint(x: 61.87, y: 44.37))
        path3.addCurve(to: CGPoint(x: 53.74, y: 28.3), controlPoint1: CGPoint(x: 59.14, y: 35.45), controlPoint2: CGPoint(x: 56.56, y: 32.03))
        path3.addCurve(to: CGPoint(x: 48.72, y: 21.03), controlPoint1: CGPoint(x: 52.1, y: 26.14), controlPoint2: CGPoint(x: 50.39, y: 23.87))
        path3.addCurve(to: CGPoint(x: 35.9, y: 3.4), controlPoint1: CGPoint(x: 44.19, y: 13.28), controlPoint2: CGPoint(x: 37.06, y: 4.37))
        path3.close()
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 104.63, y: 41.04))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.38, y: 12.28))
        head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 30.52, y: 28.51))
        path5.addCurve(to: CGPoint(x: 37.67, y: 35.36), controlPoint1: CGPoint(x: 36.02, y: 28.01), controlPoint2: CGPoint(x: 35.84, y: 34.68))
        path5.addCurve(to: CGPoint(x: 44, y: 19.35), controlPoint1: CGPoint(x: 39.5, y: 36.04), controlPoint2: CGPoint(x: 44, y: 27.02))
        path5.addCurve(to: CGPoint(x: 47.55, y: 6.47), controlPoint1: CGPoint(x: 44, y: 11.67), controlPoint2: CGPoint(x: 49.41, y: 10.78))
        path5.addCurve(to: CGPoint(x: 40.15, y: 0.83), controlPoint1: CGPoint(x: 43.66, y: -2.55), controlPoint2: CGPoint(x: 48.92, y: 1.99))
        path5.addCurve(to: CGPoint(x: 27.44, y: 6.47), controlPoint1: CGPoint(x: 31.37, y: -0.33), controlPoint2: CGPoint(x: 34.78, y: -1.51))
        path5.addCurve(to: CGPoint(x: 19.1, y: 25.28), controlPoint1: CGPoint(x: 20.11, y: 14.45), controlPoint2: CGPoint(x: 19.1, y: 12.37))
        path5.addCurve(to: CGPoint(x: 13.12, y: 47.44), controlPoint1: CGPoint(x: 19.1, y: 38.19), controlPoint2: CGPoint(x: 13.5, y: 39.04))
        path5.addCurve(to: CGPoint(x: 7.48, y: 63.31), controlPoint1: CGPoint(x: 12.73, y: 55.85), controlPoint2: CGPoint(x: 10.03, y: 55.55))
        path5.addCurve(to: CGPoint(x: 3.61, y: 82.17), controlPoint1: CGPoint(x: 4.93, y: 71.07), controlPoint2: CGPoint(x: 7.82, y: 72.63))
        path5.addCurve(to: CGPoint(x: 0.95, y: 99.78), controlPoint1: CGPoint(x: -0.6, y: 91.71), controlPoint2: CGPoint(x: 1.53, y: 91.97))
        path5.addCurve(to: CGPoint(x: 2.96, y: 116.79), controlPoint1: CGPoint(x: 0.37, y: 107.59), controlPoint2: CGPoint(x: -1.68, y: 108.75))
        path5.addCurve(to: CGPoint(x: 37.67, y: 116.79), controlPoint1: CGPoint(x: 7.6, y: 124.83), controlPoint2: CGPoint(x: 28.12, y: 126.62))
        path5.addCurve(to: CGPoint(x: 35.5, y: 59.06), controlPoint1: CGPoint(x: 47.22, y: 106.96), controlPoint2: CGPoint(x: 35.5, y: 59.06))
        path5.addCurve(to: CGPoint(x: 27.44, y: 45.92), controlPoint1: CGPoint(x: 35.5, y: 59.06), controlPoint2: CGPoint(x: 28.08, y: 47.2))
        path5.addCurve(to: CGPoint(x: 30.52, y: 28.51), controlPoint1: CGPoint(x: 21.94, y: 34.92), controlPoint2: CGPoint(x: 25.02, y: 29.01))
        path5.close()
        let path5Layer = createLayer(path5, hairColor, CGPoint(x: 85.52, y: 43.91))
        
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
