/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawWarmScarfForShort(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20.8, y: 1.63))
        path.addCurve(to: CGPoint(x: 29.47, y: 2.84), controlPoint1: CGPoint(x: 24.4, y: -2.29), controlPoint2: CGPoint(x: 26.94, y: 1.97))
        path.addCurve(to: CGPoint(x: 36.75, y: 4.66), controlPoint1: CGPoint(x: 31.99, y: 3.7), controlPoint2: CGPoint(x: 35.18, y: 2.45))
        path.addCurve(to: CGPoint(x: 34.2, y: 27.82), controlPoint1: CGPoint(x: 38.32, y: 6.87), controlPoint2: CGPoint(x: 35.87, y: 15.94))
        path.addCurve(to: CGPoint(x: 32.97, y: 56.79), controlPoint1: CGPoint(x: 32.53, y: 39.69), controlPoint2: CGPoint(x: 37.74, y: 53.09))
        path.addCurve(to: CGPoint(x: 16.24, y: 57.14), controlPoint1: CGPoint(x: 28.19, y: 60.49), controlPoint2: CGPoint(x: 22.74, y: 56.79))
        path.addCurve(to: CGPoint(x: 1.11, y: 55.03), controlPoint1: CGPoint(x: 9.74, y: 57.48), controlPoint2: CGPoint(x: 4.23, y: 57.56))
        path.addCurve(to: CGPoint(x: 7.36, y: 22.23), controlPoint1: CGPoint(x: -2.4, y: 52.18), controlPoint2: CGPoint(x: 3.17, y: 34.06))
        path.addCurve(to: CGPoint(x: 20.8, y: 1.63), controlPoint1: CGPoint(x: 11.55, y: 10.39), controlPoint2: CGPoint(x: 17.21, y: 5.55))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 96.36, y: 123.39))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 20.8, y: 1.63))
        path2.addCurve(to: CGPoint(x: 29.47, y: 2.84), controlPoint1: CGPoint(x: 24.4, y: -2.29), controlPoint2: CGPoint(x: 26.94, y: 1.97))
        path2.addCurve(to: CGPoint(x: 36.75, y: 4.66), controlPoint1: CGPoint(x: 32, y: 3.7), controlPoint2: CGPoint(x: 35.18, y: 2.45))
        path2.addCurve(to: CGPoint(x: 34.2, y: 27.82), controlPoint1: CGPoint(x: 38.32, y: 6.87), controlPoint2: CGPoint(x: 35.87, y: 15.94))
        path2.addCurve(to: CGPoint(x: 32.97, y: 56.79), controlPoint1: CGPoint(x: 32.53, y: 39.69), controlPoint2: CGPoint(x: 37.74, y: 53.09))
        path2.addCurve(to: CGPoint(x: 16.24, y: 57.14), controlPoint1: CGPoint(x: 28.19, y: 60.49), controlPoint2: CGPoint(x: 22.74, y: 56.79))
        path2.addCurve(to: CGPoint(x: 1.11, y: 55.03), controlPoint1: CGPoint(x: 9.74, y: 57.48), controlPoint2: CGPoint(x: 4.23, y: 57.56))
        path2.addCurve(to: CGPoint(x: 7.36, y: 22.23), controlPoint1: CGPoint(x: -2.4, y: 52.18), controlPoint2: CGPoint(x: 3.17, y: 34.06))
        path2.addCurve(to: CGPoint(x: 20.8, y: 1.63), controlPoint1: CGPoint(x: 11.55, y: 10.39), controlPoint2: CGPoint(x: 17.21, y: 5.55))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 96.36, y: 123.39))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 15.21, y: 1.06))
        path3.addCurve(to: CGPoint(x: 6.95, y: 3.94), controlPoint1: CGPoint(x: 10.92, y: -2.08), controlPoint2: CGPoint(x: 9.26, y: 2.6))
        path3.addCurve(to: CGPoint(x: 0.17, y: 7.14), controlPoint1: CGPoint(x: 4.64, y: 5.28), controlPoint2: CGPoint(x: 1.27, y: 4.67))
        path3.addCurve(to: CGPoint(x: 7.7, y: 28.71), controlPoint1: CGPoint(x: -0.94, y: 9.62), controlPoint2: CGPoint(x: 3.74, y: 17.38))
        path3.addCurve(to: CGPoint(x: 14.81, y: 63.47), controlPoint1: CGPoint(x: 11.65, y: 40.03), controlPoint2: CGPoint(x: 8.95, y: 60.32))
        path3.addCurve(to: CGPoint(x: 32.73, y: 62.95), controlPoint1: CGPoint(x: 20.67, y: 66.62), controlPoint2: CGPoint(x: 27.17, y: 63.55))
        path3.addCurve(to: CGPoint(x: 47.28, y: 59.13), controlPoint1: CGPoint(x: 39.37, y: 62.23), controlPoint2: CGPoint(x: 44.72, y: 62.21))
        path3.addCurve(to: CGPoint(x: 32.42, y: 18.65), controlPoint1: CGPoint(x: 50.17, y: 55.64), controlPoint2: CGPoint(x: 38.85, y: 29.43))
        path3.addCurve(to: CGPoint(x: 15.21, y: 1.06), controlPoint1: CGPoint(x: 26, y: 7.86), controlPoint2: CGPoint(x: 19.51, y: 4.2))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 125.75, y: 124.52))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 15.21, y: 1.07))
        path4.addCurve(to: CGPoint(x: 6.95, y: 3.94), controlPoint1: CGPoint(x: 10.92, y: -2.08), controlPoint2: CGPoint(x: 9.26, y: 2.6))
        path4.addCurve(to: CGPoint(x: 0.17, y: 7.15), controlPoint1: CGPoint(x: 4.64, y: 5.28), controlPoint2: CGPoint(x: 1.27, y: 4.67))
        path4.addCurve(to: CGPoint(x: 7.7, y: 28.71), controlPoint1: CGPoint(x: -0.94, y: 9.62), controlPoint2: CGPoint(x: 3.74, y: 17.38))
        path4.addCurve(to: CGPoint(x: 14.81, y: 63.47), controlPoint1: CGPoint(x: 11.65, y: 40.03), controlPoint2: CGPoint(x: 8.95, y: 60.32))
        path4.addCurve(to: CGPoint(x: 32.73, y: 62.95), controlPoint1: CGPoint(x: 20.67, y: 66.62), controlPoint2: CGPoint(x: 27.17, y: 63.55))
        path4.addCurve(to: CGPoint(x: 47.28, y: 59.13), controlPoint1: CGPoint(x: 39.37, y: 62.23), controlPoint2: CGPoint(x: 44.72, y: 62.21))
        path4.addCurve(to: CGPoint(x: 32.42, y: 18.65), controlPoint1: CGPoint(x: 50.17, y: 55.64), controlPoint2: CGPoint(x: 38.85, y: 29.44))
        path4.addCurve(to: CGPoint(x: 15.21, y: 1.07), controlPoint1: CGPoint(x: 26, y: 7.86), controlPoint2: CGPoint(x: 19.51, y: 4.21))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.light, CGPoint(x: 125.75, y: 124.52))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 6.98, y: 3.31))
        path5.addCurve(to: CGPoint(x: 0, y: 16.7), controlPoint1: CGPoint(x: 2.67, y: 6.05), controlPoint2: CGPoint(x: 1.36, y: 12.29))
        path5.addCurve(to: CGPoint(x: 49.49, y: 26.69), controlPoint1: CGPoint(x: 13.65, y: 21.19), controlPoint2: CGPoint(x: 41.26, y: 32.74))
        path5.addCurve(to: CGPoint(x: 56.56, y: 11.54), controlPoint1: CGPoint(x: 59.78, y: 19.12), controlPoint2: CGPoint(x: 61.17, y: 17.06))
        path5.addCurve(to: CGPoint(x: 22.91, y: 0), controlPoint1: CGPoint(x: 51.94, y: 6.02), controlPoint2: CGPoint(x: 29.29, y: 0))
        path5.addCurve(to: CGPoint(x: 6.98, y: 3.31), controlPoint1: CGPoint(x: 16.29, y: 0), controlPoint2: CGPoint(x: 9.72, y: 1.57))
        path5.close()
        let path5Layer = createLayer(path5, color, CGPoint(x: 100.72, y: 94.29))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 6.98, y: 3.31))
        path6.addCurve(to: CGPoint(x: 0, y: 16.7), controlPoint1: CGPoint(x: 2.67, y: 6.05), controlPoint2: CGPoint(x: 1.36, y: 12.29))
        path6.addCurve(to: CGPoint(x: 49.49, y: 26.69), controlPoint1: CGPoint(x: 13.65, y: 21.19), controlPoint2: CGPoint(x: 41.26, y: 32.74))
        path6.addCurve(to: CGPoint(x: 56.56, y: 11.54), controlPoint1: CGPoint(x: 59.78, y: 19.12), controlPoint2: CGPoint(x: 61.17, y: 17.06))
        path6.addCurve(to: CGPoint(x: 22.91, y: 0), controlPoint1: CGPoint(x: 51.94, y: 6.02), controlPoint2: CGPoint(x: 29.29, y: 0))
        path6.addCurve(to: CGPoint(x: 6.98, y: 3.31), controlPoint1: CGPoint(x: 16.29, y: 0), controlPoint2: CGPoint(x: 9.72, y: 1.57))
        path6.close()
        let path6Layer = createLayer(path6, Color.shadow.bold, CGPoint(x: 100.72, y: 94.29))
        
        let path7 = UIBezierPath()
        path7.move(to: CGPoint(x: 2.41, y: 0))
        path7.addLine(to: CGPoint(x: 19.57, y: 12.54))
        path7.addLine(to: CGPoint(x: 22.07, y: 36.72))
        path7.addLine(to: CGPoint(x: 0, y: 36.72))
        path7.addLine(to: CGPoint(x: 2.41, y: 0))
        path7.close()
        let path7Layer = createLayer(path7, skinColor, CGPoint(x: 117.02, y: 96.36))
        
        let combinedShape = UIBezierPath()
        combinedShape.move(to: CGPoint(x: 0.62, y: 0))
        combinedShape.addLine(to: CGPoint(x: 17.78, y: 12.54))
        combinedShape.addLine(to: CGPoint(x: 18.91, y: 23.43))
        combinedShape.addCurve(to: CGPoint(x: 13.64, y: 20.29), controlPoint1: CGPoint(x: 17.25, y: 22.55), controlPoint2: CGPoint(x: 15.49, y: 21.5))
        combinedShape.addCurve(to: CGPoint(x: 0, y: 9.39), controlPoint1: CGPoint(x: 8.11, y: 16.65), controlPoint2: CGPoint(x: 3.6, y: 13.02))
        combinedShape.addLine(to: CGPoint(x: 0.62, y: 0))
        combinedShape.close()
        let combinedShapeLayer = createLayer(combinedShape, Color.shadow.light, CGPoint(x: 118.81, y: 96.36))
        
        let path8 = UIBezierPath()
        path8.move(to: CGPoint(x: 24.6, y: 16.51))
        path8.addCurve(to: CGPoint(x: 55.42, y: 12.86), controlPoint1: CGPoint(x: 35.98, y: 22.41), controlPoint2: CGPoint(x: 45.24, y: 22.45))
        path8.addCurve(to: CGPoint(x: 60.88, y: 40.04), controlPoint1: CGPoint(x: 65.59, y: 3.28), controlPoint2: CGPoint(x: 70.3, y: 33.44))
        path8.addCurve(to: CGPoint(x: 31.93, y: 44.4), controlPoint1: CGPoint(x: 51.47, y: 46.65), controlPoint2: CGPoint(x: 43.65, y: 46.3))
        path8.addCurve(to: CGPoint(x: 3.05, y: 33.27), controlPoint1: CGPoint(x: 20.2, y: 42.49), controlPoint2: CGPoint(x: 8.51, y: 38.36))
        path8.addCurve(to: CGPoint(x: 9.44, y: 1.87), controlPoint1: CGPoint(x: -2.4, y: 28.18), controlPoint2: CGPoint(x: -0.71, y: 9.16))
        path8.addCurve(to: CGPoint(x: 24.6, y: 16.51), controlPoint1: CGPoint(x: 19.59, y: -5.43), controlPoint2: CGPoint(x: 13.22, y: 10.61))
        path8.close()
        let path8Layer = createLayer(path8, color, CGPoint(x: 97.17, y: 96.46))
        
        let path9 = UIBezierPath()
        path9.move(to: CGPoint(x: 24.6, y: 16.51))
        path9.addCurve(to: CGPoint(x: 55.42, y: 12.86), controlPoint1: CGPoint(x: 35.98, y: 22.41), controlPoint2: CGPoint(x: 45.24, y: 22.45))
        path9.addCurve(to: CGPoint(x: 60.88, y: 40.04), controlPoint1: CGPoint(x: 65.59, y: 3.28), controlPoint2: CGPoint(x: 70.3, y: 33.44))
        path9.addCurve(to: CGPoint(x: 31.93, y: 44.4), controlPoint1: CGPoint(x: 51.47, y: 46.65), controlPoint2: CGPoint(x: 43.65, y: 46.3))
        path9.addCurve(to: CGPoint(x: 3.05, y: 33.27), controlPoint1: CGPoint(x: 20.2, y: 42.49), controlPoint2: CGPoint(x: 8.51, y: 38.36))
        path9.addCurve(to: CGPoint(x: 9.44, y: 1.87), controlPoint1: CGPoint(x: -2.4, y: 28.18), controlPoint2: CGPoint(x: -0.71, y: 9.16))
        path9.addCurve(to: CGPoint(x: 24.6, y: 16.51), controlPoint1: CGPoint(x: 19.59, y: -5.43), controlPoint2: CGPoint(x: 13.22, y: 10.61))
        path9.close()
        let path9Layer = createLayer(path9, Color.shadow.ultralight, CGPoint(x: 97.17, y: 96.46))
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let scarf = UIView()
        scarf.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer, path5Layer, path6Layer, path7Layer, combinedShapeLayer, path8Layer, path9Layer, headLayer)
        return scarf
    }
    
}
