/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawTunic(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path2 = UIBezierPath()
        let path3 = UIBezierPath()
        
        if rain {
            path.move(to: CGPoint(x: 60.39, y: 1.82))
            path.addCurve(to: CGPoint(x: 39.39, y: 14.65), controlPoint1: CGPoint(x: 58.74, y: 1.81), controlPoint2: CGPoint(x: 49.36, y: 3.69))
            path.addCurve(to: CGPoint(x: 23.48, y: 47.27), controlPoint1: CGPoint(x: 36.31, y: 18.04), controlPoint2: CGPoint(x: 27.43, y: 34.78))
            path.addCurve(to: CGPoint(x: 0.42, y: 137.13), controlPoint1: CGPoint(x: 13.97, y: 77.25), controlPoint2: CGPoint(x: 3.77, y: 123.52))
            path.addCurve(to: CGPoint(x: 16.97, y: 163.56), controlPoint1: CGPoint(x: -2.93, y: 150.74), controlPoint2: CGPoint(x: 14.93, y: 171.71))
            path.addCurve(to: CGPoint(x: 44.89, y: 56.31), controlPoint1: CGPoint(x: 19.01, y: 155.42), controlPoint2: CGPoint(x: 44.89, y: 56.31))
            path.addCurve(to: CGPoint(x: 50.85, y: 101.64), controlPoint1: CGPoint(x: 44.89, y: 56.31), controlPoint2: CGPoint(x: 50.85, y: 72.67))
            path.addCurve(to: CGPoint(x: 35, y: 197.51), controlPoint1: CGPoint(x: 50.85, y: 126.73), controlPoint2: CGPoint(x: 35, y: 170.23))
            path.addCurve(to: CGPoint(x: 135.95, y: 193.88), controlPoint1: CGPoint(x: 35, y: 224.79), controlPoint2: CGPoint(x: 138.92, y: 224.67))
            path.addCurve(to: CGPoint(x: 123.77, y: 108.01), controlPoint1: CGPoint(x: 132.98, y: 163.09), controlPoint2: CGPoint(x: 126.97, y: 138.82))
            path.addCurve(to: CGPoint(x: 127.79, y: 66.64), controlPoint1: CGPoint(x: 120.58, y: 77.21), controlPoint2: CGPoint(x: 129.24, y: 80.57))
            path.addCurve(to: CGPoint(x: 142.92, y: 97.4), controlPoint1: CGPoint(x: 129.47, y: 82.81), controlPoint2: CGPoint(x: 137.8, y: 97.19))
            path.addCurve(to: CGPoint(x: 150.55, y: 83.24), controlPoint1: CGPoint(x: 148.04, y: 97.61), controlPoint2: CGPoint(x: 150.55, y: 86.88))
            path.addCurve(to: CGPoint(x: 146.42, y: 86.52), controlPoint1: CGPoint(x: 149.83, y: 84.36), controlPoint2: CGPoint(x: 148.41, y: 86.52))
            path.addCurve(to: CGPoint(x: 140.59, y: 84.87), controlPoint1: CGPoint(x: 143.67, y: 86.52), controlPoint2: CGPoint(x: 141.22, y: 85.25))
            path.addCurve(to: CGPoint(x: 139.28, y: 72.63), controlPoint1: CGPoint(x: 139.82, y: 81.92), controlPoint2: CGPoint(x: 139.44, y: 78.71))
            path.addCurve(to: CGPoint(x: 139.9, y: 61.3), controlPoint1: CGPoint(x: 139.13, y: 66.55), controlPoint2: CGPoint(x: 139.81, y: 62.55))
            path.addCurve(to: CGPoint(x: 143.63, y: 45.61), controlPoint1: CGPoint(x: 141.1, y: 55.78), controlPoint2: CGPoint(x: 142.98, y: 48.66))
            path.addCurve(to: CGPoint(x: 141.4, y: 35.65), controlPoint1: CGPoint(x: 143.11, y: 42.87), controlPoint2: CGPoint(x: 142.11, y: 38.03))
            path.addCurve(to: CGPoint(x: 131.8, y: 11.39), controlPoint1: CGPoint(x: 137.63, y: 22.9), controlPoint2: CGPoint(x: 133.61, y: 13.71))
            path.addCurve(to: CGPoint(x: 110.54, y: 0), controlPoint1: CGPoint(x: 123.01, y: 0.16), controlPoint2: CGPoint(x: 111.95, y: 0.02))
            path.addLine(to: CGPoint(x: 110.52, y: 0))
            path.addCurve(to: CGPoint(x: 86.81, y: 23.24), controlPoint1: CGPoint(x: 109.21, y: -0.02), controlPoint2: CGPoint(x: 107.65, y: 23.24))
            path.addCurve(to: CGPoint(x: 60.39, y: 1.82), controlPoint1: CGPoint(x: 65.97, y: 23.24), controlPoint2: CGPoint(x: 62.05, y: 1.83))
            path.close()
            
            path2.move(to: CGPoint(x: 5.33, y: 12.9))
            path2.addCurve(to: CGPoint(x: 0, y: 1.64), controlPoint1: CGPoint(x: 3.59, y: 14.5), controlPoint2: CGPoint(x: 1.73, y: 10.24))
            path2.addCurve(to: CGPoint(x: 5.66, y: 3.27), controlPoint1: CGPoint(x: 0.96, y: 2.16), controlPoint2: CGPoint(x: 2.88, y: 3.18))
            path2.addCurve(to: CGPoint(x: 9.96, y: 0), controlPoint1: CGPoint(x: 7.91, y: 3.35), controlPoint2: CGPoint(x: 9.31, y: 0.94))
            path2.addCurve(to: CGPoint(x: 8.62, y: 7), controlPoint1: CGPoint(x: 10.02, y: 0.99), controlPoint2: CGPoint(x: 9.52, y: 4.41))
            path2.addCurve(to: CGPoint(x: 5.33, y: 12.9), controlPoint1: CGPoint(x: 7.82, y: 9.31), controlPoint2: CGPoint(x: 6.68, y: 11.65))
            path2.close()
            
            path3.move(to: CGPoint(x: 3.7, y: 19.71))
            path3.addCurve(to: CGPoint(x: 7.43, y: 4.01), controlPoint1: CGPoint(x: 5.01, y: 13.65), controlPoint2: CGPoint(x: 6.79, y: 6.99))
            path3.addCurve(to: CGPoint(x: 6.61, y: 0), controlPoint1: CGPoint(x: 7.2, y: 2.86), controlPoint2: CGPoint(x: 6.83, y: 0.93))
            path3.addCurve(to: CGPoint(x: 3.11, y: 16.58), controlPoint1: CGPoint(x: 6, y: 2.44), controlPoint2: CGPoint(x: 3.68, y: 10.68))
            path3.addCurve(to: CGPoint(x: 0, y: 24.6), controlPoint1: CGPoint(x: 3.05, y: 17.2), controlPoint2: CGPoint(x: 0.51, y: 20.89))
            path3.addCurve(to: CGPoint(x: 3.7, y: 19.71), controlPoint1: CGPoint(x: 1.54, y: 22.26), controlPoint2: CGPoint(x: 2.38, y: 21.26))
            path3.close()
        } else {
            path.move(to: CGPoint(x: 63.06, y: 1.73))
            path.addCurve(to: CGPoint(x: 39.19, y: 14.89), controlPoint1: CGPoint(x: 61.61, y: 1.73), controlPoint2: CGPoint(x: 46.79, y: 5.84))
            path.addCurve(to: CGPoint(x: 23.48, y: 47.61), controlPoint1: CGPoint(x: 31.59, y: 23.94), controlPoint2: CGPoint(x: 27.44, y: 35.11))
            path.addCurve(to: CGPoint(x: 0.42, y: 137.47), controlPoint1: CGPoint(x: 13.98, y: 77.59), controlPoint2: CGPoint(x: 3.77, y: 123.86))
            path.addCurve(to: CGPoint(x: 16.97, y: 163.9), controlPoint1: CGPoint(x: -2.93, y: 151.08), controlPoint2: CGPoint(x: 14.93, y: 172.05))
            path.addCurve(to: CGPoint(x: 44.9, y: 56.65), controlPoint1: CGPoint(x: 19.01, y: 155.75), controlPoint2: CGPoint(x: 44.9, y: 56.65))
            path.addCurve(to: CGPoint(x: 47.58, y: 103.09), controlPoint1: CGPoint(x: 44.9, y: 56.65), controlPoint2: CGPoint(x: 47.58, y: 74.12))
            path.addCurve(to: CGPoint(x: 35, y: 197.85), controlPoint1: CGPoint(x: 47.58, y: 128.18), controlPoint2: CGPoint(x: 35, y: 170.57))
            path.addCurve(to: CGPoint(x: 135.95, y: 194.22), controlPoint1: CGPoint(x: 35, y: 225.13), controlPoint2: CGPoint(x: 138.93, y: 225.01))
            path.addCurve(to: CGPoint(x: 126.47, y: 111.51), controlPoint1: CGPoint(x: 132.98, y: 163.43), controlPoint2: CGPoint(x: 129.67, y: 142.32))
            path.addCurve(to: CGPoint(x: 127.93, y: 56.46), controlPoint1: CGPoint(x: 123.28, y: 80.7), controlPoint2: CGPoint(x: 130.59, y: 81.32))
            path.addCurve(to: CGPoint(x: 155.27, y: 155.36), controlPoint1: CGPoint(x: 141.65, y: 100.21), controlPoint2: CGPoint(x: 150.91, y: 152.02))
            path.addCurve(to: CGPoint(x: 169.65, y: 126.35), controlPoint1: CGPoint(x: 159.64, y: 158.7), controlPoint2: CGPoint(x: 170.16, y: 137.13))
            path.addCurve(to: CGPoint(x: 145.18, y: 40.68), controlPoint1: CGPoint(x: 169.13, y: 115.57), controlPoint2: CGPoint(x: 148.53, y: 50.73))
            path.addCurve(to: CGPoint(x: 131.32, y: 11.75), controlPoint1: CGPoint(x: 141.83, y: 30.64), controlPoint2: CGPoint(x: 139.56, y: 22.13))
            path.addCurve(to: CGPoint(x: 107.81, y: 0), controlPoint1: CGPoint(x: 123.09, y: 1.38), controlPoint2: CGPoint(x: 109.12, y: 0.02))
            path.addCurve(to: CGPoint(x: 86.89, y: 22.13), controlPoint1: CGPoint(x: 106.51, y: -0.02), controlPoint2: CGPoint(x: 106.9, y: 21.47))
            path.addCurve(to: CGPoint(x: 63.06, y: 1.73), controlPoint1: CGPoint(x: 66.88, y: 22.79), controlPoint2: CGPoint(x: 64.51, y: 1.73))
            path.close()
        }
        let pathLayer = createLayer(path, color, rain ? CGPoint(x: 43.3, y: 128.91) : CGPoint(x: 43.3, y: 128.57))
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 183.9, y: 212.15))
        let path3Layer = createLayer(path3, Color.shadow.medium, CGPoint(x: 179.51, y: 170.5))
        
        let top = UIView()
        top.layer.addSublayers(pathLayer, path2Layer, path3Layer)
        return top
    }
    
}
