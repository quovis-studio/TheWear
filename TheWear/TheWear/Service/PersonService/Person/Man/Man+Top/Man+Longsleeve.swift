/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawLongsleeve(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path1 = UIBezierPath()
        let path2 = UIBezierPath()
        if rain {
            let path2 = UIBezierPath()
            path2.move(to: CGPoint(x: 3.81, y: 4.27))
            path2.addCurve(to: CGPoint(x: 4.24, y: 2.63), controlPoint1: CGPoint(x: 3.85, y: 4.1), controlPoint2: CGPoint(x: 4.12, y: 3.1))
            path2.addLine(to: CGPoint(x: 1.91, y: 0))
            path2.addLine(to: CGPoint(x: 0, y: 0.7))
            path2.addCurve(to: CGPoint(x: 3.81, y: 4.27), controlPoint1: CGPoint(x: 1.25, y: 1.96), controlPoint2: CGPoint(x: 3.77, y: 4.45))
            path2.close()

            path.move(to: CGPoint(x: 0.02, y: 170.09))
            path.addCurve(to: CGPoint(x: 17.75, y: 82.49), controlPoint1: CGPoint(x: 0.6, y: 164.86), controlPoint2: CGPoint(x: 8.91, y: 126.25))
            path.addCurve(to: CGPoint(x: 38.54, y: 17.97), controlPoint1: CGPoint(x: 24.18, y: 50.68), controlPoint2: CGPoint(x: 27.08, y: 31.79))
            path.addCurve(to: CGPoint(x: 74.48, y: 1.02), controlPoint1: CGPoint(x: 50, y: 4.15), controlPoint2: CGPoint(x: 72.76, y: 1.01))
            path.addCurve(to: CGPoint(x: 94.16, y: 15.11), controlPoint1: CGPoint(x: 76.2, y: 1.03), controlPoint2: CGPoint(x: 77.79, y: 15.11))
            path.addCurve(to: CGPoint(x: 112.79, y: 0), controlPoint1: CGPoint(x: 110.53, y: 15.11), controlPoint2: CGPoint(x: 111.65, y: -0.01))
            path.addCurve(to: CGPoint(x: 144.45, y: 13.66), controlPoint1: CGPoint(x: 113.93, y: 0.02), controlPoint2: CGPoint(x: 136.46, y: 3.99))
            path.addCurve(to: CGPoint(x: 155.12, y: 35.88), controlPoint1: CGPoint(x: 152.44, y: 23.33), controlPoint2: CGPoint(x: 155.35, y: 34.77))
            path.addCurve(to: CGPoint(x: 172.72, y: 38.72), controlPoint1: CGPoint(x: 158.15, y: 39.17), controlPoint2: CGPoint(x: 169.53, y: 40.87))
            path.addCurve(to: CGPoint(x: 161.35, y: 103.78), controlPoint1: CGPoint(x: 175.9, y: 36.56), controlPoint2: CGPoint(x: 176.33, y: 103.78))
            path.addCurve(to: CGPoint(x: 135.98, y: 69.97), controlPoint1: CGPoint(x: 139.41, y: 103.78), controlPoint2: CGPoint(x: 135.98, y: 69.97))
            path.addCurve(to: CGPoint(x: 139.97, y: 128.36), controlPoint1: CGPoint(x: 135.98, y: 69.97), controlPoint2: CGPoint(x: 137.52, y: 86.55))
            path.addCurve(to: CGPoint(x: 146.22, y: 209.96), controlPoint1: CGPoint(x: 142.42, y: 170.17), controlPoint2: CGPoint(x: 147.17, y: 204.59))
            path.addCurve(to: CGPoint(x: 49.93, y: 209.96), controlPoint1: CGPoint(x: 145.28, y: 215.33), controlPoint2: CGPoint(x: 51.67, y: 211.71))
            path.addCurve(to: CGPoint(x: 51.7, y: 132.12), controlPoint1: CGPoint(x: 48.18, y: 208.22), controlPoint2: CGPoint(x: 51.7, y: 158.2))
            path.addCurve(to: CGPoint(x: 51.7, y: 71.31), controlPoint1: CGPoint(x: 51.7, y: 106.04), controlPoint2: CGPoint(x: 51.7, y: 71.31))
            path.addCurve(to: CGPoint(x: 16.59, y: 174.93), controlPoint1: CGPoint(x: 51.7, y: 71.31), controlPoint2: CGPoint(x: 18.88, y: 171.27))
            path.addCurve(to: CGPoint(x: 0.02, y: 170.09), controlPoint1: CGPoint(x: 14.31, y: 178.58), controlPoint2: CGPoint(x: -0.57, y: 175.33))
            path.close()
            
            path1.move(to: CGPoint(x: 0.12, y: 30.13))
            path1.addCurve(to: CGPoint(x: 5.28, y: 3.31), controlPoint1: CGPoint(x: 0.12, y: 30.13), controlPoint2: CGPoint(x: 4.71, y: 4.09))
            path1.addCurve(to: CGPoint(x: 6.76, y: 3.9), controlPoint1: CGPoint(x: 5.85, y: 2.53), controlPoint2: CGPoint(x: 6.23, y: 3.46))
            path1.addCurve(to: CGPoint(x: 7.05, y: 2.8), controlPoint1: CGPoint(x: 6.85, y: 3.57), controlPoint2: CGPoint(x: 6.91, y: 3.37))
            path1.addCurve(to: CGPoint(x: 4.19, y: 0), controlPoint1: CGPoint(x: 5.63, y: 1.15), controlPoint2: CGPoint(x: 4.19, y: 0))
            path1.addCurve(to: CGPoint(x: 1.14, y: 15.85), controlPoint1: CGPoint(x: 4.19, y: 0), controlPoint2: CGPoint(x: 2.8, y: 6.22))
            path1.addCurve(to: CGPoint(x: 0.12, y: 30.13), controlPoint1: CGPoint(x: -0.52, y: 25.48), controlPoint2: CGPoint(x: 0.12, y: 30.13))
            path1.close()
        } else {
            path.move(to: CGPoint(x: 0.02, y: 169.86))
            path.addCurve(to: CGPoint(x: 17.75, y: 82.26), controlPoint1: CGPoint(x: 0.6, y: 164.62), controlPoint2: CGPoint(x: 8.91, y: 126.02))
            path.addCurve(to: CGPoint(x: 38.54, y: 17.74), controlPoint1: CGPoint(x: 24.18, y: 50.45), controlPoint2: CGPoint(x: 27.08, y: 31.56))
            path.addCurve(to: CGPoint(x: 74.48, y: 0.79), controlPoint1: CGPoint(x: 50, y: 3.92), controlPoint2: CGPoint(x: 72.76, y: 0.77))
            path.addCurve(to: CGPoint(x: 94.16, y: 14.88), controlPoint1: CGPoint(x: 76.2, y: 0.8), controlPoint2: CGPoint(x: 77.79, y: 14.88))
            path.addCurve(to: CGPoint(x: 112.9, y: 0), controlPoint1: CGPoint(x: 110.53, y: 14.88), controlPoint2: CGPoint(x: 111.76, y: -0.01))
            path.addCurve(to: CGPoint(x: 148.45, y: 18.08), controlPoint1: CGPoint(x: 114.03, y: 0.02), controlPoint2: CGPoint(x: 135.5, y: 1.53))
            path.addCurve(to: CGPoint(x: 186.47, y: 162.21), controlPoint1: CGPoint(x: 161.4, y: 34.63), controlPoint2: CGPoint(x: 186.1, y: 155.39))
            path.addCurve(to: CGPoint(x: 168.58, y: 167.98), controlPoint1: CGPoint(x: 186.84, y: 169.03), controlPoint2: CGPoint(x: 171.1, y: 172.47))
            path.addCurve(to: CGPoint(x: 136.38, y: 68.94), controlPoint1: CGPoint(x: 166.06, y: 163.49), controlPoint2: CGPoint(x: 136.38, y: 68.94))
            path.addCurve(to: CGPoint(x: 139.97, y: 128.13), controlPoint1: CGPoint(x: 136.38, y: 68.94), controlPoint2: CGPoint(x: 138.15, y: 86.58))
            path.addCurve(to: CGPoint(x: 146.22, y: 209.73), controlPoint1: CGPoint(x: 141.79, y: 169.67), controlPoint2: CGPoint(x: 147.17, y: 204.36))
            path.addCurve(to: CGPoint(x: 49.93, y: 209.73), controlPoint1: CGPoint(x: 145.28, y: 215.1), controlPoint2: CGPoint(x: 51.67, y: 211.48))
            path.addCurve(to: CGPoint(x: 51.7, y: 131.89), controlPoint1: CGPoint(x: 48.18, y: 207.99), controlPoint2: CGPoint(x: 51.7, y: 157.97))
            path.addCurve(to: CGPoint(x: 51.7, y: 71.07), controlPoint1: CGPoint(x: 51.7, y: 105.81), controlPoint2: CGPoint(x: 51.7, y: 71.07))
            path.addCurve(to: CGPoint(x: 16.59, y: 174.69), controlPoint1: CGPoint(x: 51.7, y: 71.07), controlPoint2: CGPoint(x: 18.88, y: 171.04))
            path.addCurve(to: CGPoint(x: 0.02, y: 169.86), controlPoint1: CGPoint(x: 14.31, y: 178.35), controlPoint2: CGPoint(x: -0.57, y: 175.09))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 34.24, y: rain ? 125.57 : 125.8))
        let path1Layer = createLayer(path1, Color.shadow.medium, CGPoint(x: 183.76, y: 158.49))
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 186.62, y: 158.48))
        
        let long = UIView()
        long.layer.addSublayers(path2Layer, pathLayer, path1Layer)
        return long
    }
    
}
