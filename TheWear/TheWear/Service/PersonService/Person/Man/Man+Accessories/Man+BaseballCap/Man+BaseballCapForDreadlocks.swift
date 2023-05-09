/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBaseballCapForDreadlocks(_ color: UIColor) -> UIView {
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
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 26.89, y: 18.54))
        path4.addLine(to: CGPoint(x: 22.39, y: 18.04))
        path4.addCurve(to: CGPoint(x: 15.39, y: 8.04), controlPoint1: CGPoint(x: 22.39, y: 18.04), controlPoint2: CGPoint(x: 20.89, y: 7.54))
        path4.addCurve(to: CGPoint(x: 13.86, y: 26.29), controlPoint1: CGPoint(x: 9.89, y: 8.54), controlPoint2: CGPoint(x: 8.36, y: 15.29))
        path4.addCurve(to: CGPoint(x: 12.7, y: 33.04), controlPoint1: CGPoint(x: 13.86, y: 26.29), controlPoint2: CGPoint(x: 18.8, y: 36.31))
        path4.addCurve(to: CGPoint(x: 8.67, y: 27.63), controlPoint1: CGPoint(x: 10.11, y: 31.65), controlPoint2: CGPoint(x: 9.04, y: 29.56))
        path4.addCurve(to: CGPoint(x: 5.77, y: 31.31), controlPoint1: CGPoint(x: 8.78, y: 30.46), controlPoint2: CGPoint(x: 8.68, y: 32.96))
        path4.addCurve(to: CGPoint(x: 4.72, y: 20.68), controlPoint1: CGPoint(x: 2.11, y: 29.23), controlPoint2: CGPoint(x: 3.68, y: 24.12))
        path4.addCurve(to: CGPoint(x: 0.38, y: 22.67), controlPoint1: CGPoint(x: 3.77, y: 23.18), controlPoint2: CGPoint(x: 2.04, y: 24.51))
        path4.addCurve(to: CGPoint(x: 4.74, y: 9.41), controlPoint1: CGPoint(x: -1.8, y: 20.25), controlPoint2: CGPoint(x: 6.25, y: 13.09))
        path4.addLine(to: CGPoint(x: 28.82, y: 0))
        path4.addCurve(to: CGPoint(x: 28.82, y: 6.81), controlPoint1: CGPoint(x: 27.23, y: 1.58), controlPoint2: CGPoint(x: 30.06, y: 5.53))
        path4.addCurve(to: CGPoint(x: 26.89, y: 18.54), controlPoint1: CGPoint(x: 26.31, y: 9.41), controlPoint2: CGPoint(x: 25.89, y: 11.04))
        path4.close()
        let path4Layer = createLayer(path4, hairColor, CGPoint(x: 98.63, y: 64.79))
        
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
        bc.layer.addSublayers(pathLayer, path2Layer, headLayer, path4Layer, path5Layer, path6Layer, path7Layer)
        return bc
    }
    
}
