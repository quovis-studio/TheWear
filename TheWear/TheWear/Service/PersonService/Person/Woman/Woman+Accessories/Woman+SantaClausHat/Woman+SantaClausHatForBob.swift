/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSantaClausHatForBob(_ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 36.01, y: 64.32))
            path.addCurve(to: CGPoint(x: 20.19, y: 0), controlPoint1: CGPoint(x: 38.71, y: 58.36), controlPoint2: CGPoint(x: 41.66, y: 17.6))
            path.addLine(to: CGPoint(x: 0, y: 44.94))
            path.addLine(to: CGPoint(x: 5.28, y: 49.67))
            path.addLine(to: CGPoint(x: 7.6, y: 69.9))
            path.addCurve(to: CGPoint(x: 36.01, y: 64.32), controlPoint1: CGPoint(x: 20.91, y: 70.33), controlPoint2: CGPoint(x: 34.17, y: 68.36))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 130.7, y: 54.7))
        
        let head = UIBezierPath()
        if hair {
            head.move(to: CGPoint(x: 3.38, y: 12.28))
            head.addCurve(to: CGPoint(x: 48.05, y: 11.07), controlPoint1: CGPoint(x: 10.02, y: -2.4), controlPoint2: CGPoint(x: 38.09, y: -5.25))
            head.addCurve(to: CGPoint(x: 20.85, y: 63.22), controlPoint1: CGPoint(x: 60.24, y: 31.02), controlPoint2: CGPoint(x: 60.26, y: 97.75))
            head.addCurve(to: CGPoint(x: 3.38, y: 12.28), controlPoint1: CGPoint(x: -1.44, y: 43.69), controlPoint2: CGPoint(x: -3.25, y: 26.95))
            head.close()
        }
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108.51, y: 48))
        
        let path3 = UIBezierPath()
        if hair {
            path3.move(to: CGPoint(x: 12.61, y: 29.49))
            path3.addCurve(to: CGPoint(x: 24.13, y: 11.98), controlPoint1: CGPoint(x: 10.46, y: 17.74), controlPoint2: CGPoint(x: 18.63, y: 12.48))
            path3.addLine(to: CGPoint(x: 7.86, y: 0))
            path3.addCurve(to: CGPoint(x: 1.08, y: 61.01), controlPoint1: CGPoint(x: 2.21, y: 16.38), controlPoint2: CGPoint(x: -2.1, y: 58.79))
            path3.addCurve(to: CGPoint(x: 19.77, y: 63.19), controlPoint1: CGPoint(x: 4.27, y: 63.24), controlPoint2: CGPoint(x: 7.35, y: 64.37))
            path3.addCurve(to: CGPoint(x: 12.61, y: 29.49), controlPoint1: CGPoint(x: 32.2, y: 62.02), controlPoint2: CGPoint(x: 14.19, y: 38.15))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 104.04, y: 61.37))
        
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 23, height: 23))
        let ovalLayer = createLayer(ovalPath, Color.clothes.white.color, CGPoint(x: 78.87, y: 56.05))
        
        let hatPath = UIBezierPath()
        hatPath.move(to: CGPoint(x: 31.49, y: 0))
        hatPath.addCurve(to: CGPoint(x: 73.8, y: 33.11), controlPoint1: CGPoint(x: 47.36, y: 0), controlPoint2: CGPoint(x: 72.44, y: 17.63))
        hatPath.addCurve(to: CGPoint(x: 49.78, y: 41.12), controlPoint1: CGPoint(x: 73.95, y: 34.83), controlPoint2: CGPoint(x: 65.49, y: 32.57))
        hatPath.addCurve(to: CGPoint(x: 17.58, y: 57.56), controlPoint1: CGPoint(x: 34.08, y: 49.68), controlPoint2: CGPoint(x: 18.44, y: 58.75))
        hatPath.addCurve(to: CGPoint(x: 9.22, y: 28.8), controlPoint1: CGPoint(x: 12.23, y: 50.19), controlPoint2: CGPoint(x: 7.89, y: 36.35))
        hatPath.addCurve(to: CGPoint(x: 3.17, y: 28.93), controlPoint1: CGPoint(x: 8.48, y: 30.01), controlPoint2: CGPoint(x: 6.56, y: 30.84))
        hatPath.addCurve(to: CGPoint(x: 3.17, y: 15.14), controlPoint1: CGPoint(x: -1.55, y: 26.28), controlPoint2: CGPoint(x: -0.53, y: 21.29))
        hatPath.addCurve(to: CGPoint(x: 31.49, y: 0), controlPoint1: CGPoint(x: 6.88, y: 8.99), controlPoint2: CGPoint(x: 15.62, y: 0))
        hatPath.close()
        let hatLayer = createLayer(hatPath, Color.clothes.red.color, CGPoint(x: 88.83, y: 33.03))
        
        let bendPath = UIBezierPath()
        bendPath.move(to: CGPoint(x: 63.58, y: 14.57))
        bendPath.addCurve(to: CGPoint(x: 58, y: 0), controlPoint1: CGPoint(x: 65.93, y: 12.69), controlPoint2: CGPoint(x: 60.43, y: -0))
        bendPath.addCurve(to: CGPoint(x: 29.68, y: 8.43), controlPoint1: CGPoint(x: 55.57, y: 0), controlPoint2: CGPoint(x: 44.11, y: 1.79))
        bendPath.addCurve(to: CGPoint(x: 0.49, y: 27), controlPoint1: CGPoint(x: 15.24, y: 15.08), controlPoint2: CGPoint(x: 2.35, y: 25.06))
        bendPath.addCurve(to: CGPoint(x: 6.27, y: 40.36), controlPoint1: CGPoint(x: -1.36, y: 28.94), controlPoint2: CGPoint(x: 2.33, y: 40.36))
        bendPath.addCurve(to: CGPoint(x: 36.78, y: 24.16), controlPoint1: CGPoint(x: 10.22, y: 40.36), controlPoint2: CGPoint(x: 20.35, y: 31.56))
        bendPath.addCurve(to: CGPoint(x: 63.58, y: 14.57), controlPoint1: CGPoint(x: 53.21, y: 16.76), controlPoint2: CGPoint(x: 61.23, y: 16.46))
        bendPath.close()
        let bendLayer = createLayer(bendPath, Color.clothes.white.color, CGPoint(x: 99.57, y: 52.58))
        
        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: 1.81, y: 0))
        shadowPath.addCurve(to: CGPoint(x: 0.25, y: 4.71), controlPoint1: CGPoint(x: 1.17, y: 1.23), controlPoint2: CGPoint(x: 0.59, y: 2.81))
        shadowPath.addCurve(to: CGPoint(x: 2.83, y: 21.93), controlPoint1: CGPoint(x: -0.87, y: 11.1), controlPoint2: CGPoint(x: 2.09, y: 19.73))
        shadowPath.addCurve(to: CGPoint(x: 1.13, y: 9.91), controlPoint1: CGPoint(x: 1.81, y: 16.73), controlPoint2: CGPoint(x: 1.41, y: 13.69))
        shadowPath.addCurve(to: CGPoint(x: 1.81, y: 0), controlPoint1: CGPoint(x: 0.84, y: 6.13), controlPoint2: CGPoint(x: 1.28, y: 2.24))
        shadowPath.close()
        let shadowLayer = createLayer(shadowPath, Color.shadow.medium, CGPoint(x: 97.79, y: 57.12))
        
        let hat = UIView()
        hat.layer.addSublayers(pathLayer, headLayer, path3Layer, ovalLayer, hatLayer, bendLayer, shadowLayer)
        return hat
    }
    
}
