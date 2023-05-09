/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBaseballCapForBob(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 17.6, y: 5.31))
        path.addCurve(to: CGPoint(x: 0, y: 5.31), controlPoint1: CGPoint(x: 13.34, y: 9.09), controlPoint2: CGPoint(x: 3.68, y: 7.82))
        path.addLine(to: CGPoint(x: 0.82, y: 1.31))
        path.addLine(to: CGPoint(x: 8.37, y: 0))
        path.addCurve(to: CGPoint(x: 17.6, y: 5.31), controlPoint1: CGPoint(x: 11.63, y: 0), controlPoint2: CGPoint(x: 21.86, y: 1.52))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 156.96, y: 64.75))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 17.6, y: 5.31))
        path2.addCurve(to: CGPoint(x: 0, y: 5.31), controlPoint1: CGPoint(x: 13.34, y: 9.09), controlPoint2: CGPoint(x: 3.68, y: 7.82))
        path2.addLine(to: CGPoint(x: 0.82, y: 1.31))
        path2.addLine(to: CGPoint(x: 8.37, y: 0))
        path2.addCurve(to: CGPoint(x: 17.6, y: 5.31), controlPoint1: CGPoint(x: 11.63, y: 0), controlPoint2: CGPoint(x: 21.86, y: 1.52))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.heavy, CGPoint(x: 156.96, y: 64.75))
        
        let path41 = UIBezierPath()
        path41.move(to: CGPoint(x: 1.31, y: 40.31))
        path41.addCurve(to: CGPoint(x: 1.01, y: 67.93), controlPoint1: CGPoint(x: 3.57, y: 61.43), controlPoint2: CGPoint(x: -2.23, y: 61.16))
        path41.addCurve(to: CGPoint(x: 26.2, y: 69.92), controlPoint1: CGPoint(x: 4.24, y: 74.71), controlPoint2: CGPoint(x: 19.89, y: 75))
        path41.addCurve(to: CGPoint(x: 19.21, y: 0), controlPoint1: CGPoint(x: 32.52, y: 64.84), controlPoint2: CGPoint(x: 23.79, y: 26.93))
        path41.addCurve(to: CGPoint(x: 13.94, y: 27.5), controlPoint1: CGPoint(x: 11.06, y: 0), controlPoint2: CGPoint(x: 13.94, y: 27.5))
        path41.addCurve(to: CGPoint(x: 1.31, y: 40.31), controlPoint1: CGPoint(x: 13.94, y: 27.5), controlPoint2: CGPoint(x: -0.96, y: 19.2))
        path41.close()
        let path41Layer = createLayer(path41, hairColor, CGPoint(x: 136.63, y: 58.07))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 31.51, y: 18.97))
        path4.addLine(to: CGPoint(x: 27.01, y: 18.47))
        path4.addCurve(to: CGPoint(x: 20.01, y: 8.47), controlPoint1: CGPoint(x: 27.01, y: 18.47), controlPoint2: CGPoint(x: 25.51, y: 7.97))
        path4.addCurve(to: CGPoint(x: 19.01, y: 25.97), controlPoint1: CGPoint(x: 14.51, y: 8.97), controlPoint2: CGPoint(x: 13.01, y: 17.89))
        path4.addCurve(to: CGPoint(x: 27.17, y: 43.26), controlPoint1: CGPoint(x: 19.01, y: 25.97), controlPoint2: CGPoint(x: 26.9, y: 35.19))
        path4.addCurve(to: CGPoint(x: 21.27, y: 65.28), controlPoint1: CGPoint(x: 27.43, y: 51.34), controlPoint2: CGPoint(x: 28.17, y: 64.24))
        path4.addCurve(to: CGPoint(x: 2.94, y: 64.35), controlPoint1: CGPoint(x: 14.37, y: 66.33), controlPoint2: CGPoint(x: 7.75, y: 65.95))
        path4.addCurve(to: CGPoint(x: 2.94, y: 43.26), controlPoint1: CGPoint(x: -1.88, y: 62.75), controlPoint2: CGPoint(x: 0.04, y: 54.86))
        path4.addCurve(to: CGPoint(x: 10.47, y: 0), controlPoint1: CGPoint(x: 5.84, y: 31.66), controlPoint2: CGPoint(x: 10.47, y: 18.33))
        path4.addLine(to: CGPoint(x: 35.03, y: 1.98))
        path4.addCurve(to: CGPoint(x: 35.28, y: 2), controlPoint1: CGPoint(x: 35.1, y: 1.97), controlPoint2: CGPoint(x: 35.19, y: 1.98))
        path4.addLine(to: CGPoint(x: 35.03, y: 1.98))
        path4.addCurve(to: CGPoint(x: 33.92, y: 8.1), controlPoint1: CGPoint(x: 33.36, y: 2.02), controlPoint2: CGPoint(x: 36.46, y: 6.42))
        path4.addCurve(to: CGPoint(x: 31.51, y: 18.97), controlPoint1: CGPoint(x: 30.91, y: 10.09), controlPoint2: CGPoint(x: 30.51, y: 11.47))
        path4.close()
        let path4Layer = createLayer(path4, hairColor, CGPoint(x: 93.99, y: 64.28))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 16.79, y: 2.63))
        path5.addCurve(to: CGPoint(x: 57.1, y: 23.62), controlPoint1: CGPoint(x: 36.5, y: -4.48), controlPoint2: CGPoint(x: 53.06, y: 2.93))
        path5.addCurve(to: CGPoint(x: 21.62, y: 31.62), controlPoint1: CGPoint(x: 36.9, y: 22.51), controlPoint2: CGPoint(x: 21.86, y: 27.52))
        path5.addCurve(to: CGPoint(x: 2.26, y: 38.06), controlPoint1: CGPoint(x: 21.37, y: 35.72), controlPoint2: CGPoint(x: 10.48, y: 31.62))
        path5.addCurve(to: CGPoint(x: 16.79, y: 2.63), controlPoint1: CGPoint(x: -1.44, y: 40.97), controlPoint2: CGPoint(x: -2.93, y: 9.74))
        path5.close()
        let path5Layer = createLayer(path5, color, CGPoint(x: 102.24, y: 37.36))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 0, y: 12.68))
        path6.addCurve(to: CGPoint(x: 38.46, y: 1.96), controlPoint1: CGPoint(x: 13.22, y: -1.82), controlPoint2: CGPoint(x: 28.1, y: -1.45))
        path6.addCurve(to: CGPoint(x: 54.83, y: 10.13), controlPoint1: CGPoint(x: 38.46, y: 1.96), controlPoint2: CGPoint(x: 55.44, y: 6.95))
        path6.addCurve(to: CGPoint(x: 29.45, y: 15.19), controlPoint1: CGPoint(x: 48.62, y: 6.19), controlPoint2: CGPoint(x: 38.25, y: 8.29))
        path6.addCurve(to: CGPoint(x: 0, y: 12.68), controlPoint1: CGPoint(x: 20.65, y: 22.09), controlPoint2: CGPoint(x: 12.23, y: 18.33))
        path6.close()
        let path6Layer = createLayer(path6, color, CGPoint(x: 120.74, y: 58.32))
        
        let path7 = UIBezierPath()
        path7.move(to: CGPoint(x: 0, y: 12.68))
        path7.addCurve(to: CGPoint(x: 38.46, y: 1.96), controlPoint1: CGPoint(x: 13.22, y: -1.82), controlPoint2: CGPoint(x: 28.1, y: -1.45))
        path7.addCurve(to: CGPoint(x: 54.83, y: 10.13), controlPoint1: CGPoint(x: 38.46, y: 1.96), controlPoint2: CGPoint(x: 55.44, y: 6.95))
        path7.addCurve(to: CGPoint(x: 29.45, y: 15.19), controlPoint1: CGPoint(x: 48.62, y: 6.19), controlPoint2: CGPoint(x: 38.25, y: 8.29))
        path7.addCurve(to: CGPoint(x: 0, y: 12.68), controlPoint1: CGPoint(x: 20.65, y: 22.09), controlPoint2: CGPoint(x: 12.23, y: 18.33))
        path7.close()
        let path7Layer = createLayer(path7, Color.shadow.bold, CGPoint(x: 120.74, y: 58.32))
        
        let bc = UIView()
        bc.layer.addSublayers(pathLayer, path2Layer, path41Layer, headLayer, path4Layer, path5Layer, path6Layer, path7Layer)
        return bc
    }
    
}
