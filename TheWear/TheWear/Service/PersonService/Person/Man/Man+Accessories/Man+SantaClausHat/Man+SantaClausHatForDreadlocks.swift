/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSantaClausHatForDreadlocks(_ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 16.08, y: 22.67))
            path.addLine(to: CGPoint(x: 11.88, y: 24.49))
            path.addCurve(to: CGPoint(x: 5.56, y: 15.76), controlPoint1: CGPoint(x: 11.88, y: 24.49), controlPoint2: CGPoint(x: 11.06, y: 15.26))
            path.addCurve(to: CGPoint(x: 9.99, y: 38.02), controlPoint1: CGPoint(x: 0.06, y: 16.26), controlPoint2: CGPoint(x: 8.88, y: 35.56))
            path.addCurve(to: CGPoint(x: 9.17, y: 46.56), controlPoint1: CGPoint(x: 11.1, y: 40.48), controlPoint2: CGPoint(x: 15.26, y: 49.98))
            path.addCurve(to: CGPoint(x: 6.33, y: 43.71), controlPoint1: CGPoint(x: 7.74, y: 45.76), controlPoint2: CGPoint(x: 6.85, y: 44.77))
            path.addCurve(to: CGPoint(x: 3.56, y: 47.64), controlPoint1: CGPoint(x: 6.3, y: 46.44), controlPoint2: CGPoint(x: 5.87, y: 48.56))
            path.addCurve(to: CGPoint(x: 1.42, y: 28.66), controlPoint1: CGPoint(x: -1.11, y: 45.79), controlPoint2: CGPoint(x: 1.42, y: 31.18))
            path.addCurve(to: CGPoint(x: 5.56, y: 6.99), controlPoint1: CGPoint(x: -0.29, y: 23.16), controlPoint2: CGPoint(x: -1.85, y: 11.13))
            path.addCurve(to: CGPoint(x: 45.34, y: 1.11), controlPoint1: CGPoint(x: 14.82, y: 1.81), controlPoint2: CGPoint(x: 42.12, y: -1.97))
            path.addCurve(to: CGPoint(x: 51.75, y: 6.27), controlPoint1: CGPoint(x: 47.91, y: 3.57), controlPoint2: CGPoint(x: 50.69, y: 5.58))
            path.addCurve(to: CGPoint(x: 54.62, y: 16.14), controlPoint1: CGPoint(x: 51.75, y: 6.27), controlPoint2: CGPoint(x: 56.75, y: 15.26))
            path.addCurve(to: CGPoint(x: 46.7, y: 6.27), controlPoint1: CGPoint(x: 52.49, y: 17.02), controlPoint2: CGPoint(x: 47.22, y: 9.21))
            path.addCurve(to: CGPoint(x: 40.68, y: 10.81), controlPoint1: CGPoint(x: 45.41, y: 6.27), controlPoint2: CGPoint(x: 45.99, y: 10.62))
            path.addCurve(to: CGPoint(x: 44.78, y: 6.03), controlPoint1: CGPoint(x: 35.37, y: 11), controlPoint2: CGPoint(x: 45.93, y: 6.05))
            path.addCurve(to: CGPoint(x: 18.98, y: 7.72), controlPoint1: CGPoint(x: 37.17, y: 5.91), controlPoint2: CGPoint(x: 20.63, y: 6.07))
            path.addCurve(to: CGPoint(x: 18.98, y: 14.53), controlPoint1: CGPoint(x: 17.4, y: 9.3), controlPoint2: CGPoint(x: 20.23, y: 13.25))
            path.addCurve(to: CGPoint(x: 16.08, y: 22.67), controlPoint1: CGPoint(x: 16.48, y: 17.13), controlPoint2: CGPoint(x: 15.08, y: 15.17))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 108.47, y: 57.07))
        
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
        hat.layer.addSublayers(pathLayer, headLayer, beardLayer, ovalLayer, hatLayer, bendLayer, shadowLayer)
        return hat
    }
    
}
