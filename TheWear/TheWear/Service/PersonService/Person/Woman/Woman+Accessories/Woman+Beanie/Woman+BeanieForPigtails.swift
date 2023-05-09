/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBeanieForPigtails(_ color: UIColor, _ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 49.5, y: 13.24))
            path.addCurve(to: CGPoint(x: 54.65, y: 55.46), controlPoint1: CGPoint(x: 61.68, y: 27.18), controlPoint2: CGPoint(x: 54.65, y: 46.01))
            path.addCurve(to: CGPoint(x: 49.5, y: 76.92), controlPoint1: CGPoint(x: 54.65, y: 60.03), controlPoint2: CGPoint(x: 52.38, y: 63.55))
            path.addCurve(to: CGPoint(x: 49.84, y: 89.18), controlPoint1: CGPoint(x: 48.26, y: 82.66), controlPoint2: CGPoint(x: 50.11, y: 83.58))
            path.addCurve(to: CGPoint(x: 48.23, y: 99.88), controlPoint1: CGPoint(x: 49.58, y: 94.79), controlPoint2: CGPoint(x: 47.23, y: 96.41))
            path.addCurve(to: CGPoint(x: 46.75, y: 112.68), controlPoint1: CGPoint(x: 49.23, y: 103.35), controlPoint2: CGPoint(x: 48.04, y: 107.2))
            path.addCurve(to: CGPoint(x: 42.44, y: 138.22), controlPoint1: CGPoint(x: 50.03, y: 123.2), controlPoint2: CGPoint(x: 46.28, y: 138.26))
            path.addCurve(to: CGPoint(x: 38.36, y: 112.68), controlPoint1: CGPoint(x: 38.59, y: 138.19), controlPoint2: CGPoint(x: 34.96, y: 125.98))
            path.addCurve(to: CGPoint(x: 35.48, y: 100.56), controlPoint1: CGPoint(x: 37.54, y: 110.57), controlPoint2: CGPoint(x: 34.89, y: 106.46))
            path.addCurve(to: CGPoint(x: 34.11, y: 89.18), controlPoint1: CGPoint(x: 36.07, y: 94.66), controlPoint2: CGPoint(x: 33.93, y: 94.04))
            path.addCurve(to: CGPoint(x: 34.41, y: 80.29), controlPoint1: CGPoint(x: 34.3, y: 84.32), controlPoint2: CGPoint(x: 34.94, y: 84.21))
            path.addCurve(to: CGPoint(x: 33.18, y: 64.94), controlPoint1: CGPoint(x: 33.87, y: 76.38), controlPoint2: CGPoint(x: 31.28, y: 74.35))
            path.addCurve(to: CGPoint(x: 1.41, y: 6.3), controlPoint1: CGPoint(x: 35.08, y: 55.52), controlPoint2: CGPoint(x: -8.27, y: 15.57))
            path.addCurve(to: CGPoint(x: 49.5, y: 13.24), controlPoint1: CGPoint(x: 11.1, y: -2.97), controlPoint2: CGPoint(x: 35.23, y: -3.08))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 106.77, y: 42.43))
        
        let head = UIBezierPath()
        if hair {
            head.move(to: CGPoint(x: 3.38, y: 12.28))
            head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
            head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
            head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
            head.close()
        }
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        let path4 = UIBezierPath()
        let path5 = UIBezierPath()
        if hair {
            path3.move(to: CGPoint(x: 16.28, y: 24.99))
            path3.addCurve(to: CGPoint(x: 23.43, y: 31.85), controlPoint1: CGPoint(x: 21.78, y: 24.49), controlPoint2: CGPoint(x: 21.6, y: 31.17))
            path3.addCurve(to: CGPoint(x: 42.32, y: 19.58), controlPoint1: CGPoint(x: 25.26, y: 32.52), controlPoint2: CGPoint(x: 30.13, y: 25.75))
            path3.addCurve(to: CGPoint(x: 48.46, y: 11.42), controlPoint1: CGPoint(x: 54.52, y: 13.42), controlPoint2: CGPoint(x: 50.32, y: 15.73))
            path3.addCurve(to: CGPoint(x: 26.65, y: 2.09), controlPoint1: CGPoint(x: 44.57, y: 2.4), controlPoint2: CGPoint(x: 35.42, y: 3.25))
            path3.addCurve(to: CGPoint(x: 2.56, y: 9.09), controlPoint1: CGPoint(x: 17.88, y: 0.93), controlPoint2: CGPoint(x: 11.32, y: -4.62))
            path3.addCurve(to: CGPoint(x: 0.82, y: 31.85), controlPoint1: CGPoint(x: -3.37, y: 18.38), controlPoint2: CGPoint(x: 3.19, y: 19.57))
            path3.addCurve(to: CGPoint(x: 3.86, y: 53.59), controlPoint1: CGPoint(x: -0.85, y: 40.51), controlPoint2: CGPoint(x: 7.85, y: 41.9))
            path3.addCurve(to: CGPoint(x: 4.55, y: 74.46), controlPoint1: CGPoint(x: -0.13, y: 65.28), controlPoint2: CGPoint(x: 6.42, y: 65.04))
            path3.addCurve(to: CGPoint(x: 6.53, y: 94.91), controlPoint1: CGPoint(x: 2.68, y: 83.89), controlPoint2: CGPoint(x: 8.6, y: 87.59))
            path3.addCurve(to: CGPoint(x: 10.06, y: 109.93), controlPoint1: CGPoint(x: 4.46, y: 102.24), controlPoint2: CGPoint(x: 9.41, y: 106.33))
            path3.addCurve(to: CGPoint(x: 14.2, y: 135.27), controlPoint1: CGPoint(x: 7.16, y: 118.11), controlPoint2: CGPoint(x: 9.99, y: 135.16))
            path3.addCurve(to: CGPoint(x: 18.42, y: 109.93), controlPoint1: CGPoint(x: 18.42, y: 135.37), controlPoint2: CGPoint(x: 22.82, y: 121.25))
            path3.addCurve(to: CGPoint(x: 21.08, y: 97.79), controlPoint1: CGPoint(x: 18.42, y: 104.91), controlPoint2: CGPoint(x: 20.43, y: 103.43))
            path3.addCurve(to: CGPoint(x: 20.5, y: 87.95), controlPoint1: CGPoint(x: 21.72, y: 92.15), controlPoint2: CGPoint(x: 18.77, y: 92.51))
            path3.addCurve(to: CGPoint(x: 21.39, y: 72), controlPoint1: CGPoint(x: 22.23, y: 83.4), controlPoint2: CGPoint(x: 22.37, y: 77.1))
            path3.addCurve(to: CGPoint(x: 21.39, y: 58.1), controlPoint1: CGPoint(x: 20.41, y: 66.9), controlPoint2: CGPoint(x: 20.5, y: 62.79))
            path3.addCurve(to: CGPoint(x: 15.12, y: 40.92), controlPoint1: CGPoint(x: 22.28, y: 53.41), controlPoint2: CGPoint(x: 18.42, y: 47.51))
            path3.addCurve(to: CGPoint(x: 16.28, y: 24.99), controlPoint1: CGPoint(x: 9.62, y: 29.92), controlPoint2: CGPoint(x: 10.78, y: 25.49))
            path3.close()
            
            path4.move(to: CGPoint(x: 0.35, y: 0.85))
            path4.addCurve(to: CGPoint(x: 0.65, y: 4.9), controlPoint1: CGPoint(x: -0.25, y: 1.49), controlPoint2: CGPoint(x: -0.04, y: 4.32))
            path4.addCurve(to: CGPoint(x: 10.29, y: 4.81), controlPoint1: CGPoint(x: 1.26, y: 5.42), controlPoint2: CGPoint(x: 9.78, y: 5.47))
            path4.addCurve(to: CGPoint(x: 10.06, y: 0.46), controlPoint1: CGPoint(x: 10.83, y: 4.11), controlPoint2: CGPoint(x: 10.57, y: 1))
            path4.addCurve(to: CGPoint(x: 0.35, y: 0.85), controlPoint1: CGPoint(x: 9.26, y: -0.39), controlPoint2: CGPoint(x: 1.09, y: 0.06))
            path4.close()
            
            path5.move(to: CGPoint(x: 0.43, y: 0.76))
            path5.addCurve(to: CGPoint(x: 0.54, y: 4.64), controlPoint1: CGPoint(x: -0.17, y: 1.39), controlPoint2: CGPoint(x: -0.15, y: 4.06))
            path5.addCurve(to: CGPoint(x: 10.29, y: 4.77), controlPoint1: CGPoint(x: 1.15, y: 5.15), controlPoint2: CGPoint(x: 9.77, y: 5.43))
            path5.addCurve(to: CGPoint(x: 10.06, y: 0.51), controlPoint1: CGPoint(x: 10.82, y: 4.08), controlPoint2: CGPoint(x: 10.57, y: 1.06))
            path5.addCurve(to: CGPoint(x: 0.43, y: 0.76), controlPoint1: CGPoint(x: 9.27, y: -0.34), controlPoint2: CGPoint(x: 1.17, y: -0.04))
            path5.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 102.5, y: 47.63))
        let path4Layer = createLayer(path4, UIColor(60, 58, 58), CGPoint(x: 111.35, y: 153.58))
        let path5Layer = createLayer(path5, UIColor(60, 58, 58), CGPoint(x: 144.07, y: 152.38))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 10.59, y: 5.78))
        path6.addCurve(to: CGPoint(x: 63.38, y: 27.94), controlPoint1: CGPoint(x: 42.57, y: -10.97), controlPoint2: CGPoint(x: 62.02, y: 12.47))
        path6.addCurve(to: CGPoint(x: 39.37, y: 35.96), controlPoint1: CGPoint(x: 63.54, y: 29.67), controlPoint2: CGPoint(x: 55.08, y: 27.41))
        path6.addCurve(to: CGPoint(x: 8.47, y: 50.99), controlPoint1: CGPoint(x: 23.66, y: 44.51), controlPoint2: CGPoint(x: 9.45, y: 52.08))
        path6.addCurve(to: CGPoint(x: 10.59, y: 5.78), controlPoint1: CGPoint(x: -2, y: 39.25), controlPoint2: CGPoint(x: -4.36, y: 13.61))
        path6.close()
        let path6Layer = createLayer(path6, color, CGPoint(x: 98.59, y: 39.33))
        
        let path7 = UIBezierPath()
        path7.move(to: CGPoint(x: 61.99, y: 14.37))
        path7.addCurve(to: CGPoint(x: 57.1, y: 0), controlPoint1: CGPoint(x: 64.35, y: 12.48), controlPoint2: CGPoint(x: 59.53, y: 0))
        path7.addCurve(to: CGPoint(x: 27.74, y: 9.32), controlPoint1: CGPoint(x: 54.67, y: 0), controlPoint2: CGPoint(x: 42.12, y: 2.61))
        path7.addCurve(to: CGPoint(x: 0.48, y: 26.44), controlPoint1: CGPoint(x: 13.36, y: 16.04), controlPoint2: CGPoint(x: 2.33, y: 24.5))
        path7.addCurve(to: CGPoint(x: 6.45, y: 39.91), controlPoint1: CGPoint(x: -1.38, y: 28.38), controlPoint2: CGPoint(x: 2.5, y: 39.91))
        path7.addCurve(to: CGPoint(x: 35.49, y: 24.2), controlPoint1: CGPoint(x: 10.4, y: 39.91), controlPoint2: CGPoint(x: 17.78, y: 32.96))
        path7.addCurve(to: CGPoint(x: 61.99, y: 14.37), controlPoint1: CGPoint(x: 53.21, y: 15.45), controlPoint2: CGPoint(x: 59.64, y: 16.26))
        path7.close()
        let path7Layer = createLayer(path7, color, CGPoint(x: 100.13, y: 53.6))
        
        let path8 = UIBezierPath()
        path8.move(to: CGPoint(x: 61.99, y: 14.37))
        path8.addCurve(to: CGPoint(x: 57.1, y: 0), controlPoint1: CGPoint(x: 64.35, y: 12.48), controlPoint2: CGPoint(x: 59.53, y: 0))
        path8.addCurve(to: CGPoint(x: 27.74, y: 9.32), controlPoint1: CGPoint(x: 54.67, y: 0), controlPoint2: CGPoint(x: 42.12, y: 2.61))
        path8.addCurve(to: CGPoint(x: 0.48, y: 26.44), controlPoint1: CGPoint(x: 13.36, y: 16.04), controlPoint2: CGPoint(x: 2.33, y: 24.5))
        path8.addCurve(to: CGPoint(x: 6.45, y: 39.91), controlPoint1: CGPoint(x: -1.38, y: 28.38), controlPoint2: CGPoint(x: 2.5, y: 39.91))
        path8.addCurve(to: CGPoint(x: 35.49, y: 24.2), controlPoint1: CGPoint(x: 10.4, y: 39.91), controlPoint2: CGPoint(x: 17.78, y: 32.96))
        path8.addCurve(to: CGPoint(x: 61.99, y: 14.37), controlPoint1: CGPoint(x: 53.21, y: 15.45), controlPoint2: CGPoint(x: 59.64, y: 16.26))
        path8.close()
        let path8Layer = createLayer(path8, Color.shadow.bold, CGPoint(x: 100.13, y: 53.6))
        
        let beanie = UIView()
        beanie.layer.addSublayers(pathLayer, headLayer, path3Layer, path4Layer, path5Layer, path6Layer, path7Layer, path8Layer)
        return beanie
    }
    
}
