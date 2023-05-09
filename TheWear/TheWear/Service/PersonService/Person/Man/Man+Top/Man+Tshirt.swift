/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawTshirt(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path1 = UIBezierPath()
        if rain {
            path.move(to: CGPoint(x: 0, y: 72.85))
            path.addCurve(to: CGPoint(x: 19.49, y: 18.24), controlPoint1: CGPoint(x: -0.03, y: 70.07), controlPoint2: CGPoint(x: 8.3, y: 30.55))
            path.addCurve(to: CGPoint(x: 54.33, y: 1.49), controlPoint1: CGPoint(x: 30.68, y: 5.93), controlPoint2: CGPoint(x: 52.68, y: 1.48))
            path.addCurve(to: CGPoint(x: 74.95, y: 15.32), controlPoint1: CGPoint(x: 55.98, y: 1.51), controlPoint2: CGPoint(x: 57.05, y: 15.32))
            path.addCurve(to: CGPoint(x: 92.77, y: 0), controlPoint1: CGPoint(x: 92.86, y: 15.32), controlPoint2: CGPoint(x: 91.46, y: -0.02))
            path.addCurve(to: CGPoint(x: 126.21, y: 15.66), controlPoint1: CGPoint(x: 94.08, y: 0.02), controlPoint2: CGPoint(x: 119.02, y: 5.28))
            path.addCurve(to: CGPoint(x: 136.76, y: 37.59), controlPoint1: CGPoint(x: 133.4, y: 26.04), controlPoint2: CGPoint(x: 136.22, y: 35.13))
            path.addCurve(to: CGPoint(x: 131.06, y: 64.25), controlPoint1: CGPoint(x: 135.39, y: 43.66), controlPoint2: CGPoint(x: 133.4, y: 52.97))
            path.addCurve(to: CGPoint(x: 119.32, y: 79.11), controlPoint1: CGPoint(x: 121.71, y: 71.11), controlPoint2: CGPoint(x: 120.37, y: 80.21))
            path.addCurve(to: CGPoint(x: 116.7, y: 67.83), controlPoint1: CGPoint(x: 118.28, y: 78.02), controlPoint2: CGPoint(x: 116.7, y: 67.83))
            path.addCurve(to: CGPoint(x: 119.72, y: 117.71), controlPoint1: CGPoint(x: 116.7, y: 67.83), controlPoint2: CGPoint(x: 117.97, y: 77.75))
            path.addCurve(to: CGPoint(x: 123.97, y: 197.01), controlPoint1: CGPoint(x: 121.46, y: 157.67), controlPoint2: CGPoint(x: 124.88, y: 191.84))
            path.addCurve(to: CGPoint(x: 32.32, y: 199.03), controlPoint1: CGPoint(x: 123.06, y: 202.17), controlPoint2: CGPoint(x: 34, y: 200.71))
            path.addCurve(to: CGPoint(x: 33.25, y: 127.32), controlPoint1: CGPoint(x: 30.64, y: 197.35), controlPoint2: CGPoint(x: 33.25, y: 152.4))
            path.addCurve(to: CGPoint(x: 32.3, y: 73.1), controlPoint1: CGPoint(x: 33.25, y: 98.35), controlPoint2: CGPoint(x: 32.3, y: 73.1))
            path.addCurve(to: CGPoint(x: 28.72, y: 83.83), controlPoint1: CGPoint(x: 32.3, y: 73.1), controlPoint2: CGPoint(x: 29.82, y: 82.16))
            path.addCurve(to: CGPoint(x: 0, y: 72.85), controlPoint1: CGPoint(x: 27.63, y: 85.49), controlPoint2: CGPoint(x: 0.03, y: 75.64))
            path.close()
            
            path1.move(to: CGPoint(x: 5.71, y: 3.15))
            path1.addCurve(to: CGPoint(x: 4.79, y: 0), controlPoint1: CGPoint(x: 5.27, y: 1.37), controlPoint2: CGPoint(x: 4.79, y: 0))
            path1.addCurve(to: CGPoint(x: 1.28, y: 15.55), controlPoint1: CGPoint(x: 4.79, y: 0), controlPoint2: CGPoint(x: 2.3, y: 9.51))
            path1.addCurve(to: CGPoint(x: 0, y: 29.82), controlPoint1: CGPoint(x: 0.27, y: 21.59), controlPoint2: CGPoint(x: 0, y: 29.82))
            path1.addCurve(to: CGPoint(x: 5.71, y: 3.15), controlPoint1: CGPoint(x: 0, y: 29.82), controlPoint2: CGPoint(x: 4.96, y: 6.13))
            path1.close()
        } else {
            path.move(to: CGPoint(x: 0, y: 72.56))
            path.addCurve(to: CGPoint(x: 19.49, y: 17.95), controlPoint1: CGPoint(x: -0.03, y: 69.78), controlPoint2: CGPoint(x: 8.3, y: 30.26))
            path.addCurve(to: CGPoint(x: 54.33, y: 1.2), controlPoint1: CGPoint(x: 30.68, y: 5.64), controlPoint2: CGPoint(x: 52.68, y: 1.19))
            path.addCurve(to: CGPoint(x: 74.95, y: 15.03), controlPoint1: CGPoint(x: 55.98, y: 1.22), controlPoint2: CGPoint(x: 57.05, y: 15.03))
            path.addCurve(to: CGPoint(x: 92.72, y: 0), controlPoint1: CGPoint(x: 92.86, y: 15.03), controlPoint2: CGPoint(x: 91.41, y: -0.02))
            path.addCurve(to: CGPoint(x: 128.56, y: 15.86), controlPoint1: CGPoint(x: 94.02, y: 0.02), controlPoint2: CGPoint(x: 118.49, y: 2.99))
            path.addCurve(to: CGPoint(x: 147.84, y: 72.95), controlPoint1: CGPoint(x: 138.63, y: 28.73), controlPoint2: CGPoint(x: 147.84, y: 70.15))
            path.addCurve(to: CGPoint(x: 121.69, y: 82.22), controlPoint1: CGPoint(x: 147.84, y: 75.74), controlPoint2: CGPoint(x: 122.81, y: 85.02))
            path.addCurve(to: CGPoint(x: 116.7, y: 67.54), controlPoint1: CGPoint(x: 120.57, y: 79.42), controlPoint2: CGPoint(x: 116.7, y: 67.54))
            path.addCurve(to: CGPoint(x: 119.72, y: 117.42), controlPoint1: CGPoint(x: 116.7, y: 67.54), controlPoint2: CGPoint(x: 117.97, y: 77.46))
            path.addCurve(to: CGPoint(x: 123.97, y: 196.72), controlPoint1: CGPoint(x: 121.46, y: 157.38), controlPoint2: CGPoint(x: 124.88, y: 191.55))
            path.addCurve(to: CGPoint(x: 32.32, y: 198.74), controlPoint1: CGPoint(x: 123.06, y: 201.88), controlPoint2: CGPoint(x: 34, y: 200.42))
            path.addCurve(to: CGPoint(x: 33.25, y: 127.03), controlPoint1: CGPoint(x: 30.64, y: 197.06), controlPoint2: CGPoint(x: 33.25, y: 152.11))
            path.addCurve(to: CGPoint(x: 32.3, y: 72.81), controlPoint1: CGPoint(x: 33.25, y: 98.06), controlPoint2: CGPoint(x: 32.3, y: 72.81))
            path.addCurve(to: CGPoint(x: 28.72, y: 83.54), controlPoint1: CGPoint(x: 32.3, y: 72.81), controlPoint2: CGPoint(x: 29.82, y: 81.87))
            path.addCurve(to: CGPoint(x: 0, y: 72.56), controlPoint1: CGPoint(x: 27.63, y: 85.2), controlPoint2: CGPoint(x: 0.03, y: 75.35))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 53.66, y: rain ? 125.1 : 125.39))
        let path1Layer = createLayer(path1, Color.shadow.medium, CGPoint(x: 184.71, y: 159.54))
        
        let tshirt = UIView()
        tshirt.layer.addSublayers(pathLayer, path1Layer)
        return tshirt
    }
    
}
