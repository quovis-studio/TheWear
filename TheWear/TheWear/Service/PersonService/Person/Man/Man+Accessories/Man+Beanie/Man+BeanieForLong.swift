/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBeanieForLong(_ color: UIColor, _ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 3.55, y: 37.32))
            path.addCurve(to: CGPoint(x: 0.56, y: 78.49), controlPoint1: CGPoint(x: 5.81, y: 58.44), controlPoint2: CGPoint(x: -2.11, y: 70.23))
            path.addCurve(to: CGPoint(x: 27.19, y: 78.49), controlPoint1: CGPoint(x: 3.23, y: 86.74), controlPoint2: CGPoint(x: 18.23, y: 85.8))
            path.addCurve(to: CGPoint(x: 22.13, y: 3.16), controlPoint1: CGPoint(x: 36.16, y: 71.17), controlPoint2: CGPoint(x: 27.37, y: 16.8))
            path.addCurve(to: CGPoint(x: 16.18, y: 24.51), controlPoint1: CGPoint(x: 16.9, y: -10.49), controlPoint2: CGPoint(x: 16.18, y: 24.51))
            path.addCurve(to: CGPoint(x: 3.55, y: 37.32), controlPoint1: CGPoint(x: 16.18, y: 24.51), controlPoint2: CGPoint(x: 1.28, y: 16.21))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 134.5, y: 60.18))
        
        let head = UIBezierPath()
        if hair {
            head.move(to: CGPoint(x: 3.37, y: 12.26))
            head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
            head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
            head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
            head.close()
        }
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let beardLayer = drawBeardForBeanie()
        
        let path3 = UIBezierPath()
        if hair {
            path3.move(to: CGPoint(x: 22.38, y: 16.99))
            path3.addLine(to: CGPoint(x: 26.51, y: 15.33))
            path3.addCurve(to: CGPoint(x: 28.74, y: 12.29), controlPoint1: CGPoint(x: 25.51, y: 7.83), controlPoint2: CGPoint(x: 25.73, y: 14.28))
            path3.addCurve(to: CGPoint(x: 30.1, y: 6.18), controlPoint1: CGPoint(x: 31.39, y: 10.54), controlPoint2: CGPoint(x: 27.89, y: 5.81))
            path3.addLine(to: CGPoint(x: 11.09, y: 0))
            path3.addCurve(to: CGPoint(x: 8.82, y: 44.49), controlPoint1: CGPoint(x: 3.01, y: 13.59), controlPoint2: CGPoint(x: 11.22, y: 26.12))
            path3.addCurve(to: CGPoint(x: 1.48, y: 81.08), controlPoint1: CGPoint(x: 6.41, y: 62.86), controlPoint2: CGPoint(x: -3.75, y: 77.66))
            path3.addCurve(to: CGPoint(x: 21.49, y: 83.39), controlPoint1: CGPoint(x: 6.7, y: 84.5), controlPoint2: CGPoint(x: 17.35, y: 84.4))
            path3.addCurve(to: CGPoint(x: 25.21, y: 51.53), controlPoint1: CGPoint(x: 30.67, y: 81.14), controlPoint2: CGPoint(x: 26.51, y: 62.99))
            path3.addCurve(to: CGPoint(x: 20.58, y: 22.06), controlPoint1: CGPoint(x: 23.9, y: 40.06), controlPoint2: CGPoint(x: 20.58, y: 22.06))
            path3.addCurve(to: CGPoint(x: 14.83, y: 12.66), controlPoint1: CGPoint(x: 14.58, y: 13.98), controlPoint2: CGPoint(x: 9.33, y: 13.16))
            path3.addCurve(to: CGPoint(x: 22.38, y: 16.99), controlPoint1: CGPoint(x: 20.33, y: 12.16), controlPoint2: CGPoint(x: 22.38, y: 16.99))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 99.18, y: 60.1))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 10.26, y: 4.51))
        path4.addCurve(to: CGPoint(x: 62.09, y: 26.34), controlPoint1: CGPoint(x: 40.28, y: -9.06), controlPoint2: CGPoint(x: 60.73, y: 10.87))
        path4.addCurve(to: CGPoint(x: 38.08, y: 34.36), controlPoint1: CGPoint(x: 62.25, y: 28.07), controlPoint2: CGPoint(x: 53.79, y: 25.8))
        path4.addCurve(to: CGPoint(x: 7.17, y: 51.18), controlPoint1: CGPoint(x: 22.37, y: 42.91), controlPoint2: CGPoint(x: 8.14, y: 52.27))
        path4.addCurve(to: CGPoint(x: 10.26, y: 4.51), controlPoint1: CGPoint(x: -3.3, y: 39.44), controlPoint2: CGPoint(x: -2.33, y: 10.21))
        path4.close()
        let path4Layer = createLayer(path4, color, CGPoint(x: 99.88, y: 40.93))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 60.84, y: 11.76))
        path5.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 63.2, y: 9.88), controlPoint2: CGPoint(x: 59.61, y: 0))
        path5.addCurve(to: CGPoint(x: 29.15, y: 8.24), controlPoint1: CGPoint(x: 54.75, y: 0), controlPoint2: CGPoint(x: 43, y: 1.45))
        path5.addCurve(to: CGPoint(x: 0.41, y: 27.1), controlPoint1: CGPoint(x: 15.3, y: 15.04), controlPoint2: CGPoint(x: 2.26, y: 25.16))
        path5.addCurve(to: CGPoint(x: 7.32, y: 37.9), controlPoint1: CGPoint(x: -1.44, y: 29.04), controlPoint2: CGPoint(x: 3.37, y: 37.9))
        path5.addCurve(to: CGPoint(x: 36.24, y: 19.73), controlPoint1: CGPoint(x: 11.26, y: 37.9), controlPoint2: CGPoint(x: 19.82, y: 27.14))
        path5.addCurve(to: CGPoint(x: 60.84, y: 11.76), controlPoint1: CGPoint(x: 52.67, y: 12.33), controlPoint2: CGPoint(x: 58.49, y: 13.65))
        path5.close()
        let path5Layer = createLayer(path5, color, CGPoint(x: 101.28, y: 56.21))
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 60.84, y: 11.76))
        path6.addCurve(to: CGPoint(x: 57.18, y: 0), controlPoint1: CGPoint(x: 63.2, y: 9.88), controlPoint2: CGPoint(x: 59.61, y: 0))
        path6.addCurve(to: CGPoint(x: 29.15, y: 8.24), controlPoint1: CGPoint(x: 54.75, y: 0), controlPoint2: CGPoint(x: 43, y: 1.45))
        path6.addCurve(to: CGPoint(x: 0.41, y: 27.1), controlPoint1: CGPoint(x: 15.3, y: 15.04), controlPoint2: CGPoint(x: 2.26, y: 25.16))
        path6.addCurve(to: CGPoint(x: 7.32, y: 37.9), controlPoint1: CGPoint(x: -1.44, y: 29.04), controlPoint2: CGPoint(x: 3.37, y: 37.9))
        path6.addCurve(to: CGPoint(x: 36.24, y: 19.73), controlPoint1: CGPoint(x: 11.26, y: 37.9), controlPoint2: CGPoint(x: 19.82, y: 27.14))
        path6.addCurve(to: CGPoint(x: 60.84, y: 11.76), controlPoint1: CGPoint(x: 52.67, y: 12.33), controlPoint2: CGPoint(x: 58.49, y: 13.65))
        path6.close()
        let path6Layer = createLayer(path6,Color.shadow.bold, CGPoint(x: 101.28, y: 56.21))
        
        let beanie = UIView()
        beanie.layer.addSublayers(pathLayer, headLayer, beardLayer, path3Layer, path4Layer, path5Layer, path6Layer)
        return beanie
    }
    
}
