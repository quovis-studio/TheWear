/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawLightJacket(_ color: UIColor, _ rain: Bool) -> UIView {
        let path0 = UIBezierPath()
        let path01 = UIBezierPath()
        if rain {
            path0.move(to: CGPoint(x: 76.45, y: 1.45))
            path0.addCurve(to: CGPoint(x: 41.3, y: 19.23), controlPoint1: CGPoint(x: 76, y: 0.27), controlPoint2: CGPoint(x: 55.02, y: 3.72))
            path0.addCurve(to: CGPoint(x: 0, y: 169.97), controlPoint1: CGPoint(x: 27.58, y: 34.74), controlPoint2: CGPoint(x: 0.27, y: 163.92))
            path0.addCurve(to: CGPoint(x: 18.5, y: 175.97), controlPoint1: CGPoint(x: -0.27, y: 176.03), controlPoint2: CGPoint(x: 16.5, y: 180.04))
            path0.addCurve(to: CGPoint(x: 42.61, y: 100.65), controlPoint1: CGPoint(x: 20.5, y: 171.91), controlPoint2: CGPoint(x: 39.73, y: 110.31))
            path0.addCurve(to: CGPoint(x: 52.39, y: 71.79), controlPoint1: CGPoint(x: 45.49, y: 90.99), controlPoint2: CGPoint(x: 52.39, y: 71.79))
            path0.addCurve(to: CGPoint(x: 53.98, y: 106.86), controlPoint1: CGPoint(x: 52.39, y: 71.79), controlPoint2: CGPoint(x: 54.56, y: 90.16))
            path0.addCurve(to: CGPoint(x: 48.26, y: 177.29), controlPoint1: CGPoint(x: 53.41, y: 123.56), controlPoint2: CGPoint(x: 49.86, y: 164.86))
            path0.addCurve(to: CGPoint(x: 140.32, y: 175.71), controlPoint1: CGPoint(x: 46.66, y: 189.72), controlPoint2: CGPoint(x: 141.59, y: 188.08))
            path0.addCurve(to: CGPoint(x: 134.33, y: 105.05), controlPoint1: CGPoint(x: 139.05, y: 163.33), controlPoint2: CGPoint(x: 135.82, y: 124.94))
            path0.addCurve(to: CGPoint(x: 135.68, y: 71.41), controlPoint1: CGPoint(x: 132.84, y: 85.17), controlPoint2: CGPoint(x: 136.78, y: 81.07))
            path0.addCurve(to: CGPoint(x: 157.06, y: 91.52), controlPoint1: CGPoint(x: 136.39, y: 77.63), controlPoint2: CGPoint(x: 141.32, y: 91.52))
            path0.addCurve(to: CGPoint(x: 169.7, y: 33.21), controlPoint1: CGPoint(x: 168.44, y: 91.52), controlPoint2: CGPoint(x: 170.59, y: 40.87))
            path0.addCurve(to: CGPoint(x: 153.14, y: 32.33), controlPoint1: CGPoint(x: 168.81, y: 25.55), controlPoint2: CGPoint(x: 154.19, y: 34.23))
            path0.addCurve(to: CGPoint(x: 150.23, y: 35.76), controlPoint1: CGPoint(x: 152.09, y: 30.44), controlPoint2: CGPoint(x: 151.08, y: 33.52))
            path0.addCurve(to: CGPoint(x: 141.61, y: 14.68), controlPoint1: CGPoint(x: 150.23, y: 35.76), controlPoint2: CGPoint(x: 147.01, y: 23.37))
            path0.addCurve(to: CGPoint(x: 108.72, y: 0.27), controlPoint1: CGPoint(x: 132.93, y: 0.73), controlPoint2: CGPoint(x: 108.95, y: -0.8))
            path0.addCurve(to: CGPoint(x: 94.28, y: 11.34), controlPoint1: CGPoint(x: 108.48, y: 1.34), controlPoint2: CGPoint(x: 107.55, y: 10.57))
            path0.addCurve(to: CGPoint(x: 76.45, y: 1.45), controlPoint1: CGPoint(x: 81, y: 12.11), controlPoint2: CGPoint(x: 76.91, y: 2.62))
            path0.close()
            
            path01.move(to: CGPoint(x: 1.21, y: 13.72))
            path01.addCurve(to: CGPoint(x: 0.02, y: 26.51), controlPoint1: CGPoint(x: -0.27, y: 22.19), controlPoint2: CGPoint(x: 0.02, y: 26.51))
            path01.addCurve(to: CGPoint(x: 5.51, y: 3.06), controlPoint1: CGPoint(x: 0.02, y: 26.51), controlPoint2: CGPoint(x: 4.62, y: 5.48))
            path01.addCurve(to: CGPoint(x: 4.62, y: 0), controlPoint1: CGPoint(x: 5.35, y: 2.39), controlPoint2: CGPoint(x: 4.62, y: 0))
            path01.addCurve(to: CGPoint(x: 1.21, y: 13.72), controlPoint1: CGPoint(x: 4.62, y: 0), controlPoint2: CGPoint(x: 2.68, y: 5.25))
            path01.close()
        } else {
            path0.move(to: CGPoint(x: 76.45, y: 1.83))
            path0.addCurve(to: CGPoint(x: 41.3, y: 19.61), controlPoint1: CGPoint(x: 76, y: 0.65), controlPoint2: CGPoint(x: 55.02, y: 4.1))
            path0.addCurve(to: CGPoint(x: 0, y: 170.35), controlPoint1: CGPoint(x: 27.58, y: 35.12), controlPoint2: CGPoint(x: 0.27, y: 164.3))
            path0.addCurve(to: CGPoint(x: 18.5, y: 176.35), controlPoint1: CGPoint(x: -0.27, y: 176.41), controlPoint2: CGPoint(x: 16.5, y: 180.42))
            path0.addCurve(to: CGPoint(x: 42.61, y: 101.03), controlPoint1: CGPoint(x: 20.5, y: 172.29), controlPoint2: CGPoint(x: 39.73, y: 110.69))
            path0.addCurve(to: CGPoint(x: 52.39, y: 72.17), controlPoint1: CGPoint(x: 45.49, y: 91.37), controlPoint2: CGPoint(x: 52.39, y: 72.17))
            path0.addCurve(to: CGPoint(x: 53.98, y: 107.24), controlPoint1: CGPoint(x: 52.39, y: 72.17), controlPoint2: CGPoint(x: 54.56, y: 90.54))
            path0.addCurve(to: CGPoint(x: 48.26, y: 177.67), controlPoint1: CGPoint(x: 53.41, y: 123.94), controlPoint2: CGPoint(x: 49.86, y: 165.24))
            path0.addCurve(to: CGPoint(x: 140.32, y: 176.09), controlPoint1: CGPoint(x: 46.66, y: 190.1), controlPoint2: CGPoint(x: 141.59, y: 188.46))
            path0.addCurve(to: CGPoint(x: 134.33, y: 105.43), controlPoint1: CGPoint(x: 139.05, y: 163.71), controlPoint2: CGPoint(x: 135.82, y: 125.32))
            path0.addCurve(to: CGPoint(x: 137.76, y: 70.31), controlPoint1: CGPoint(x: 132.84, y: 85.55), controlPoint2: CGPoint(x: 138.86, y: 79.97))
            path0.addCurve(to: CGPoint(x: 169.97, y: 165.94), controlPoint1: CGPoint(x: 139.67, y: 75.15), controlPoint2: CGPoint(x: 166.25, y: 162.04))
            path0.addCurve(to: CGPoint(x: 186.17, y: 160.72), controlPoint1: CGPoint(x: 173.69, y: 169.84), controlPoint2: CGPoint(x: 186.51, y: 165.8))
            path0.addCurve(to: CGPoint(x: 143.1, y: 13.05), controlPoint1: CGPoint(x: 185.82, y: 155.64), controlPoint2: CGPoint(x: 159, y: 28.16))
            path0.addCurve(to: CGPoint(x: 108.72, y: 0.65), controlPoint1: CGPoint(x: 127.19, y: -2.06), controlPoint2: CGPoint(x: 108.95, y: -0.42))
            path0.addCurve(to: CGPoint(x: 94.28, y: 11.72), controlPoint1: CGPoint(x: 108.48, y: 1.72), controlPoint2: CGPoint(x: 107.55, y: 10.95))
            path0.addCurve(to: CGPoint(x: 76.45, y: 1.83), controlPoint1: CGPoint(x: 81, y: 12.49), controlPoint2: CGPoint(x: 76.91, y: 3))
            path0.close()
        }
        let path0Layer = createLayer(path0, color, rain ? CGPoint(x: 35.8, y: 127.31) : CGPoint(x: 35.5, y: 126.65))
        let path01Layer = createLayer(path01, Color.shadow.medium, CGPoint(x: 180.52, y: 160.01))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.62, y: 18.62))
        path.addCurve(to: CGPoint(x: 30.57, y: 0.01), controlPoint1: CGPoint(x: 3.27, y: 6.35), controlPoint2: CGPoint(x: 15.4, y: 0.29))
        path.addCurve(to: CGPoint(x: 59.2, y: 9.95), controlPoint1: CGPoint(x: 45.74, y: -0.27), controlPoint2: CGPoint(x: 51.3, y: 4.88))
        path.addCurve(to: CGPoint(x: 74.11, y: 37.99), controlPoint1: CGPoint(x: 72.37, y: 18.4), controlPoint2: CGPoint(x: 74.11, y: 37.99))
        path.addCurve(to: CGPoint(x: 64.51, y: 45.67), controlPoint1: CGPoint(x: 74.11, y: 37.99), controlPoint2: CGPoint(x: 69.98, y: 44.18))
        path.addCurve(to: CGPoint(x: 36.64, y: 49.16), controlPoint1: CGPoint(x: 59.03, y: 47.17), controlPoint2: CGPoint(x: 48.99, y: 49.53))
        path.addCurve(to: CGPoint(x: 17.91, y: 45.67), controlPoint1: CGPoint(x: 24.29, y: 48.78), controlPoint2: CGPoint(x: 24.88, y: 51.15))
        path.addCurve(to: CGPoint(x: 0.62, y: 18.62), controlPoint1: CGPoint(x: 3.87, y: 40.85), controlPoint2: CGPoint(x: -2.03, y: 30.89))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 86.4, y: 95.41))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.13, y: 9.68))
        path2.addCurve(to: CGPoint(x: 15.26, y: 0.27), controlPoint1: CGPoint(x: 1.04, y: 4.45), controlPoint2: CGPoint(x: 6.49, y: 1.36))
        path2.addCurve(to: CGPoint(x: 33.58, y: 3.47), controlPoint1: CGPoint(x: 24.04, y: -0.83), controlPoint2: CGPoint(x: 30.07, y: 1.72))
        path2.addCurve(to: CGPoint(x: 43.02, y: 14.53), controlPoint1: CGPoint(x: 37.09, y: 5.23), controlPoint2: CGPoint(x: 41.09, y: 7.95))
        path2.addCurve(to: CGPoint(x: 32.35, y: 27.12), controlPoint1: CGPoint(x: 44.95, y: 21.12), controlPoint2: CGPoint(x: 42.19, y: 26.99))
        path2.addCurve(to: CGPoint(x: 8.02, y: 21.52), controlPoint1: CGPoint(x: 22.51, y: 27.25), controlPoint2: CGPoint(x: 12.96, y: 23.99))
        path2.addCurve(to: CGPoint(x: 0.13, y: 9.68), controlPoint1: CGPoint(x: 3.09, y: 19.05), controlPoint2: CGPoint(x: -0.77, y: 14.91))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 99.5, y: 102.33))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 0.78, y: 0.5))
        path3.addCurve(to: CGPoint(x: 2.92, y: 0.37), controlPoint1: CGPoint(x: 0.78, y: 0.5), controlPoint2: CGPoint(x: 2.24, y: 0.41))
        path3.addCurve(to: CGPoint(x: 5.05, y: 0), controlPoint1: CGPoint(x: 3.6, y: 0.33), controlPoint2: CGPoint(x: 5.05, y: 0))
        path3.addCurve(to: CGPoint(x: 3.95, y: 11.53), controlPoint1: CGPoint(x: 5.05, y: 0), controlPoint2: CGPoint(x: 5.56, y: 5.27))
        path3.addCurve(to: CGPoint(x: 6.15, y: 96.25), controlPoint1: CGPoint(x: 5.09, y: 30.46), controlPoint2: CGPoint(x: 5.8, y: 65.73))
        path3.addCurve(to: CGPoint(x: 6.32, y: 183.62), controlPoint1: CGPoint(x: 6.65, y: 140.15), controlPoint2: CGPoint(x: 6.32, y: 183.62))
        path3.addCurve(to: CGPoint(x: 4.52, y: 183.71), controlPoint1: CGPoint(x: 6.32, y: 183.62), controlPoint2: CGPoint(x: 5.21, y: 183.67))
        path3.addCurve(to: CGPoint(x: 2.71, y: 183.78), controlPoint1: CGPoint(x: 3.82, y: 183.74), controlPoint2: CGPoint(x: 2.71, y: 183.78))
        path3.addCurve(to: CGPoint(x: 2.17, y: 97.47), controlPoint1: CGPoint(x: 2.71, y: 183.78), controlPoint2: CGPoint(x: 2.17, y: 136.38))
        path3.addCurve(to: CGPoint(x: 0, y: 11.91), controlPoint1: CGPoint(x: 2.17, y: 70), controlPoint2: CGPoint(x: 1.14, y: 31.81))
        path3.addCurve(to: CGPoint(x: 0.78, y: 0.5), controlPoint1: CGPoint(x: 1.71, y: 4.77), controlPoint2: CGPoint(x: 0.78, y: 0.5))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.medium, CGPoint(x: 131.07, y: 128.95))
        
        let combinedShape = UIBezierPath()
        combinedShape.move(to: CGPoint(x: 2.87, y: 0))
        combinedShape.addLine(to: CGPoint(x: 16.93, y: 12.59))
        combinedShape.addLine(to: CGPoint(x: 19.63, y: 36.22))
        combinedShape.addCurve(to: CGPoint(x: 12.8, y: 37.68), controlPoint1: CGPoint(x: 17.84, y: 37.09), controlPoint2: CGPoint(x: 15.53, y: 37.68))
        combinedShape.addCurve(to: CGPoint(x: 0, y: 36.1), controlPoint1: CGPoint(x: 8.34, y: 37.68), controlPoint2: CGPoint(x: 3.94, y: 37.03))
        combinedShape.addLine(to: CGPoint(x: 2.87, y: 0))
        combinedShape.close()
        let combinedShapeLayer = createLayer(combinedShape, skinColor, CGPoint(x: 119.05, y: 91.78))
        
        let combinedShape2 = UIBezierPath()
        combinedShape2.move(to: CGPoint(x: 1.23, y: 0))
        combinedShape2.addLine(to: CGPoint(x: 15.29, y: 12.59))
        combinedShape2.addLine(to: CGPoint(x: 17.04, y: 27.9))
        combinedShape2.addCurve(to: CGPoint(x: 12.45, y: 25.13), controlPoint1: CGPoint(x: 15.58, y: 27.1), controlPoint2: CGPoint(x: 14.05, y: 26.17))
        combinedShape2.addCurve(to: CGPoint(x: 0, y: 15.42), controlPoint1: CGPoint(x: 7.51, y: 21.89), controlPoint2: CGPoint(x: 3.39, y: 18.65))
        combinedShape2.addLine(to: CGPoint(x: 1.23, y: 0))
        combinedShape2.close()
        let combinedShape2Layer = createLayer(combinedShape2, Color.shadow.light, CGPoint(x: 120.7, y: 91.78))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 3.38, y: 12.28))
        path4.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
        path4.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
        path4.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
        path4.close()
        let path4Layer = createLayer(path4, skinColor, CGPoint(x: 108.51, y: 48))
        
        let top = UIView()
        top.layer.addSublayers(path0Layer, path01Layer, pathLayer, path2Layer, path3Layer, combinedShapeLayer, combinedShape2Layer, path4Layer)
        return top
    }
    
}
