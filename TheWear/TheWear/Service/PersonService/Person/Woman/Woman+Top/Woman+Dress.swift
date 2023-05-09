/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawDress(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path2 = UIBezierPath()
        
        if rain {
            path.move(to: CGPoint(x: 20.03, y: 15.46))
            path.addCurve(to: CGPoint(x: 40.09, y: 2.49), controlPoint1: CGPoint(x: 28.86, y: 5.06), controlPoint2: CGPoint(x: 38.65, y: 2.49))
            path.addCurve(to: CGPoint(x: 71.59, y: 33.85), controlPoint1: CGPoint(x: 41.54, y: 2.49), controlPoint2: CGPoint(x: 38.42, y: 34.88))
            path.addCurve(to: CGPoint(x: 95.05, y: 0), controlPoint1: CGPoint(x: 104.75, y: 32.83), controlPoint2: CGPoint(x: 93.74, y: -0.02))
            path.addCurve(to: CGPoint(x: 115.48, y: 12.02), controlPoint1: CGPoint(x: 96.35, y: 0.02), controlPoint2: CGPoint(x: 109.55, y: 2.78))
            path.addCurve(to: CGPoint(x: 126.93, y: 43.06), controlPoint1: CGPoint(x: 121.42, y: 21.25), controlPoint2: CGPoint(x: 126.93, y: 36.78))
            path.addCurve(to: CGPoint(x: 125.63, y: 48.6), controlPoint1: CGPoint(x: 126.65, y: 44.19), controlPoint2: CGPoint(x: 126.09, y: 46.68))
            path.addCurve(to: CGPoint(x: 116.51, y: 68.24), controlPoint1: CGPoint(x: 123.99, y: 52.07), controlPoint2: CGPoint(x: 119.24, y: 58.08))
            path.addCurve(to: CGPoint(x: 110.7, y: 63.5), controlPoint1: CGPoint(x: 114.21, y: 76.83), controlPoint2: CGPoint(x: 111.49, y: 68.99))
            path.addCurve(to: CGPoint(x: 106.21, y: 111.44), controlPoint1: CGPoint(x: 111.69, y: 80.44), controlPoint2: CGPoint(x: 103.17, y: 82.11))
            path.addCurve(to: CGPoint(x: 129.91, y: 240.58), controlPoint1: CGPoint(x: 109.4, y: 142.25), controlPoint2: CGPoint(x: 123.02, y: 212.27))
            path.addCurve(to: CGPoint(x: 11.98, y: 245.07), controlPoint1: CGPoint(x: 136.81, y: 268.89), controlPoint2: CGPoint(x: 10.4, y: 271.55))
            path.addCurve(to: CGPoint(x: 34.08, y: 106.07), controlPoint1: CGPoint(x: 13.56, y: 218.58), controlPoint2: CGPoint(x: 34.08, y: 131.16))
            path.addCurve(to: CGPoint(x: 28.87, y: 57.88), controlPoint1: CGPoint(x: 34.08, y: 77.1), controlPoint2: CGPoint(x: 28.87, y: 57.88))
            path.addCurve(to: CGPoint(x: 23.74, y: 76.12), controlPoint1: CGPoint(x: 28.87, y: 57.88), controlPoint2: CGPoint(x: 28.2, y: 66.15))
            path.addCurve(to: CGPoint(x: 0.27, y: 60.98), controlPoint1: CGPoint(x: 19.28, y: 86.09), controlPoint2: CGPoint(x: -2.69, y: 74.7))
            path.addCurve(to: CGPoint(x: 20.03, y: 15.46), controlPoint1: CGPoint(x: 3.23, y: 47.26), controlPoint2: CGPoint(x: 11.21, y: 25.85))
            path.close()
            
            path2.move(to: CGPoint(x: 2.08, y: 9.59))
            path2.addCurve(to: CGPoint(x: 3.38, y: 4.04), controlPoint1: CGPoint(x: 2.49, y: 7.83), controlPoint2: CGPoint(x: 3.13, y: 5.09))
            path2.addCurve(to: CGPoint(x: 2.91, y: 0), controlPoint1: CGPoint(x: 3.41, y: 3.11), controlPoint2: CGPoint(x: 3.16, y: 1.27))
            path2.addCurve(to: CGPoint(x: 0, y: 13.25), controlPoint1: CGPoint(x: 1.65, y: 4.28), controlPoint2: CGPoint(x: 0.95, y: 7.71))
            path2.addCurve(to: CGPoint(x: 2.08, y: 9.59), controlPoint1: CGPoint(x: 0.34, y: 12.69), controlPoint2: CGPoint(x: 1.63, y: 10.54))
            path2.close()
        } else {
            path.move(to: CGPoint(x: 20.03, y: 15.46))
            path.addCurve(to: CGPoint(x: 40.09, y: 2.49), controlPoint1: CGPoint(x: 28.86, y: 5.06), controlPoint2: CGPoint(x: 38.65, y: 2.49))
            path.addCurve(to: CGPoint(x: 71.59, y: 33.85), controlPoint1: CGPoint(x: 41.54, y: 2.49), controlPoint2: CGPoint(x: 38.42, y: 34.88))
            path.addCurve(to: CGPoint(x: 95.05, y: 0), controlPoint1: CGPoint(x: 104.75, y: 32.83), controlPoint2: CGPoint(x: 93.74, y: -0.02))
            path.addCurve(to: CGPoint(x: 117.07, y: 11.76), controlPoint1: CGPoint(x: 96.35, y: 0.02), controlPoint2: CGPoint(x: 105.62, y: -0.06))
            path.addCurve(to: CGPoint(x: 137.27, y: 62.71), controlPoint1: CGPoint(x: 128.52, y: 23.58), controlPoint2: CGPoint(x: 138.41, y: 53.63))
            path.addCurve(to: CGPoint(x: 116.44, y: 75.99), controlPoint1: CGPoint(x: 136.12, y: 71.79), controlPoint2: CGPoint(x: 120.35, y: 80.38))
            path.addCurve(to: CGPoint(x: 111.21, y: 60.33), controlPoint1: CGPoint(x: 113.58, y: 72.78), controlPoint2: CGPoint(x: 111.9, y: 65.74))
            path.addCurve(to: CGPoint(x: 106.21, y: 111.44), controlPoint1: CGPoint(x: 112.04, y: 80.4), controlPoint2: CGPoint(x: 103.24, y: 82.86))
            path.addCurve(to: CGPoint(x: 129.91, y: 240.58), controlPoint1: CGPoint(x: 109.4, y: 142.25), controlPoint2: CGPoint(x: 123.02, y: 212.27))
            path.addCurve(to: CGPoint(x: 11.98, y: 245.07), controlPoint1: CGPoint(x: 136.81, y: 268.89), controlPoint2: CGPoint(x: 10.4, y: 271.55))
            path.addCurve(to: CGPoint(x: 34.08, y: 106.07), controlPoint1: CGPoint(x: 13.56, y: 218.58), controlPoint2: CGPoint(x: 34.08, y: 131.16))
            path.addCurve(to: CGPoint(x: 28.87, y: 57.88), controlPoint1: CGPoint(x: 34.08, y: 77.1), controlPoint2: CGPoint(x: 28.87, y: 57.88))
            path.addCurve(to: CGPoint(x: 23.74, y: 76.12), controlPoint1: CGPoint(x: 28.87, y: 57.88), controlPoint2: CGPoint(x: 28.2, y: 66.15))
            path.addCurve(to: CGPoint(x: 0.27, y: 60.98), controlPoint1: CGPoint(x: 19.28, y: 86.09), controlPoint2: CGPoint(x: -2.69, y: 74.7))
            path.addCurve(to: CGPoint(x: 20.03, y: 15.46), controlPoint1: CGPoint(x: 3.23, y: 47.26), controlPoint2: CGPoint(x: 11.21, y: 25.85))
            path.close()
        }
        
        let pathLayer = createLayer(path, color, CGPoint(x: 60.4, y: 129.73))
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 183.95, y: 168.75))
        
        let top = UIView()
        top.layer.addSublayers(pathLayer, path2Layer)
        return top
    }
    
}
