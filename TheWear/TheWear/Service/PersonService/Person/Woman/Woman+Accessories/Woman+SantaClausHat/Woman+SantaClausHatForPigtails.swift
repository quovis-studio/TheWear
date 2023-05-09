/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSantaClausHatForPigtails(_ hair: Bool) -> UIView {
        let path = UIBezierPath()
        if hair {
            path.move(to: CGPoint(x: 49.5, y: 13.24))
            path.addCurve(to: CGPoint(x: 54.65, y: 55.46), controlPoint1: CGPoint(x: 61.68, y: 27.18), controlPoint2: CGPoint(x: 54.65, y: 46.01))
            path.addCurve(to: CGPoint(x: 49.5, y: 76.92), controlPoint1: CGPoint(x: 54.65, y: 60.03), controlPoint2: CGPoint(x: 52.38, y: 63.55))
            path.addCurve(to: CGPoint(x: 49.84, y: 89.18), controlPoint1: CGPoint(x: 48.26, y: 82.66), controlPoint2: CGPoint(x: 50.11, y: 83.58))
            path.addCurve(to: CGPoint(x: 48.23, y: 99.88), controlPoint1: CGPoint(x: 49.58, y: 94.79), controlPoint2: CGPoint(x: 47.23, y: 96.41))
            path.addCurve(to: CGPoint(x: 46.75, y: 112.68), controlPoint1: CGPoint(x: 49.23, y: 103.35), controlPoint2: CGPoint(x: 48.04, y: 107.2))
            path.addCurve(to: CGPoint(x: 42.44, y: 138.22), controlPoint1: CGPoint(x: 50.03, y: 123.2), controlPoint2: CGPoint(x: 46.28, y: 138.26))
            path.addCurve(to: CGPoint(x: 38.36, y: 112.68), controlPoint1: CGPoint(x: 38.59, y: 138.19), controlPoint2: CGPoint(x: 34.96, y: 125.98))
            path.addCurve(to: CGPoint(x: 35.48, y: 100.56), controlPoint1: CGPoint(x: 37.54, y: 110.57), controlPoint2: CGPoint(x: 34.89, y: 106.46))
            path.addCurve(to: CGPoint(x: 34.11, y: 89.18), controlPoint1: CGPoint(x: 36.07, y: 94.66), controlPoint2: CGPoint(x: 33.93, y: 94.04))
            path.addCurve(to: CGPoint(x: 34.41, y: 80.29), controlPoint1: CGPoint(x: 34.3, y: 84.32), controlPoint2: CGPoint(x: 34.94, y: 84.21))
            path.addCurve(to: CGPoint(x: 33.18, y: 64.94), controlPoint1: CGPoint(x: 33.87, y: 76.38), controlPoint2: CGPoint(x: 31.28, y: 74.35))
            path.addCurve(to: CGPoint(x: 1.41, y: 6.3), controlPoint1: CGPoint(x: 35.08, y: 55.52), controlPoint2: CGPoint(x: -8.27, y: 15.57))
            path.addCurve(to: CGPoint(x: 49.5, y: 13.24), controlPoint1: CGPoint(x: 11.1, y: -2.97), controlPoint2: CGPoint(x: 35.23, y: -3.08))
            path.close()
        }
        let pathLayer = createLayer(path, hairColor, CGPoint(x: 106.77, y: 42.43))
        
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
        let path4 = UIBezierPath()
        let path5 = UIBezierPath()
        if hair {
            path3.move(to: CGPoint(x: 16.28, y: 24.99))
            path3.addCurve(to: CGPoint(x: 23.43, y: 31.85), controlPoint1: CGPoint(x: 21.78, y: 24.49), controlPoint2: CGPoint(x: 21.6, y: 31.17))
            path3.addCurve(to: CGPoint(x: 42.32, y: 19.58), controlPoint1: CGPoint(x: 25.26, y: 32.52), controlPoint2: CGPoint(x: 30.13, y: 25.75))
            path3.addCurve(to: CGPoint(x: 48.46, y: 11.42), controlPoint1: CGPoint(x: 54.52, y: 13.42), controlPoint2: CGPoint(x: 50.32, y: 15.73))
            path3.addCurve(to: CGPoint(x: 26.65, y: 2.09), controlPoint1: CGPoint(x: 44.57, y: 2.4), controlPoint2: CGPoint(x: 35.42, y: 3.25))
            path3.addCurve(to: CGPoint(x: 2.56, y: 9.09), controlPoint1: CGPoint(x: 17.88, y: 0.93), controlPoint2: CGPoint(x: 11.32, y: -4.62))
            path3.addCurve(to: CGPoint(x: 0.82, y: 31.85), controlPoint1: CGPoint(x: -3.37, y: 18.38), controlPoint2: CGPoint(x: 3.19, y: 19.57))
            path3.addCurve(to: CGPoint(x: 3.86, y: 53.59), controlPoint1: CGPoint(x: -0.85, y: 40.51), controlPoint2: CGPoint(x: 7.85, y: 41.9))
            path3.addCurve(to: CGPoint(x: 4.55, y: 74.46), controlPoint1: CGPoint(x: -0.13, y: 65.28), controlPoint2: CGPoint(x: 6.42, y: 65.04))
            path3.addCurve(to: CGPoint(x: 6.53, y: 94.91), controlPoint1: CGPoint(x: 2.68, y: 83.89), controlPoint2: CGPoint(x: 8.6, y: 87.59))
            path3.addCurve(to: CGPoint(x: 10.06, y: 109.93), controlPoint1: CGPoint(x: 4.46, y: 102.24), controlPoint2: CGPoint(x: 9.41, y: 106.33))
            path3.addCurve(to: CGPoint(x: 14.2, y: 135.27), controlPoint1: CGPoint(x: 7.16, y: 118.11), controlPoint2: CGPoint(x: 9.99, y: 135.16))
            path3.addCurve(to: CGPoint(x: 18.42, y: 109.93), controlPoint1: CGPoint(x: 18.42, y: 135.37), controlPoint2: CGPoint(x: 22.82, y: 121.25))
            path3.addCurve(to: CGPoint(x: 21.08, y: 97.79), controlPoint1: CGPoint(x: 18.42, y: 104.91), controlPoint2: CGPoint(x: 20.43, y: 103.43))
            path3.addCurve(to: CGPoint(x: 20.5, y: 87.95), controlPoint1: CGPoint(x: 21.72, y: 92.15), controlPoint2: CGPoint(x: 18.77, y: 92.51))
            path3.addCurve(to: CGPoint(x: 21.39, y: 72), controlPoint1: CGPoint(x: 22.23, y: 83.4), controlPoint2: CGPoint(x: 22.37, y: 77.1))
            path3.addCurve(to: CGPoint(x: 21.39, y: 58.1), controlPoint1: CGPoint(x: 20.41, y: 66.9), controlPoint2: CGPoint(x: 20.5, y: 62.79))
            path3.addCurve(to: CGPoint(x: 15.12, y: 40.92), controlPoint1: CGPoint(x: 22.28, y: 53.41), controlPoint2: CGPoint(x: 18.42, y: 47.51))
            path3.addCurve(to: CGPoint(x: 16.28, y: 24.99), controlPoint1: CGPoint(x: 9.62, y: 29.92), controlPoint2: CGPoint(x: 10.78, y: 25.49))
            path3.close()
            
            path4.move(to: CGPoint(x: 0.35, y: 0.85))
            path4.addCurve(to: CGPoint(x: 0.65, y: 4.9), controlPoint1: CGPoint(x: -0.25, y: 1.49), controlPoint2: CGPoint(x: -0.04, y: 4.32))
            path4.addCurve(to: CGPoint(x: 10.29, y: 4.81), controlPoint1: CGPoint(x: 1.26, y: 5.42), controlPoint2: CGPoint(x: 9.78, y: 5.47))
            path4.addCurve(to: CGPoint(x: 10.06, y: 0.46), controlPoint1: CGPoint(x: 10.83, y: 4.11), controlPoint2: CGPoint(x: 10.57, y: 1))
            path4.addCurve(to: CGPoint(x: 0.35, y: 0.85), controlPoint1: CGPoint(x: 9.26, y: -0.39), controlPoint2: CGPoint(x: 1.09, y: 0.06))
            path4.close()
            
            path5.move(to: CGPoint(x: 0.43, y: 0.76))
            path5.addCurve(to: CGPoint(x: 0.54, y: 4.64), controlPoint1: CGPoint(x: -0.17, y: 1.39), controlPoint2: CGPoint(x: -0.15, y: 4.06))
            path5.addCurve(to: CGPoint(x: 10.29, y: 4.77), controlPoint1: CGPoint(x: 1.15, y: 5.15), controlPoint2: CGPoint(x: 9.77, y: 5.43))
            path5.addCurve(to: CGPoint(x: 10.06, y: 0.51), controlPoint1: CGPoint(x: 10.82, y: 4.08), controlPoint2: CGPoint(x: 10.57, y: 1.06))
            path5.addCurve(to: CGPoint(x: 0.43, y: 0.76), controlPoint1: CGPoint(x: 9.27, y: -0.34), controlPoint2: CGPoint(x: 1.17, y: -0.04))
            path5.close()
        }
        let path3Layer = createLayer(path3, hairColor, CGPoint(x: 102.5, y: 47.63))
        let path4Layer = createLayer(path4, UIColor(60, 58, 58), CGPoint(x: 111.35, y: 153.58))
        let path5Layer = createLayer(path5, UIColor(60, 58, 58), CGPoint(x: 144.07, y: 152.38))
        
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
        hat.layer.addSublayers(pathLayer, headLayer, path3Layer, path4Layer, path5Layer, ovalLayer, hatLayer, bendLayer, shadowLayer)
        return hat
    }
    
}
