/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSantaClausHatForBob(_ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 1.31, y: 45.44))
            path.addCurve(to: CGPoint(x: 1.01, y: 73.06), controlPoint1: CGPoint(x: 3.57, y: 66.55), controlPoint2: CGPoint(x: -2.23, y: 66.29))
            path.addCurve(to: CGPoint(x: 27.91, y: 75.75), controlPoint1: CGPoint(x: 4.24, y: 79.84), controlPoint2: CGPoint(x: 21.59, y: 80.83))
            path.addCurve(to: CGPoint(x: 18.29, y: 7.33), controlPoint1: CGPoint(x: 34.22, y: 70.67), controlPoint2: CGPoint(x: 26.48, y: 33.26))
            path.addCurve(to: CGPoint(x: 13.94, y: 32.62), controlPoint1: CGPoint(x: 10.1, y: -18.61), controlPoint2: CGPoint(x: 13.94, y: 32.62))
            path.addCurve(to: CGPoint(x: 1.31, y: 45.44), controlPoint1: CGPoint(x: 13.94, y: 32.62), controlPoint2: CGPoint(x: -0.96, y: 24.33))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 136.56, y: 52.94))
        
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
            path3.move(to: CGPoint(x: 15.93, y: 40.19))
            path3.addLine(to: CGPoint(x: 19.7, y: 37.39))
            path3.addCurve(to: CGPoint(x: 22.84, y: 29.82), controlPoint1: CGPoint(x: 18.7, y: 29.89), controlPoint2: CGPoint(x: 19.83, y: 31.81))
            path3.addCurve(to: CGPoint(x: 24.2, y: 23.71), controlPoint1: CGPoint(x: 25.49, y: 28.07), controlPoint2: CGPoint(x: 21.99, y: 23.34))
            path3.addCurve(to: CGPoint(x: 47.15, y: 25.27), controlPoint1: CGPoint(x: 27.2, y: 24.21), controlPoint2: CGPoint(x: 31.88, y: 25.27))
            path3.addCurve(to: CGPoint(x: 56.71, y: 20.33), controlPoint1: CGPoint(x: 57.6, y: 25.27), controlPoint2: CGPoint(x: 58.75, y: 22.64))
            path3.addCurve(to: CGPoint(x: 45.59, y: 12.78), controlPoint1: CGPoint(x: 54.79, y: 18.16), controlPoint2: CGPoint(x: 50.98, y: 19.17))
            path3.addCurve(to: CGPoint(x: 30.36, y: 0), controlPoint1: CGPoint(x: 40.2, y: 6.39), controlPoint2: CGPoint(x: 41.83, y: 0))
            path3.addCurve(to: CGPoint(x: 6.48, y: 20.33), controlPoint1: CGPoint(x: 18.89, y: 0), controlPoint2: CGPoint(x: 13.15, y: -0.64))
            path3.addCurve(to: CGPoint(x: 3.66, y: 62.69), controlPoint1: CGPoint(x: -0.19, y: 41.3), controlPoint2: CGPoint(x: 6.48, y: 48.69))
            path3.addCurve(to: CGPoint(x: 2.14, y: 87), controlPoint1: CGPoint(x: 0.84, y: 76.68), controlPoint2: CGPoint(x: -2.13, y: 84.85))
            path3.addCurve(to: CGPoint(x: 19.7, y: 90.07), controlPoint1: CGPoint(x: 6.41, y: 89.15), controlPoint2: CGPoint(x: 12.26, y: 91.07))
            path3.addCurve(to: CGPoint(x: 18.35, y: 61.86), controlPoint1: CGPoint(x: 27.15, y: 89.07), controlPoint2: CGPoint(x: 21.07, y: 71.31))
            path3.addCurve(to: CGPoint(x: 12.37, y: 43.69), controlPoint1: CGPoint(x: 15.62, y: 52.41), controlPoint2: CGPoint(x: 12.37, y: 43.69))
            path3.addCurve(to: CGPoint(x: 8.93, y: 30.19), controlPoint1: CGPoint(x: 6.37, y: 35.61), controlPoint2: CGPoint(x: 3.43, y: 30.69))
            path3.addCurve(to: CGPoint(x: 15.93, y: 40.19), controlPoint1: CGPoint(x: 14.43, y: 29.69), controlPoint2: CGPoint(x: 15.93, y: 40.19))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 105, y: 42.56))
        
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 23, height: 23))
        let ovalLayer = createLayer(ovalPath, Color.clothes.white.color, CGPoint(x: 80.09, y: 58.49))
        
        let hatPath = UIBezierPath()
        hatPath.move(to: CGPoint(x: 30.62, y: 0))
        hatPath.addCurve(to: CGPoint(x: 72.92, y: 33.11), controlPoint1: CGPoint(x: 46.49, y: -0), controlPoint2: CGPoint(x: 71.56, y: 17.63))
        hatPath.addCurve(to: CGPoint(x: 48.91, y: 41.12), controlPoint1: CGPoint(x: 73.07, y: 34.83), controlPoint2: CGPoint(x: 64.62, y: 32.57))
        hatPath.addCurve(to: CGPoint(x: 17.99, y: 57.95), controlPoint1: CGPoint(x: 33.2, y: 49.68), controlPoint2: CGPoint(x: 18.97, y: 59.04))
        hatPath.addCurve(to: CGPoint(x: 10.15, y: 28.29), controlPoint1: CGPoint(x: 12.17, y: 51.41), controlPoint2: CGPoint(x: 8.3, y: 36.17))
        hatPath.addCurve(to: CGPoint(x: 2.78, y: 28.67), controlPoint1: CGPoint(x: 9.27, y: 29.65), controlPoint2: CGPoint(x: 6.53, y: 30.78))
        hatPath.addCurve(to: CGPoint(x: 3.74, y: 15.05), controlPoint1: CGPoint(x: -1.95, y: 26.02), controlPoint2: CGPoint(x: 0.03, y: 21.2))
        hatPath.addCurve(to: CGPoint(x: 30.62, y: 0), controlPoint1: CGPoint(x: 7.44, y: 8.91), controlPoint2: CGPoint(x: 14.74, y: 0))
        hatPath.close()
        let hatLayer = createLayer(hatPath, Color.clothes.red.color, CGPoint(x: 89.05, y: 33.76))
        
        let bendPath = UIBezierPath()
        bendPath.move(to: CGPoint(x: 61.38, y: 14.19))
        bendPath.addCurve(to: CGPoint(x: 56.85, y: 0), controlPoint1: CGPoint(x: 63.73, y: 12.3), controlPoint2: CGPoint(x: 59.28, y: -0))
        bendPath.addCurve(to: CGPoint(x: 28.38, y: 8.19), controlPoint1: CGPoint(x: 54.41, y: 0), controlPoint2: CGPoint(x: 42.81, y: 1.54))
        bendPath.addCurve(to: CGPoint(x: 0.38, y: 28.19), controlPoint1: CGPoint(x: 13.94, y: 14.83), controlPoint2: CGPoint(x: 2.23, y: 26.25))
        bendPath.addCurve(to: CGPoint(x: 7.88, y: 40.69), controlPoint1: CGPoint(x: -1.48, y: 30.13), controlPoint2: CGPoint(x: 3.93, y: 40.69))
        bendPath.addCurve(to: CGPoint(x: 36.88, y: 22.69), controlPoint1: CGPoint(x: 11.82, y: 40.69), controlPoint2: CGPoint(x: 20.45, y: 30.09))
        bendPath.addCurve(to: CGPoint(x: 61.38, y: 14.19), controlPoint1: CGPoint(x: 53.3, y: 15.29), controlPoint2: CGPoint(x: 59.02, y: 16.07))
        bendPath.close()
        let bendLayer = createLayer(bendPath, Color.clothes.white.color, CGPoint(x: 100.62, y: 53.81))
        
        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: 3.03, y: 0))
        shadowPath.addCurve(to: CGPoint(x: 0.47, y: 7.12), controlPoint1: CGPoint(x: 1.95, y: 1.75), controlPoint2: CGPoint(x: 0.9, y: 5.24))
        shadowPath.addCurve(to: CGPoint(x: 2.78, y: 26.55), controlPoint1: CGPoint(x: -1.16, y: 14.28), controlPoint2: CGPoint(x: 1.9, y: 24.27))
        shadowPath.addCurve(to: CGPoint(x: 1.36, y: 11.69), controlPoint1: CGPoint(x: 1.65, y: 20.02), controlPoint2: CGPoint(x: 1.36, y: 15.54))
        shadowPath.addCurve(to: CGPoint(x: 3.03, y: 0), controlPoint1: CGPoint(x: 1.36, y: 7.84), controlPoint2: CGPoint(x: 2.31, y: 2.49))
        shadowPath.close()
        let shadowLayer = createLayer(shadowPath, Color.shadow.medium, CGPoint(x: 98.72, y: 54.94))
        
        let hat = UIView()
        hat.layer.addSublayers(pathLayer, headLayer, beardLayer, path3Layer, ovalLayer, hatLayer, bendLayer, shadowLayer)
        return hat
    }
    
}
