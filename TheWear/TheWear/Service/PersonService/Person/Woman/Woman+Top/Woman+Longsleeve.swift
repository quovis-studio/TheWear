/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawLongsleeve(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path2 = UIBezierPath()
        if rain {
            path.move(to: CGPoint(x: 0, y: 167.37))
            path.addCurve(to: CGPoint(x: 30.22, y: 48.49), controlPoint1: CGPoint(x: 0, y: 163.81), controlPoint2: CGPoint(x: 26.18, y: 63.98))
            path.addCurve(to: CGPoint(x: 45.14, y: 15.81), controlPoint1: CGPoint(x: 34.27, y: 33), controlPoint2: CGPoint(x: 42.06, y: 19.2))
            path.addCurve(to: CGPoint(x: 73.43, y: 1.07), controlPoint1: CGPoint(x: 55.1, y: 4.85), controlPoint2: CGPoint(x: 71.78, y: 1.06))
            path.addCurve(to: CGPoint(x: 91.3, y: 14.47), controlPoint1: CGPoint(x: 75.09, y: 1.09), controlPoint2: CGPoint(x: 75.41, y: 14.47))
            path.addCurve(to: CGPoint(x: 109.02, y: 0), controlPoint1: CGPoint(x: 107.19, y: 14.47), controlPoint2: CGPoint(x: 107.71, y: -0.02))
            path.addCurve(to: CGPoint(x: 137.06, y: 12.57), controlPoint1: CGPoint(x: 110.32, y: 0.02), controlPoint2: CGPoint(x: 128.22, y: 1.28))
            path.addCurve(to: CGPoint(x: 146.21, y: 34.28), controlPoint1: CGPoint(x: 138.87, y: 14.89), controlPoint2: CGPoint(x: 143.96, y: 25.54))
            path.addCurve(to: CGPoint(x: 148.84, y: 44.58), controlPoint1: CGPoint(x: 148.46, y: 43.03), controlPoint2: CGPoint(x: 148.27, y: 42.33))
            path.addCurve(to: CGPoint(x: 151.99, y: 35.17), controlPoint1: CGPoint(x: 149.42, y: 42.01), controlPoint2: CGPoint(x: 150.88, y: 32.91))
            path.addCurve(to: CGPoint(x: 166.29, y: 37.07), controlPoint1: CGPoint(x: 153.11, y: 37.43), controlPoint2: CGPoint(x: 163.61, y: 38.65))
            path.addCurve(to: CGPoint(x: 153.54, y: 89.55), controlPoint1: CGPoint(x: 168.98, y: 35.48), controlPoint2: CGPoint(x: 162.32, y: 89.55))
            path.addCurve(to: CGPoint(x: 133.63, y: 66.39), controlPoint1: CGPoint(x: 138.85, y: 89.55), controlPoint2: CGPoint(x: 137.31, y: 76.29))
            path.addCurve(to: CGPoint(x: 128.5, y: 108.32), controlPoint1: CGPoint(x: 134.37, y: 77.29), controlPoint2: CGPoint(x: 125.31, y: 77.52))
            path.addCurve(to: CGPoint(x: 135.82, y: 171.53), controlPoint1: CGPoint(x: 131.7, y: 139.13), controlPoint2: CGPoint(x: 136.73, y: 166.37))
            path.addCurve(to: CGPoint(x: 50.35, y: 171.53), controlPoint1: CGPoint(x: 134.9, y: 176.7), controlPoint2: CGPoint(x: 51.6, y: 175.3))
            path.addCurve(to: CGPoint(x: 57.23, y: 100.99), controlPoint1: CGPoint(x: 49.09, y: 167.76), controlPoint2: CGPoint(x: 57.23, y: 126.08))
            path.addCurve(to: CGPoint(x: 50.64, y: 57.47), controlPoint1: CGPoint(x: 57.23, y: 72.02), controlPoint2: CGPoint(x: 50.64, y: 57.47))
            path.addCurve(to: CGPoint(x: 15.34, y: 174.5), controlPoint1: CGPoint(x: 50.64, y: 57.47), controlPoint2: CGPoint(x: 16.43, y: 172.83))
            path.addCurve(to: CGPoint(x: 0, y: 167.37), controlPoint1: CGPoint(x: 14.25, y: 176.16), controlPoint2: CGPoint(x: 0, y: 170.92))
            path.close()
            
            path2.move(to: CGPoint(x: 0.01, y: 18.09))
            path2.addCurve(to: CGPoint(x: 3.64, y: 3.79), controlPoint1: CGPoint(x: 1.54, y: 12.01), controlPoint2: CGPoint(x: 2.97, y: 6.83))
            path2.addCurve(to: CGPoint(x: 2.68, y: 0), controlPoint1: CGPoint(x: 3.27, y: 2.31), controlPoint2: CGPoint(x: 2.91, y: 0.89))
            path2.addCurve(to: CGPoint(x: 0.01, y: 18.09), controlPoint1: CGPoint(x: 1.89, y: 3.16), controlPoint2: CGPoint(x: -0.16, y: 11.29))
            path2.close()
        } else {
            path.move(to: CGPoint(x: 0, y: 167.37))
            path.addCurve(to: CGPoint(x: 30.22, y: 48.49), controlPoint1: CGPoint(x: 0, y: 163.81), controlPoint2: CGPoint(x: 26.18, y: 63.98))
            path.addCurve(to: CGPoint(x: 45.14, y: 15.81), controlPoint1: CGPoint(x: 34.27, y: 33), controlPoint2: CGPoint(x: 42.06, y: 19.2))
            path.addCurve(to: CGPoint(x: 73.43, y: 1.07), controlPoint1: CGPoint(x: 55.1, y: 4.85), controlPoint2: CGPoint(x: 71.78, y: 1.06))
            path.addCurve(to: CGPoint(x: 91.3, y: 14.47), controlPoint1: CGPoint(x: 75.09, y: 1.09), controlPoint2: CGPoint(x: 75.41, y: 14.47))
            path.addCurve(to: CGPoint(x: 109.02, y: 0), controlPoint1: CGPoint(x: 107.19, y: 14.47), controlPoint2: CGPoint(x: 107.71, y: -0.02))
            path.addCurve(to: CGPoint(x: 137.06, y: 12.57), controlPoint1: CGPoint(x: 110.32, y: 0.02), controlPoint2: CGPoint(x: 128.22, y: 1.28))
            path.addCurve(to: CGPoint(x: 148.57, y: 34.59), controlPoint1: CGPoint(x: 138.87, y: 14.89), controlPoint2: CGPoint(x: 143.8, y: 22.09))
            path.addCurve(to: CGPoint(x: 183.38, y: 159.4), controlPoint1: CGPoint(x: 153.35, y: 47.1), controlPoint2: CGPoint(x: 183.38, y: 157.18))
            path.addCurve(to: CGPoint(x: 168.66, y: 163.1), controlPoint1: CGPoint(x: 183.38, y: 162.2), controlPoint2: CGPoint(x: 169.78, y: 165.9))
            path.addCurve(to: CGPoint(x: 133.67, y: 57.28), controlPoint1: CGPoint(x: 167.54, y: 160.3), controlPoint2: CGPoint(x: 139.88, y: 74.03))
            path.addCurve(to: CGPoint(x: 128.5, y: 108.32), controlPoint1: CGPoint(x: 136.32, y: 82.14), controlPoint2: CGPoint(x: 125.31, y: 77.52))
            path.addCurve(to: CGPoint(x: 135.82, y: 171.53), controlPoint1: CGPoint(x: 131.7, y: 139.13), controlPoint2: CGPoint(x: 136.73, y: 166.37))
            path.addCurve(to: CGPoint(x: 50.35, y: 171.53), controlPoint1: CGPoint(x: 134.9, y: 176.7), controlPoint2: CGPoint(x: 51.6, y: 175.3))
            path.addCurve(to: CGPoint(x: 57.23, y: 100.99), controlPoint1: CGPoint(x: 49.09, y: 167.76), controlPoint2: CGPoint(x: 57.23, y: 126.08))
            path.addCurve(to: CGPoint(x: 50.64, y: 57.47), controlPoint1: CGPoint(x: 57.23, y: 72.02), controlPoint2: CGPoint(x: 50.64, y: 57.47))
            path.addCurve(to: CGPoint(x: 15.34, y: 174.5), controlPoint1: CGPoint(x: 50.64, y: 57.47), controlPoint2: CGPoint(x: 16.43, y: 172.83))
            path.addCurve(to: CGPoint(x: 0, y: 167.37), controlPoint1: CGPoint(x: 14.25, y: 176.16), controlPoint2: CGPoint(x: 0, y: 170.92))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 37.56, y: 127.75))
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 182.76, y: 168.56))
        
        let top = UIView()
        top.layer.addSublayers(pathLayer, path2Layer)
        return top
    }
    
}
