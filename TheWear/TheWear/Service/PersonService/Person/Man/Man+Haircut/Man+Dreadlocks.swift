/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawDreadlocks() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 38.52, y: 53.35))
        path.addLine(to: CGPoint(x: 34.02, y: 52.85))
        path.addCurve(to: CGPoint(x: 27.02, y: 42.85), controlPoint1: CGPoint(x: 34.02, y: 52.85), controlPoint2: CGPoint(x: 32.52, y: 42.35))
        path.addCurve(to: CGPoint(x: 25.48, y: 61.1), controlPoint1: CGPoint(x: 21.52, y: 43.35), controlPoint2: CGPoint(x: 19.98, y: 50.1))
        path.addCurve(to: CGPoint(x: 24.33, y: 67.85), controlPoint1: CGPoint(x: 25.48, y: 61.1), controlPoint2: CGPoint(x: 30.42, y: 71.12))
        path.addCurve(to: CGPoint(x: 20.66, y: 63.92), controlPoint1: CGPoint(x: 22.38, y: 66.81), controlPoint2: CGPoint(x: 21.27, y: 65.38))
        path.addCurve(to: CGPoint(x: 17.6, y: 70.64), controlPoint1: CGPoint(x: 21.03, y: 67.96), controlPoint2: CGPoint(x: 21.05, y: 72.01))
        path.addCurve(to: CGPoint(x: 13.87, y: 50.75), controlPoint1: CGPoint(x: 11.91, y: 68.38), controlPoint2: CGPoint(x: 13.87, y: 53.27))
        path.addCurve(to: CGPoint(x: 8.01, y: 61.79), controlPoint1: CGPoint(x: 13.63, y: 55.05), controlPoint2: CGPoint(x: 9.88, y: 62.88))
        path.addCurve(to: CGPoint(x: 8.88, y: 41.63), controlPoint1: CGPoint(x: 6.14, y: 60.71), controlPoint2: CGPoint(x: 6.25, y: 50.51))
        path.addCurve(to: CGPoint(x: 2.86, y: 44.59), controlPoint1: CGPoint(x: 6.79, y: 47.32), controlPoint2: CGPoint(x: 3.15, y: 45.49))
        path.addCurve(to: CGPoint(x: 8.17, y: 30.1), controlPoint1: CGPoint(x: 2.32, y: 42.98), controlPoint2: CGPoint(x: 4.29, y: 37.11))
        path.addCurve(to: CGPoint(x: 0.04, y: 30.75), controlPoint1: CGPoint(x: 6.28, y: 31.29), controlPoint2: CGPoint(x: 0.76, y: 33.67))
        path.addCurve(to: CGPoint(x: 14.23, y: 18.23), controlPoint1: CGPoint(x: -0.67, y: 27.83), controlPoint2: CGPoint(x: 7.38, y: 20.7))
        path.addCurve(to: CGPoint(x: 6.74, y: 15.72), controlPoint1: CGPoint(x: 9.43, y: 19.26), controlPoint2: CGPoint(x: 6.43, y: 17.6))
        path.addCurve(to: CGPoint(x: 23.08, y: 6.38), controlPoint1: CGPoint(x: 7.05, y: 13.84), controlPoint2: CGPoint(x: 16.83, y: 8.33))
        path.addCurve(to: CGPoint(x: 36.11, y: 1.62), controlPoint1: CGPoint(x: 29.32, y: 4.43), controlPoint2: CGPoint(x: 32.37, y: 1.24))
        path.addCurve(to: CGPoint(x: 45.25, y: 0), controlPoint1: CGPoint(x: 39.84, y: 1.99), controlPoint2: CGPoint(x: 40, y: 0))
        path.addCurve(to: CGPoint(x: 54.43, y: 1.15), controlPoint1: CGPoint(x: 50.51, y: 0), controlPoint2: CGPoint(x: 48.46, y: 1.63))
        path.addCurve(to: CGPoint(x: 62.8, y: 2.86), controlPoint1: CGPoint(x: 60.39, y: 0.67), controlPoint2: CGPoint(x: 57.76, y: 2.86))
        path.addCurve(to: CGPoint(x: 74.54, y: 7.16), controlPoint1: CGPoint(x: 67.84, y: 2.86), controlPoint2: CGPoint(x: 74.1, y: 5.62))
        path.addCurve(to: CGPoint(x: 70.82, y: 9.45), controlPoint1: CGPoint(x: 74.85, y: 8.22), controlPoint2: CGPoint(x: 73.04, y: 9.3))
        path.addCurve(to: CGPoint(x: 81.95, y: 15.86), controlPoint1: CGPoint(x: 75.49, y: 10.29), controlPoint2: CGPoint(x: 81.95, y: 13.98))
        path.addCurve(to: CGPoint(x: 72.04, y: 16.44), controlPoint1: CGPoint(x: 81.95, y: 17.87), controlPoint2: CGPoint(x: 73.8, y: 16.44))
        path.addCurve(to: CGPoint(x: 86.7, y: 25.33), controlPoint1: CGPoint(x: 76.24, y: 17.34), controlPoint2: CGPoint(x: 87.31, y: 22.94))
        path.addCurve(to: CGPoint(x: 75.92, y: 24.04), controlPoint1: CGPoint(x: 86.26, y: 27.06), controlPoint2: CGPoint(x: 79.75, y: 25.98))
        path.addCurve(to: CGPoint(x: 84.75, y: 35.98), controlPoint1: CGPoint(x: 79.64, y: 27.64), controlPoint2: CGPoint(x: 85.67, y: 34.05))
        path.addCurve(to: CGPoint(x: 74.68, y: 32.52), controlPoint1: CGPoint(x: 83.72, y: 38.16), controlPoint2: CGPoint(x: 77.26, y: 36.11))
        path.addCurve(to: CGPoint(x: 75.65, y: 39.96), controlPoint1: CGPoint(x: 75.74, y: 35.26), controlPoint2: CGPoint(x: 77.06, y: 39.38))
        path.addCurve(to: CGPoint(x: 68.16, y: 33.37), controlPoint1: CGPoint(x: 73.52, y: 40.83), controlPoint2: CGPoint(x: 68.68, y: 36.3))
        path.addCurve(to: CGPoint(x: 40.44, y: 34.82), controlPoint1: CGPoint(x: 62.82, y: 33.37), controlPoint2: CGPoint(x: 42.94, y: 32.32))
        path.addCurve(to: CGPoint(x: 40.44, y: 41.63), controlPoint1: CGPoint(x: 38.86, y: 36.4), controlPoint2: CGPoint(x: 41.68, y: 40.34))
        path.addCurve(to: CGPoint(x: 38.52, y: 53.35), controlPoint1: CGPoint(x: 37.93, y: 44.22), controlPoint2: CGPoint(x: 37.52, y: 45.85))
        path.close()
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 87.01, y: 29.97))
        
        let dreadlocksView = UIView()
        dreadlocksView.layer.addSublayers(headLayer, pathLayer)
        return dreadlocksView
    }
    
}
