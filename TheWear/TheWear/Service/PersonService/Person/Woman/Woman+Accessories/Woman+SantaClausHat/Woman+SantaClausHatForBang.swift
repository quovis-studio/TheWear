/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSantaClausHatForBang(_ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 37.96, y: 87.35))
            path.addCurve(to: CGPoint(x: 54.25, y: 91.84), controlPoint1: CGPoint(x: 44.6, y: 92.49), controlPoint2: CGPoint(x: 50.06, y: 96.73))
            path.addCurve(to: CGPoint(x: 40.88, y: 7.08), controlPoint1: CGPoint(x: 63.61, y: 80.93), controlPoint2: CGPoint(x: 60.86, y: 24.36))
            path.addCurve(to: CGPoint(x: 25.19, y: 6.64), controlPoint1: CGPoint(x: 27.79, y: -4.24), controlPoint2: CGPoint(x: 26.81, y: -0.15))
            path.addCurve(to: CGPoint(x: 20.23, y: 17.78), controlPoint1: CGPoint(x: 24.34, y: 10.22), controlPoint2: CGPoint(x: 23.3, y: 14.55))
            path.addCurve(to: CGPoint(x: 7.91, y: 79.79), controlPoint1: CGPoint(x: 11.38, y: 27.08), controlPoint2: CGPoint(x: -12.23, y: 90.06))
            path.addLine(to: CGPoint(x: 10.76, y: 43.95))
            path.addLine(to: CGPoint(x: 24.82, y: 56.54))
            path.addLine(to: CGPoint(x: 27.53, y: 80.18))
            path.addCurve(to: CGPoint(x: 37.96, y: 87.35), controlPoint1: CGPoint(x: 31.27, y: 82.16), controlPoint2: CGPoint(x: 34.75, y: 84.86))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 111.16, y: 47.83))
        
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
            path3.move(to: CGPoint(x: 13.66, y: 21.35))
            path3.addCurve(to: CGPoint(x: 16.73, y: 3.94), controlPoint1: CGPoint(x: 8.16, y: 10.35), controlPoint2: CGPoint(x: 11.23, y: 4.44))
            path3.addLine(to: CGPoint(x: 6.84, y: 0))
            path3.addCurve(to: CGPoint(x: 1.66, y: 66.82), controlPoint1: CGPoint(x: 8.18, y: 21.88), controlPoint2: CGPoint(x: -4.4, y: 55.56))
            path3.addCurve(to: CGPoint(x: 24.97, y: 73.79), controlPoint1: CGPoint(x: 7.73, y: 78.07), controlPoint2: CGPoint(x: 22.72, y: 80.06))
            path3.addCurve(to: CGPoint(x: 20.21, y: 36.76), controlPoint1: CGPoint(x: 26.31, y: 70.06), controlPoint2: CGPoint(x: 22.15, y: 44.25))
            path3.addCurve(to: CGPoint(x: 13.66, y: 21.35), controlPoint1: CGPoint(x: 18.27, y: 29.28), controlPoint2: CGPoint(x: 14.3, y: 22.65))
            path3.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 101.65, y: 68.09))
        
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
