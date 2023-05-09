/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBlouse(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path2 = UIBezierPath()
        let path3 = UIBezierPath()
        
        if rain {
            path.move(to: CGPoint(x: 55.75, y: 1.82))
            path.addCurve(to: CGPoint(x: 34.75, y: 14.65), controlPoint1: CGPoint(x: 54.09, y: 1.81), controlPoint2: CGPoint(x: 44.71, y: 3.69))
            path.addCurve(to: CGPoint(x: 17.49, y: 55.12), controlPoint1: CGPoint(x: 31.67, y: 18.04), controlPoint2: CGPoint(x: 21.84, y: 37.36))
            path.addCurve(to: CGPoint(x: 0.01, y: 122.19), controlPoint1: CGPoint(x: 13.14, y: 72.87), controlPoint2: CGPoint(x: 0.38, y: 114.91))
            path.addCurve(to: CGPoint(x: 15.39, y: 152.41), controlPoint1: CGPoint(x: -0.37, y: 129.48), controlPoint2: CGPoint(x: 13.76, y: 154.65))
            path.addCurve(to: CGPoint(x: 40.25, y: 56.31), controlPoint1: CGPoint(x: 17.02, y: 150.17), controlPoint2: CGPoint(x: 40.25, y: 56.31))
            path.addCurve(to: CGPoint(x: 46.2, y: 101.64), controlPoint1: CGPoint(x: 40.25, y: 56.31), controlPoint2: CGPoint(x: 46.2, y: 72.67))
            path.addCurve(to: CGPoint(x: 35.76, y: 172.8), controlPoint1: CGPoint(x: 46.2, y: 126.73), controlPoint2: CGPoint(x: 33.94, y: 156.9))
            path.addCurve(to: CGPoint(x: 129.04, y: 175.98), controlPoint1: CGPoint(x: 37.57, y: 188.69), controlPoint2: CGPoint(x: 126.95, y: 191.75))
            path.addCurve(to: CGPoint(x: 119.13, y: 108.01), controlPoint1: CGPoint(x: 131.13, y: 160.21), controlPoint2: CGPoint(x: 122.32, y: 138.82))
            path.addCurve(to: CGPoint(x: 123.14, y: 66.64), controlPoint1: CGPoint(x: 115.93, y: 77.21), controlPoint2: CGPoint(x: 124.59, y: 80.57))
            path.addCurve(to: CGPoint(x: 138.27, y: 94.4), controlPoint1: CGPoint(x: 124.83, y: 82.81), controlPoint2: CGPoint(x: 133.16, y: 94.19))
            path.addCurve(to: CGPoint(x: 145.91, y: 83.24), controlPoint1: CGPoint(x: 143.39, y: 94.61), controlPoint2: CGPoint(x: 145.91, y: 86.88))
            path.addCurve(to: CGPoint(x: 141.78, y: 86.52), controlPoint1: CGPoint(x: 145.19, y: 84.36), controlPoint2: CGPoint(x: 143.77, y: 86.52))
            path.addCurve(to: CGPoint(x: 136.39, y: 85.12), controlPoint1: CGPoint(x: 139.03, y: 86.52), controlPoint2: CGPoint(x: 137.02, y: 85.5))
            path.addCurve(to: CGPoint(x: 134.64, y: 72.63), controlPoint1: CGPoint(x: 135.3, y: 81.7), controlPoint2: CGPoint(x: 134.8, y: 78.71))
            path.addCurve(to: CGPoint(x: 135.25, y: 61.3), controlPoint1: CGPoint(x: 134.48, y: 66.55), controlPoint2: CGPoint(x: 135.17, y: 62.55))
            path.addCurve(to: CGPoint(x: 138.98, y: 45.61), controlPoint1: CGPoint(x: 136.45, y: 55.78), controlPoint2: CGPoint(x: 138.33, y: 48.66))
            path.addCurve(to: CGPoint(x: 136.75, y: 35.65), controlPoint1: CGPoint(x: 138.47, y: 42.87), controlPoint2: CGPoint(x: 137.46, y: 38.03))
            path.addCurve(to: CGPoint(x: 127.15, y: 11.39), controlPoint1: CGPoint(x: 132.98, y: 22.9), controlPoint2: CGPoint(x: 128.96, y: 13.71))
            path.addCurve(to: CGPoint(x: 105.9, y: 0), controlPoint1: CGPoint(x: 118.36, y: 0.16), controlPoint2: CGPoint(x: 107.31, y: 0.02))
            path.addLine(to: CGPoint(x: 105.87, y: 0))
            path.addCurve(to: CGPoint(x: 82.16, y: 23.24), controlPoint1: CGPoint(x: 104.57, y: -0.02), controlPoint2: CGPoint(x: 103, y: 23.24))
            path.addCurve(to: CGPoint(x: 55.75, y: 1.82), controlPoint1: CGPoint(x: 61.32, y: 23.24), controlPoint2: CGPoint(x: 57.4, y: 1.83))
            path.close()
            
            path2.move(to: CGPoint(x: 5.4, y: 9.87))
            path2.addCurve(to: CGPoint(x: 0, y: 1.88), controlPoint1: CGPoint(x: 3.66, y: 11.48), controlPoint2: CGPoint(x: 1.72, y: 7.81))
            path2.addCurve(to: CGPoint(x: 5.21, y: 3.27), controlPoint1: CGPoint(x: 0.42, y: 2.1), controlPoint2: CGPoint(x: 2.38, y: 3.18))
            path2.addCurve(to: CGPoint(x: 9.5, y: 0), controlPoint1: CGPoint(x: 7.47, y: 3.35), controlPoint2: CGPoint(x: 8.86, y: 0.94))
            path2.addCurve(to: CGPoint(x: 8.11, y: 5.99), controlPoint1: CGPoint(x: 9.53, y: 0.72), controlPoint2: CGPoint(x: 9.28, y: 3.51))
            path2.addCurve(to: CGPoint(x: 5.4, y: 9.87), controlPoint1: CGPoint(x: 6.94, y: 8.48), controlPoint2: CGPoint(x: 6.25, y: 9.09))
            path2.close()
            
            path3.move(to: CGPoint(x: 3.7, y: 19.71))
            path3.addCurve(to: CGPoint(x: 7.43, y: 4.01), controlPoint1: CGPoint(x: 5.01, y: 13.65), controlPoint2: CGPoint(x: 6.79, y: 6.99))
            path3.addCurve(to: CGPoint(x: 6.61, y: 0), controlPoint1: CGPoint(x: 7.2, y: 2.86), controlPoint2: CGPoint(x: 6.83, y: 0.93))
            path3.addCurve(to: CGPoint(x: 3.11, y: 16.58), controlPoint1: CGPoint(x: 6, y: 2.44), controlPoint2: CGPoint(x: 3.68, y: 10.68))
            path3.addCurve(to: CGPoint(x: 0, y: 24.6), controlPoint1: CGPoint(x: 3.05, y: 17.2), controlPoint2: CGPoint(x: 0.51, y: 20.89))
            path3.addCurve(to: CGPoint(x: 3.7, y: 19.71), controlPoint1: CGPoint(x: 1.54, y: 22.26), controlPoint2: CGPoint(x: 2.38, y: 21.26))
            path3.close()
        } else {
            path.move(to: CGPoint(x: 0.01, y: 122.19))
            path.addCurve(to: CGPoint(x: 17.49, y: 55.12), controlPoint1: CGPoint(x: 0.38, y: 114.91), controlPoint2: CGPoint(x: 13.14, y: 72.87))
            path.addCurve(to: CGPoint(x: 34.75, y: 14.65), controlPoint1: CGPoint(x: 21.84, y: 37.36), controlPoint2: CGPoint(x: 31.67, y: 18.04))
            path.addCurve(to: CGPoint(x: 55.75, y: 1.82), controlPoint1: CGPoint(x: 44.71, y: 3.69), controlPoint2: CGPoint(x: 54.09, y: 1.81))
            path.addCurve(to: CGPoint(x: 82.16, y: 23.24), controlPoint1: CGPoint(x: 57.4, y: 1.83), controlPoint2: CGPoint(x: 61.32, y: 23.24))
            path.addCurve(to: CGPoint(x: 105.87, y: 0), controlPoint1: CGPoint(x: 103, y: 23.24), controlPoint2: CGPoint(x: 104.57, y: -0.02))
            path.addCurve(to: CGPoint(x: 126.67, y: 11.42), controlPoint1: CGPoint(x: 107.18, y: 0.02), controlPoint2: CGPoint(x: 117.83, y: 0.12))
            path.addCurve(to: CGPoint(x: 138.18, y: 33.44), controlPoint1: CGPoint(x: 128.48, y: 13.73), controlPoint2: CGPoint(x: 133.41, y: 20.93))
            path.addCurve(to: CGPoint(x: 163, y: 119.49), controlPoint1: CGPoint(x: 142.96, y: 45.95), controlPoint2: CGPoint(x: 163, y: 111.3))
            path.addCurve(to: CGPoint(x: 150.64, y: 148.06), controlPoint1: CGPoint(x: 163, y: 127.69), controlPoint2: CGPoint(x: 153.11, y: 150.31))
            path.addCurve(to: CGPoint(x: 123.28, y: 56.12), controlPoint1: CGPoint(x: 148.16, y: 145.81), controlPoint2: CGPoint(x: 137, y: 99.87))
            path.addCurve(to: CGPoint(x: 119.13, y: 108.01), controlPoint1: CGPoint(x: 125.93, y: 80.99), controlPoint2: CGPoint(x: 115.93, y: 77.21))
            path.addCurve(to: CGPoint(x: 129.04, y: 175.98), controlPoint1: CGPoint(x: 122.32, y: 138.82), controlPoint2: CGPoint(x: 131.13, y: 160.21))
            path.addCurve(to: CGPoint(x: 35.76, y: 172.8), controlPoint1: CGPoint(x: 126.95, y: 191.75), controlPoint2: CGPoint(x: 37.57, y: 188.69))
            path.addCurve(to: CGPoint(x: 46.2, y: 101.64), controlPoint1: CGPoint(x: 33.94, y: 156.9), controlPoint2: CGPoint(x: 46.2, y: 126.73))
            path.addCurve(to: CGPoint(x: 40.25, y: 56.31), controlPoint1: CGPoint(x: 46.2, y: 72.67), controlPoint2: CGPoint(x: 40.25, y: 56.31))
            path.addCurve(to: CGPoint(x: 15.39, y: 152.41), controlPoint1: CGPoint(x: 40.25, y: 56.31), controlPoint2: CGPoint(x: 17.02, y: 150.17))
            path.addCurve(to: CGPoint(x: 0.01, y: 122.19), controlPoint1: CGPoint(x: 13.76, y: 154.65), controlPoint2: CGPoint(x: -0.37, y: 129.48))
            path.close()
        }
        
        let pathLayer = createLayer(path, color, CGPoint(x: 47.95, y: 128.91))
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 184.35, y: 212.15))
        let path3Layer = createLayer(path3, Color.shadow.medium, CGPoint(x: 179.51, y: 170.5))
        
        let top = UIView()
        top.layer.addSublayers(pathLayer, path2Layer, path3Layer)
        return top
    }
    
}
