/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSantaClausHatForShort() -> UIView {
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 3.37, y: 12.26))
        head.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        head.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        head.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        head.close()
        let headLayer = createLayer(head, skinColor, CGPoint(x: 108, y: 48))
        
        let beardLayer = drawBeardForBeanie()
        
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 23, height: 23))
        let ovalLayer = createLayer(ovalPath, Color.clothes.white.color, CGPoint(x: 82, y: 57.45))
        
        let hatPath = UIBezierPath()
        hatPath.move(to: CGPoint(x: 30.62, y: 0))
        hatPath.addCurve(to: CGPoint(x: 72.92, y: 33.11), controlPoint1: CGPoint(x: 46.49, y: 0), controlPoint2: CGPoint(x: 71.56, y: 17.63))
        hatPath.addCurve(to: CGPoint(x: 48.91, y: 41.12), controlPoint1: CGPoint(x: 73.07, y: 34.83), controlPoint2: CGPoint(x: 64.62, y: 32.57))
        hatPath.addCurve(to: CGPoint(x: 19.33, y: 56.79), controlPoint1: CGPoint(x: 33.2, y: 49.68), controlPoint2: CGPoint(x: 20.15, y: 58.01))
        hatPath.addCurve(to: CGPoint(x: 11.44, y: 26.96), controlPoint1: CGPoint(x: 13.78, y: 48.6), controlPoint2: CGPoint(x: 10.2, y: 35.32))
        hatPath.addCurve(to: CGPoint(x: 2.78, y: 28.67), controlPoint1: CGPoint(x: 10.78, y: 28.64), controlPoint2: CGPoint(x: 6.99, y: 31.04))
        hatPath.addCurve(to: CGPoint(x: 3.74, y: 15.05), controlPoint1: CGPoint(x: -1.95, y: 26.02), controlPoint2: CGPoint(x: 0.03, y: 21.2))
        hatPath.addCurve(to: CGPoint(x: 30.62, y: 0), controlPoint1: CGPoint(x: 7.44, y: 8.91), controlPoint2: CGPoint(x: 14.74, y: 0))
        hatPath.close()
        let hatLayer = createLayer(hatPath, Color.clothes.red.color, CGPoint(x: 89.05, y: 33.76))
        
        let bendPath = UIBezierPath()
        bendPath.move(to: CGPoint(x: 58.24, y: 14.41))
        bendPath.addCurve(to: CGPoint(x: 53.51, y: 0), controlPoint1: CGPoint(x: 60.59, y: 12.52), controlPoint2: CGPoint(x: 55.94, y: -0))
        bendPath.addCurve(to: CGPoint(x: 25.83, y: 9.33), controlPoint1: CGPoint(x: 51.08, y: 0), controlPoint2: CGPoint(x: 39.86, y: 2.36))
        bendPath.addCurve(to: CGPoint(x: 0.34, y: 29.5), controlPoint1: CGPoint(x: 11.81, y: 16.3), controlPoint2: CGPoint(x: 2.19, y: 27.56))
        bendPath.addCurve(to: CGPoint(x: 8.69, y: 41.37), controlPoint1: CGPoint(x: -1.52, y: 31.43), controlPoint2: CGPoint(x: 4.74, y: 41.37))
        bendPath.addCurve(to: CGPoint(x: 34.23, y: 23.36), controlPoint1: CGPoint(x: 12.63, y: 41.37), controlPoint2: CGPoint(x: 19.33, y: 31.22))
        bendPath.addCurve(to: CGPoint(x: 58.24, y: 14.41), controlPoint1: CGPoint(x: 49.13, y: 15.5), controlPoint2: CGPoint(x: 55.89, y: 16.29))
        bendPath.close()
        let bendLayer = createLayer(bendPath, Color.clothes.white.color, CGPoint(x: 103.75, y: 53.59))
        
        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: 1.47, y: 0))
        shadowPath.addCurve(to: CGPoint(x: 0.22, y: 4.25), controlPoint1: CGPoint(x: 1.12, y: 0.76), controlPoint2: CGPoint(x: 0.48, y: 2.34))
        shadowPath.addCurve(to: CGPoint(x: 4.08, y: 26.38), controlPoint1: CGPoint(x: -0.82, y: 12.02), controlPoint2: CGPoint(x: 2.02, y: 21.58))
        shadowPath.addCurve(to: CGPoint(x: 1.21, y: 11.05), controlPoint1: CGPoint(x: 2.14, y: 19.71), controlPoint2: CGPoint(x: 1.51, y: 15.41))
        shadowPath.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 0.91, y: 6.69), controlPoint2: CGPoint(x: 0.98, y: 2.91))
        shadowPath.close()
        let shadowLayer = createLayer(shadowPath, Color.shadow.medium, CGPoint(x: 100.22, y: 56.49))
        
        let hat = UIView()
        hat.layer.addSublayers(headLayer, beardLayer, ovalLayer, hatLayer, bendLayer, shadowLayer)
        return hat
    }
    
}
