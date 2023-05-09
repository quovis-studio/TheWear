/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSantaClausHatForShort(_ hair: Bool) -> UIView {
        let head = UIBezierPath()
        if hair {
            head.move(to: CGPoint(x: 3.38, y: 12.28))
            head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
            head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
            head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
            head.close()
        }
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 10.66, y: 13.25))
            path.addCurve(to: CGPoint(x: 17.81, y: 20.1), controlPoint1: CGPoint(x: 16.16, y: 12.75), controlPoint2: CGPoint(x: 15.98, y: 19.43))
            path.addCurve(to: CGPoint(x: 35.38, y: 6.74), controlPoint1: CGPoint(x: 19.65, y: 20.78), controlPoint2: CGPoint(x: 21.44, y: 12.86))
            path.addCurve(to: CGPoint(x: 53.55, y: 0), controlPoint1: CGPoint(x: 49.32, y: 0.61), controlPoint2: CGPoint(x: 52.07, y: 3.86))
            path.addLine(to: CGPoint(x: 6.4, y: 3.79))
            path.addLine(to: CGPoint(x: 0, y: 30.47))
            path.addCurve(to: CGPoint(x: 12.53, y: 39.71), controlPoint1: CGPoint(x: 3.7, y: 35.29), controlPoint2: CGPoint(x: 12.07, y: 40.49))
            path.addCurve(to: CGPoint(x: 7.05, y: 28.76), controlPoint1: CGPoint(x: 13.45, y: 38.15), controlPoint2: CGPoint(x: 9.55, y: 33.48))
            path.addCurve(to: CGPoint(x: 10.66, y: 13.25), controlPoint1: CGPoint(x: 2.55, y: 20.26), controlPoint2: CGPoint(x: 5.16, y: 13.75))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 105.95, y: 60.74))
        
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
        hat.layer.addSublayers(headLayer, pathLayer, ovalLayer, hatLayer, bendLayer, shadowLayer)
        return hat
    }
    
}
