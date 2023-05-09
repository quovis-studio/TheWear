/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawTshirt(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path2 = UIBezierPath()
        if rain {
            path.move(to: CGPoint(x: 0, y: 59.69))
            path.addCurve(to: CGPoint(x: 18.11, y: 15.81), controlPoint1: CGPoint(x: -0.03, y: 56.9), controlPoint2: CGPoint(x: 8.14, y: 26.77))
            path.addCurve(to: CGPoint(x: 46.41, y: 1.07), controlPoint1: CGPoint(x: 28.07, y: 4.85), controlPoint2: CGPoint(x: 44.75, y: 1.06))
            path.addCurve(to: CGPoint(x: 64.27, y: 14.47), controlPoint1: CGPoint(x: 48.06, y: 1.08), controlPoint2: CGPoint(x: 48.38, y: 14.47))
            path.addCurve(to: CGPoint(x: 81.99, y: 0), controlPoint1: CGPoint(x: 80.17, y: 14.47), controlPoint2: CGPoint(x: 80.68, y: -0.02))
            path.addCurve(to: CGPoint(x: 110.04, y: 12.57), controlPoint1: CGPoint(x: 83.3, y: 0.02), controlPoint2: CGPoint(x: 102.99, y: 2))
            path.addCurve(to: CGPoint(x: 122.85, y: 44.46), controlPoint1: CGPoint(x: 117.08, y: 23.14), controlPoint2: CGPoint(x: 122.03, y: 40.32))
            path.addCurve(to: CGPoint(x: 120.61, y: 53.73), controlPoint1: CGPoint(x: 122.7, y: 45.11), controlPoint2: CGPoint(x: 121.11, y: 52.11))
            path.addCurve(to: CGPoint(x: 111.74, y: 60.88), controlPoint1: CGPoint(x: 118.07, y: 55.21), controlPoint2: CGPoint(x: 115.46, y: 56.87))
            path.addCurve(to: CGPoint(x: 105.75, y: 60.44), controlPoint1: CGPoint(x: 108.02, y: 64.9), controlPoint2: CGPoint(x: 107.23, y: 69.6))
            path.addCurve(to: CGPoint(x: 101.48, y: 108.32), controlPoint1: CGPoint(x: 109.17, y: 81.63), controlPoint2: CGPoint(x: 98.28, y: 77.52))
            path.addCurve(to: CGPoint(x: 110.92, y: 170.74), controlPoint1: CGPoint(x: 104.67, y: 139.13), controlPoint2: CGPoint(x: 111.64, y: 158.35))
            path.addCurve(to: CGPoint(x: 20.69, y: 172.71), controlPoint1: CGPoint(x: 110.2, y: 183.13), controlPoint2: CGPoint(x: 22.43, y: 184.86))
            path.addCurve(to: CGPoint(x: 30.21, y: 100.99), controlPoint1: CGPoint(x: 18.96, y: 160.56), controlPoint2: CGPoint(x: 30.21, y: 126.07))
            path.addCurve(to: CGPoint(x: 23.61, y: 57.47), controlPoint1: CGPoint(x: 30.21, y: 72.02), controlPoint2: CGPoint(x: 23.61, y: 57.47))
            path.addCurve(to: CGPoint(x: 19.64, y: 68.32), controlPoint1: CGPoint(x: 23.61, y: 57.47), controlPoint2: CGPoint(x: 20.73, y: 66.65))
            path.addCurve(to: CGPoint(x: 0, y: 59.69), controlPoint1: CGPoint(x: 18.55, y: 69.98), controlPoint2: CGPoint(x: 0.03, y: 62.47))
            path.close()
            
            path2.move(to: CGPoint(x: 1.35, y: 13.06))
            path2.addCurve(to: CGPoint(x: 3.58, y: 3.8), controlPoint1: CGPoint(x: 1.87, y: 11.22), controlPoint2: CGPoint(x: 2.91, y: 6.84))
            path2.addCurve(to: CGPoint(x: 2.64, y: 0), controlPoint1: CGPoint(x: 3.25, y: 2.17), controlPoint2: CGPoint(x: 2.87, y: 0.84))
            path2.addCurve(to: CGPoint(x: 0, y: 13.87), controlPoint1: CGPoint(x: 1.85, y: 3.17), controlPoint2: CGPoint(x: 1.27, y: 6.34))
            path2.addCurve(to: CGPoint(x: 1.35, y: 13.06), controlPoint1: CGPoint(x: 0.39, y: 13.63), controlPoint2: CGPoint(x: 0.85, y: 13.35))
            path2.close()
        } else {
            path.move(to: CGPoint(x: 0, y: 59.69))
            path.addCurve(to: CGPoint(x: 18.11, y: 15.81), controlPoint1: CGPoint(x: -0.03, y: 56.9), controlPoint2: CGPoint(x: 8.14, y: 26.77))
            path.addCurve(to: CGPoint(x: 46.41, y: 1.07), controlPoint1: CGPoint(x: 28.07, y: 4.85), controlPoint2: CGPoint(x: 44.75, y: 1.06))
            path.addCurve(to: CGPoint(x: 64.27, y: 14.47), controlPoint1: CGPoint(x: 48.06, y: 1.08), controlPoint2: CGPoint(x: 48.38, y: 14.47))
            path.addCurve(to: CGPoint(x: 81.99, y: 0), controlPoint1: CGPoint(x: 80.17, y: 14.47), controlPoint2: CGPoint(x: 80.68, y: -0.02))
            path.addCurve(to: CGPoint(x: 110.04, y: 12.57), controlPoint1: CGPoint(x: 83.3, y: 0.02), controlPoint2: CGPoint(x: 101.2, y: 1.28))
            path.addCurve(to: CGPoint(x: 128.85, y: 58.54), controlPoint1: CGPoint(x: 118.88, y: 23.87), controlPoint2: CGPoint(x: 128.85, y: 55.74))
            path.addCurve(to: CGPoint(x: 109.73, y: 66.9), controlPoint1: CGPoint(x: 128.85, y: 61.34), controlPoint2: CGPoint(x: 110.85, y: 69.69))
            path.addCurve(to: CGPoint(x: 106.64, y: 57.28), controlPoint1: CGPoint(x: 108.61, y: 64.1), controlPoint2: CGPoint(x: 107.72, y: 59.51))
            path.addCurve(to: CGPoint(x: 101.48, y: 108.32), controlPoint1: CGPoint(x: 109.3, y: 82.14), controlPoint2: CGPoint(x: 98.28, y: 77.52))
            path.addCurve(to: CGPoint(x: 110.92, y: 170.74), controlPoint1: CGPoint(x: 104.67, y: 139.13), controlPoint2: CGPoint(x: 111.64, y: 158.35))
            path.addCurve(to: CGPoint(x: 20.69, y: 172.71), controlPoint1: CGPoint(x: 110.2, y: 183.13), controlPoint2: CGPoint(x: 22.43, y: 184.86))
            path.addCurve(to: CGPoint(x: 30.21, y: 100.99), controlPoint1: CGPoint(x: 18.96, y: 160.56), controlPoint2: CGPoint(x: 30.21, y: 126.08))
            path.addCurve(to: CGPoint(x: 23.61, y: 57.47), controlPoint1: CGPoint(x: 30.21, y: 72.02), controlPoint2: CGPoint(x: 23.61, y: 57.47))
            path.addCurve(to: CGPoint(x: 19.64, y: 68.32), controlPoint1: CGPoint(x: 23.61, y: 57.47), controlPoint2: CGPoint(x: 20.73, y: 66.65))
            path.addCurve(to: CGPoint(x: 0, y: 59.69), controlPoint1: CGPoint(x: 18.55, y: 69.98), controlPoint2: CGPoint(x: 0.03, y: 62.47))
            path.close()
        }
        let pathLayer = createLayer(path, color, rain ? CGPoint(x: 64.63, y: 127.7) : CGPoint(x: 64.59, y: 127.75))
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 183.9, y: 168.36))
        
        let top = UIView()
        top.layer.addSublayers(pathLayer, path2Layer)
        return top
    }
    
}
