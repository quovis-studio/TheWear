/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawGym(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.39, y: 4.42))
        path.addCurve(to: CGPoint(x: 2.69, y: 0.11), controlPoint1: CGPoint(x: 0.39, y: 3.79), controlPoint2: CGPoint(x: -1.2, y: -0.03))
        path.addCurve(to: CGPoint(x: 11.53, y: 4.42), controlPoint1: CGPoint(x: 4.44, y: 0.17), controlPoint2: CGPoint(x: 7.04, y: 4.42))
        path.addCurve(to: CGPoint(x: 19.9, y: 0.07), controlPoint1: CGPoint(x: 15.68, y: 4.42), controlPoint2: CGPoint(x: 16.2, y: 0.41))
        path.addCurve(to: CGPoint(x: 56.46, y: 10.01), controlPoint1: CGPoint(x: 28.63, y: -0.75), controlPoint2: CGPoint(x: 29.85, y: 6.22))
        path.addCurve(to: CGPoint(x: 56.46, y: 23.43), controlPoint1: CGPoint(x: 62.01, y: 10.43), controlPoint2: CGPoint(x: 61.49, y: 23.43))
        path.addCurve(to: CGPoint(x: 0.39, y: 23.43), controlPoint1: CGPoint(x: 51.42, y: 23.43), controlPoint2: CGPoint(x: 1.28, y: 24.17))
        path.addCurve(to: CGPoint(x: 0.39, y: 4.42), controlPoint1: CGPoint(x: -0.49, y: 22.68), controlPoint2: CGPoint(x: 0.39, y: 7.33))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 87.17, y: 570.81))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.49, y: 4.28))
        path2.addCurve(to: CGPoint(x: 2.44, y: 0.06), controlPoint1: CGPoint(x: 0.49, y: 3.64), controlPoint2: CGPoint(x: -1.46, y: -0.07))
        path2.addCurve(to: CGPoint(x: 11.43, y: 4.28), controlPoint1: CGPoint(x: 4.18, y: 0.12), controlPoint2: CGPoint(x: 6.93, y: 4.28))
        path2.addCurve(to: CGPoint(x: 19.53, y: 0.06), controlPoint1: CGPoint(x: 15.67, y: 4.28), controlPoint2: CGPoint(x: 15.83, y: 0.41))
        path2.addCurve(to: CGPoint(x: 55.44, y: 9.81), controlPoint1: CGPoint(x: 28.27, y: -0.76), controlPoint2: CGPoint(x: 28.83, y: 6.73))
        path2.addCurve(to: CGPoint(x: 56.09, y: 23.08), controlPoint1: CGPoint(x: 60.99, y: 10.23), controlPoint2: CGPoint(x: 61.12, y: 23.08))
        path2.addCurve(to: CGPoint(x: 0.49, y: 22.67), controlPoint1: CGPoint(x: 51.05, y: 23.08), controlPoint2: CGPoint(x: 1.37, y: 23.41))
        path2.addCurve(to: CGPoint(x: 0.49, y: 4.28), controlPoint1: CGPoint(x: -0.4, y: 21.92), controlPoint2: CGPoint(x: 0.49, y: 7.18))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 172.99, y: 571.32))
        
        let gymView = UIView()
        gymView.layer.addSublayers(pathLayer, path2Layer)
        return gymView
    }
    
}
