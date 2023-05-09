/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawLoafers(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 53.4, y: 10.1))
        path.addCurve(to: CGPoint(x: 59.63, y: 21.25), controlPoint1: CGPoint(x: 61.45, y: 10.64), controlPoint2: CGPoint(x: 64.48, y: 18.69))
        path.addCurve(to: CGPoint(x: 15.55, y: 22.81), controlPoint1: CGPoint(x: 54.78, y: 23.8), controlPoint2: CGPoint(x: 41.31, y: 27.3))
        path.addLine(to: CGPoint(x: 15.55, y: 24.93))
        path.addLine(to: CGPoint(x: 0.73, y: 24.93))
        path.addCurve(to: CGPoint(x: 2.06, y: 0.05), controlPoint1: CGPoint(x: -0.27, y: 17.84), controlPoint2: CGPoint(x: -0.59, y: 4.15))
        path.addCurve(to: CGPoint(x: 19.87, y: 1.08), controlPoint1: CGPoint(x: 9.04, y: 7.32), controlPoint2: CGPoint(x: 16.1, y: 4.86))
        path.addCurve(to: CGPoint(x: 30.47, y: 5.16), controlPoint1: CGPoint(x: 23.11, y: -2.16), controlPoint2: CGPoint(x: 25.72, y: 2.66))
        path.addCurve(to: CGPoint(x: 53.4, y: 10.1), controlPoint1: CGPoint(x: 35.22, y: 7.66), controlPoint2: CGPoint(x: 45.35, y: 9.56))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 86.82, y: 570.7))
        pathLayer.lineJoin = .round
        pathLayer.lineCap = .round
        pathLayer.lineWidth = 1
        pathLayer.strokeColor = color.cgColor
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 52.59, y: 10.15))
        path2.addCurve(to: CGPoint(x: 58.83, y: 21.3), controlPoint1: CGPoint(x: 60.64, y: 10.69), controlPoint2: CGPoint(x: 63.68, y: 18.75))
        path2.addCurve(to: CGPoint(x: 15.75, y: 22.91), controlPoint1: CGPoint(x: 53.98, y: 23.85), controlPoint2: CGPoint(x: 39.12, y: 27.14))
        path2.addLine(to: CGPoint(x: 15.75, y: 24.99))
        path2.addLine(to: CGPoint(x: 0.93, y: 24.99))
        path2.addCurve(to: CGPoint(x: 1.51, y: 0), controlPoint1: CGPoint(x: -0.07, y: 17.9), controlPoint2: CGPoint(x: -0.74, y: 4.02))
        path2.addCurve(to: CGPoint(x: 20.07, y: 1.14), controlPoint1: CGPoint(x: 7.34, y: 6.81), controlPoint2: CGPoint(x: 15.75, y: 5.45))
        path2.addCurve(to: CGPoint(x: 30.66, y: 5.22), controlPoint1: CGPoint(x: 23.3, y: -2.1), controlPoint2: CGPoint(x: 25.91, y: 2.72))
        path2.addCurve(to: CGPoint(x: 52.59, y: 10.15), controlPoint1: CGPoint(x: 35.41, y: 7.72), controlPoint2: CGPoint(x: 44.55, y: 9.61))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 172.45, y: 570.59))
        path2Layer.lineJoin = .round
        path2Layer.lineCap = .round
        path2Layer.lineWidth = 1
        path2Layer.strokeColor = color.cgColor
        
        let lowView = UIView()
        lowView.layer.addSublayers(pathLayer, path2Layer)
        return lowView
    }
    
}
