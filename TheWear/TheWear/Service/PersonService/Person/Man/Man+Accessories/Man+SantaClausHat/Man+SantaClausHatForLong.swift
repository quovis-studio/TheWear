/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSantaClausHatForLong(_ hair: Bool) -> UIView {
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
