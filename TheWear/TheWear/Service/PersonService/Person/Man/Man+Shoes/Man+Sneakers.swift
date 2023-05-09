/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSneakers(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 4.31, y: 0.29))
        path.addCurve(to: CGPoint(x: 12.98, y: 9.46), controlPoint1: CGPoint(x: 5.7, y: 0.33), controlPoint2: CGPoint(x: 5.99, y: 9.46))
        path.addCurve(to: CGPoint(x: 23.9, y: 0.29), controlPoint1: CGPoint(x: 18.25, y: 9.46), controlPoint2: CGPoint(x: 20.61, y: 1.94))
        path.addCurve(to: CGPoint(x: 35.77, y: 10.71), controlPoint1: CGPoint(x: 27.67, y: -1.61), controlPoint2: CGPoint(x: 25.06, y: 6.43))
        path.addCurve(to: CGPoint(x: 52.86, y: 16.17), controlPoint1: CGPoint(x: 47.95, y: 15.15), controlPoint2: CGPoint(x: 47.37, y: 14.8))
        path.addCurve(to: CGPoint(x: 62.08, y: 25.8), controlPoint1: CGPoint(x: 58.36, y: 17.54), controlPoint2: CGPoint(x: 64.53, y: 18.17))
        path.addCurve(to: CGPoint(x: 52.05, y: 31.63), controlPoint1: CGPoint(x: 61.29, y: 28.27), controlPoint2: CGPoint(x: 57.07, y: 31.63))
        path.addCurve(to: CGPoint(x: 5.98, y: 31.63), controlPoint1: CGPoint(x: 36.67, y: 31.63), controlPoint2: CGPoint(x: 17.06, y: 31.82))
        path.addCurve(to: CGPoint(x: 1.37, y: 30.67), controlPoint1: CGPoint(x: 2.97, y: 31.58), controlPoint2: CGPoint(x: 1.51, y: 30.8))
        path.addCurve(to: CGPoint(x: 0.07, y: 25.65), controlPoint1: CGPoint(x: 1.22, y: 30.55), controlPoint2: CGPoint(x: -0.34, y: 29.64))
        path.addCurve(to: CGPoint(x: 1.35, y: 20.85), controlPoint1: CGPoint(x: 0.2, y: 24.32), controlPoint2: CGPoint(x: 1.35, y: 20.85))
        path.addCurve(to: CGPoint(x: 0.59, y: 11.19), controlPoint1: CGPoint(x: 1.35, y: 20.85), controlPoint2: CGPoint(x: 0.65, y: 12.96))
        path.addCurve(to: CGPoint(x: 4.31, y: 0.29), controlPoint1: CGPoint(x: 0.42, y: 5.77), controlPoint2: CGPoint(x: 2.28, y: 0.21))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 85.27, y: 564.56))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 1.84, y: 0.3))
        path2.addCurve(to: CGPoint(x: 12.18, y: 8.91), controlPoint1: CGPoint(x: 3.22, y: 0.35), controlPoint2: CGPoint(x: 4.77, y: 8.91))
        path2.addCurve(to: CGPoint(x: 21.29, y: 0.3), controlPoint1: CGPoint(x: 17.35, y: 8.91), controlPoint2: CGPoint(x: 18, y: 1.96))
        path2.addCurve(to: CGPoint(x: 34.85, y: 10.17), controlPoint1: CGPoint(x: 25.06, y: -1.6), controlPoint2: CGPoint(x: 24.14, y: 5.88))
        path2.addCurve(to: CGPoint(x: 51.84, y: 15.68), controlPoint1: CGPoint(x: 47.04, y: 14.61), controlPoint2: CGPoint(x: 46.34, y: 14.31))
        path2.addCurve(to: CGPoint(x: 61.06, y: 25.31), controlPoint1: CGPoint(x: 57.34, y: 17.05), controlPoint2: CGPoint(x: 63.51, y: 17.68))
        path2.addCurve(to: CGPoint(x: 51.03, y: 31.14), controlPoint1: CGPoint(x: 60.27, y: 27.78), controlPoint2: CGPoint(x: 56.04, y: 31.14))
        path2.addCurve(to: CGPoint(x: 6.96, y: 31.14), controlPoint1: CGPoint(x: 35.64, y: 31.14), controlPoint2: CGPoint(x: 18.04, y: 31.33))
        path2.addCurve(to: CGPoint(x: 2.34, y: 30.18), controlPoint1: CGPoint(x: 3.95, y: 31.09), controlPoint2: CGPoint(x: 2.49, y: 30.3))
        path2.addCurve(to: CGPoint(x: 1.04, y: 25.15), controlPoint1: CGPoint(x: 2.19, y: 30.05), controlPoint2: CGPoint(x: 0.64, y: 29.15))
        path2.addCurve(to: CGPoint(x: 2.33, y: 20.35), controlPoint1: CGPoint(x: 1.18, y: 23.82), controlPoint2: CGPoint(x: 2.33, y: 20.35))
        path2.addCurve(to: CGPoint(x: 0.07, y: 9.46), controlPoint1: CGPoint(x: 2.33, y: 20.35), controlPoint2: CGPoint(x: 0.13, y: 11.23))
        path2.addCurve(to: CGPoint(x: 1.84, y: 0.3), controlPoint1: CGPoint(x: -0.08, y: 4.52), controlPoint2: CGPoint(x: -0.2, y: 0.23))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 171.93, y: 565.06))
        
        let sneakersView = UIView()
        sneakersView.layer.addSublayers(pathLayer, path2Layer)
        return sneakersView
    }
    
}
