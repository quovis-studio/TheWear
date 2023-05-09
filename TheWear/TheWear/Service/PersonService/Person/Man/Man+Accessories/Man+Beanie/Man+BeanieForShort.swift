/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBeanieForShort(_ color: UIColor) -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let beardLayer = drawBeardForBeanie()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 9.38, y: 5.22))
        path.addCurve(to: CGPoint(x: 59.09, y: 25.55), controlPoint1: CGPoint(x: 37.7, y: -9.53), controlPoint2: CGPoint(x: 57.73, y: 10.08))
        path.addCurve(to: CGPoint(x: 35.07, y: 33.57), controlPoint1: CGPoint(x: 59.24, y: 27.28), controlPoint2: CGPoint(x: 50.78, y: 25.02))
        path.addCurve(to: CGPoint(x: 8.6, y: 51.57), controlPoint1: CGPoint(x: 19.37, y: 42.12), controlPoint2: CGPoint(x: 9.57, y: 52.67))
        path.addCurve(to: CGPoint(x: 9.38, y: 5.22), controlPoint1: CGPoint(x: -1.87, y: 39.83), controlPoint2: CGPoint(x: -4.1, y: 12.25))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 102.89, y: 41.72))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 56.99, y: 11.76))
        path2.addCurve(to: CGPoint(x: 53.33, y: 0), controlPoint1: CGPoint(x: 59.35, y: 9.88), controlPoint2: CGPoint(x: 55.76, y: 0))
        path2.addCurve(to: CGPoint(x: 27.44, y: 9.01), controlPoint1: CGPoint(x: 50.9, y: 0), controlPoint2: CGPoint(x: 40.44, y: 1.95))
        path2.addCurve(to: CGPoint(x: 0.41, y: 28.7), controlPoint1: CGPoint(x: 14.44, y: 16.08), controlPoint2: CGPoint(x: 2.26, y: 26.76))
        path2.addCurve(to: CGPoint(x: 7.32, y: 39.49), controlPoint1: CGPoint(x: -1.44, y: 30.64), controlPoint2: CGPoint(x: 3.37, y: 39.49))
        path2.addCurve(to: CGPoint(x: 34.3, y: 21.26), controlPoint1: CGPoint(x: 11.26, y: 39.49), controlPoint2: CGPoint(x: 17.02, y: 30.7))
        path2.addCurve(to: CGPoint(x: 56.99, y: 11.76), controlPoint1: CGPoint(x: 51.59, y: 11.83), controlPoint2: CGPoint(x: 54.64, y: 13.65))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 105.13, y: 56.21))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 56.99, y: 11.76))
        path3.addCurve(to: CGPoint(x: 53.33, y: 0), controlPoint1: CGPoint(x: 59.35, y: 9.88), controlPoint2: CGPoint(x: 55.76, y: 0))
        path3.addCurve(to: CGPoint(x: 27.44, y: 9.01), controlPoint1: CGPoint(x: 50.9, y: 0), controlPoint2: CGPoint(x: 40.44, y: 1.95))
        path3.addCurve(to: CGPoint(x: 0.41, y: 28.7), controlPoint1: CGPoint(x: 14.44, y: 16.08), controlPoint2: CGPoint(x: 2.26, y: 26.76))
        path3.addCurve(to: CGPoint(x: 7.32, y: 39.49), controlPoint1: CGPoint(x: -1.44, y: 30.64), controlPoint2: CGPoint(x: 3.37, y: 39.49))
        path3.addCurve(to: CGPoint(x: 34.3, y: 21.26), controlPoint1: CGPoint(x: 11.26, y: 39.49), controlPoint2: CGPoint(x: 17.02, y: 30.7))
        path3.addCurve(to: CGPoint(x: 56.99, y: 11.76), controlPoint1: CGPoint(x: 51.59, y: 11.83), controlPoint2: CGPoint(x: 54.64, y: 13.65))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.bold, CGPoint(x: 105.13, y: 56.21))
        
        let beanie = UIView()
        beanie.layer.addSublayers(headLayer, beardLayer, pathLayer, path2Layer, path3Layer)
        return beanie
    }
    
}
