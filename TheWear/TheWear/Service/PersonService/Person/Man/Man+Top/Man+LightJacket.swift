/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawLightJacket(_ color: UIColor, _ rain: Bool) -> UIView {
        let path0 = UIBezierPath()
        let path01 = UIBezierPath()
        if rain {
            path0.move(to: CGPoint(x: 77.71, y: 1.44))
            path0.addCurve(to: CGPoint(x: 35.15, y: 23.54), controlPoint1: CGPoint(x: 76.95, y: -0.53), controlPoint2: CGPoint(x: 48.15, y: 2.84))
            path0.addCurve(to: CGPoint(x: 0.31, y: 171.35), controlPoint1: CGPoint(x: 22.14, y: 44.23), controlPoint2: CGPoint(x: -3.08, y: 167.11))
            path0.addCurve(to: CGPoint(x: 17.69, y: 177.76), controlPoint1: CGPoint(x: 3.69, y: 175.6), controlPoint2: CGPoint(x: 12.88, y: 178.59))
            path0.addCurve(to: CGPoint(x: 43.09, y: 114.92), controlPoint1: CGPoint(x: 22.5, y: 176.93), controlPoint2: CGPoint(x: 40.21, y: 124.57))
            path0.addCurve(to: CGPoint(x: 51.12, y: 82.8), controlPoint1: CGPoint(x: 45.97, y: 105.26), controlPoint2: CGPoint(x: 51.12, y: 82.8))
            path0.addCurve(to: CGPoint(x: 49.96, y: 120.2), controlPoint1: CGPoint(x: 51.12, y: 82.8), controlPoint2: CGPoint(x: 50.54, y: 103.51))
            path0.addCurve(to: CGPoint(x: 49.96, y: 194.61), controlPoint1: CGPoint(x: 49.39, y: 136.9), controlPoint2: CGPoint(x: 46.69, y: 192.24))
            path0.addCurve(to: CGPoint(x: 102.14, y: 199.77), controlPoint1: CGPoint(x: 53.24, y: 196.97), controlPoint2: CGPoint(x: 75.66, y: 199.77))
            path0.addCurve(to: CGPoint(x: 145.05, y: 196.37), controlPoint1: CGPoint(x: 128.62, y: 199.77), controlPoint2: CGPoint(x: 145.05, y: 196.37))
            path0.addCurve(to: CGPoint(x: 142.15, y: 108.7), controlPoint1: CGPoint(x: 148.52, y: 194.82), controlPoint2: CGPoint(x: 142.8, y: 122.11))
            path0.addCurve(to: CGPoint(x: 139.25, y: 82.8), controlPoint1: CGPoint(x: 141.51, y: 95.29), controlPoint2: CGPoint(x: 139.25, y: 82.8))
            path0.addCurve(to: CGPoint(x: 164.98, y: 105.36), controlPoint1: CGPoint(x: 139.25, y: 82.8), controlPoint2: CGPoint(x: 144.8, y: 105.36))
            path0.addCurve(to: CGPoint(x: 173.42, y: 34.68), controlPoint1: CGPoint(x: 176.33, y: 105.36), controlPoint2: CGPoint(x: 178.33, y: 32.74))
            path0.addCurve(to: CGPoint(x: 155.17, y: 34.68), controlPoint1: CGPoint(x: 168.52, y: 36.62), controlPoint2: CGPoint(x: 160.28, y: 37.04))
            path0.addCurve(to: CGPoint(x: 151.4, y: 18.84), controlPoint1: CGPoint(x: 153.46, y: 29.94), controlPoint2: CGPoint(x: 152.66, y: 20.76))
            path0.addCurve(to: CGPoint(x: 111.38, y: 0.5), controlPoint1: CGPoint(x: 140.97, y: 2.97), controlPoint2: CGPoint(x: 111.85, y: -1.65))
            path0.addCurve(to: CGPoint(x: 95.65, y: 13.6), controlPoint1: CGPoint(x: 110.9, y: 2.65), controlPoint2: CGPoint(x: 108.92, y: 12.83))
            path0.addCurve(to: CGPoint(x: 77.71, y: 1.44), controlPoint1: CGPoint(x: 82.37, y: 14.37), controlPoint2: CGPoint(x: 78.48, y: 3.41))
            path0.close()
            
            path01.move(to: CGPoint(x: 1.64, y: 13.03))
            path01.addCurve(to: CGPoint(x: 0, y: 28.37), controlPoint1: CGPoint(x: 0.2, y: 23.42), controlPoint2: CGPoint(x: 0, y: 28.37))
            path01.addCurve(to: CGPoint(x: 7.3, y: 2.35), controlPoint1: CGPoint(x: 0, y: 28.37), controlPoint2: CGPoint(x: 4.37, y: 3.44))
            path01.addCurve(to: CGPoint(x: 4.87, y: 0), controlPoint1: CGPoint(x: 6.1, y: 0.21), controlPoint2: CGPoint(x: 4.87, y: 0))
            path01.addCurve(to: CGPoint(x: 1.64, y: 13.03), controlPoint1: CGPoint(x: 4.87, y: 0), controlPoint2: CGPoint(x: 3.07, y: 2.63))
            path01.close()
        } else {
            path0.move(to: CGPoint(x: 77.71, y: 1.44))
            path0.addCurve(to: CGPoint(x: 35.15, y: 23.54), controlPoint1: CGPoint(x: 76.95, y: -0.53), controlPoint2: CGPoint(x: 48.15, y: 2.84))
            path0.addCurve(to: CGPoint(x: 0.31, y: 171.35), controlPoint1: CGPoint(x: 22.14, y: 44.23), controlPoint2: CGPoint(x: -3.08, y: 167.11))
            path0.addCurve(to: CGPoint(x: 17.69, y: 177.76), controlPoint1: CGPoint(x: 3.69, y: 175.6), controlPoint2: CGPoint(x: 12.88, y: 178.59))
            path0.addCurve(to: CGPoint(x: 43.09, y: 114.92), controlPoint1: CGPoint(x: 22.5, y: 176.93), controlPoint2: CGPoint(x: 40.21, y: 124.57))
            path0.addCurve(to: CGPoint(x: 51.12, y: 82.8), controlPoint1: CGPoint(x: 45.97, y: 105.26), controlPoint2: CGPoint(x: 51.12, y: 82.8))
            path0.addCurve(to: CGPoint(x: 49.96, y: 120.2), controlPoint1: CGPoint(x: 51.12, y: 82.8), controlPoint2: CGPoint(x: 50.54, y: 103.51))
            path0.addCurve(to: CGPoint(x: 49.96, y: 194.61), controlPoint1: CGPoint(x: 49.39, y: 136.9), controlPoint2: CGPoint(x: 46.69, y: 192.24))
            path0.addCurve(to: CGPoint(x: 102.14, y: 199.77), controlPoint1: CGPoint(x: 53.24, y: 196.97), controlPoint2: CGPoint(x: 75.66, y: 199.77))
            path0.addCurve(to: CGPoint(x: 145.05, y: 196.37), controlPoint1: CGPoint(x: 128.62, y: 199.77), controlPoint2: CGPoint(x: 145.05, y: 196.37))
            path0.addCurve(to: CGPoint(x: 142.15, y: 108.7), controlPoint1: CGPoint(x: 148.52, y: 194.82), controlPoint2: CGPoint(x: 142.8, y: 122.11))
            path0.addCurve(to: CGPoint(x: 139.34, y: 79.69), controlPoint1: CGPoint(x: 141.51, y: 95.29), controlPoint2: CGPoint(x: 139.34, y: 79.69))
            path0.addCurve(to: CGPoint(x: 170.78, y: 171.2), controlPoint1: CGPoint(x: 139.34, y: 79.69), controlPoint2: CGPoint(x: 164.01, y: 170.3))
            path0.addCurve(to: CGPoint(x: 187.67, y: 165.55), controlPoint1: CGPoint(x: 177.55, y: 172.1), controlPoint2: CGPoint(x: 184.5, y: 169.99))
            path0.addCurve(to: CGPoint(x: 151.4, y: 18.84), controlPoint1: CGPoint(x: 190.83, y: 161.11), controlPoint2: CGPoint(x: 161.83, y: 34.71))
            path0.addCurve(to: CGPoint(x: 111.38, y: 0.5), controlPoint1: CGPoint(x: 140.97, y: 2.97), controlPoint2: CGPoint(x: 111.85, y: -1.65))
            path0.addCurve(to: CGPoint(x: 95.65, y: 13.6), controlPoint1: CGPoint(x: 110.9, y: 2.65), controlPoint2: CGPoint(x: 108.92, y: 12.83))
            path0.addCurve(to: CGPoint(x: 77.71, y: 1.44), controlPoint1: CGPoint(x: 82.37, y: 14.37), controlPoint2: CGPoint(x: 78.48, y: 3.41))
            path0.close()
        }
        let path0Layer = createLayer(path0, color, CGPoint(x: 33.4, y: 124.92))
        let path01Layer = createLayer(path01, Color.shadow.medium, CGPoint(x: 182.33, y: 158.25))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.8, y: 14.69))
        path.addCurve(to: CGPoint(x: 31.49, y: 0.05), controlPoint1: CGPoint(x: 5.3, y: 7.69), controlPoint2: CGPoint(x: 13.06, y: 1.1))
        path.addCurve(to: CGPoint(x: 60.26, y: 9.64), controlPoint1: CGPoint(x: 40.99, y: -0.5), controlPoint2: CGPoint(x: 51.26, y: 3.86))
        path.addCurve(to: CGPoint(x: 75.69, y: 41.92), controlPoint1: CGPoint(x: 75.27, y: 19.27), controlPoint2: CGPoint(x: 75.69, y: 41.92))
        path.addCurve(to: CGPoint(x: 65.18, y: 47.12), controlPoint1: CGPoint(x: 75.69, y: 41.92), controlPoint2: CGPoint(x: 71.42, y: 45.41))
        path.addCurve(to: CGPoint(x: 33.43, y: 51.09), controlPoint1: CGPoint(x: 58.95, y: 48.82), controlPoint2: CGPoint(x: 47.5, y: 51.52))
        path.addCurve(to: CGPoint(x: 14.62, y: 41.09), controlPoint1: CGPoint(x: 19.36, y: 50.66), controlPoint2: CGPoint(x: 22.56, y: 47.33))
        path.addCurve(to: CGPoint(x: 1.8, y: 14.69), controlPoint1: CGPoint(x: -1.38, y: 35.59), controlPoint2: CGPoint(x: -1.7, y: 21.69))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 85.12, y: 94.1))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.5, y: 0.34))
        path2.addCurve(to: CGPoint(x: 2.98, y: 0.24), controlPoint1: CGPoint(x: 0.5, y: 0.34), controlPoint2: CGPoint(x: 2.27, y: 0.28))
        path2.addCurve(to: CGPoint(x: 5.14, y: 0), controlPoint1: CGPoint(x: 3.69, y: 0.19), controlPoint2: CGPoint(x: 5.14, y: 0))
        path2.addCurve(to: CGPoint(x: 4.55, y: 10.34), controlPoint1: CGPoint(x: 5.14, y: 0), controlPoint2: CGPoint(x: 6.4, y: 4.64))
        path2.addCurve(to: CGPoint(x: 8.32, y: 95.46), controlPoint1: CGPoint(x: 5.32, y: 26.69), controlPoint2: CGPoint(x: 7.94, y: 62.26))
        path2.addCurve(to: CGPoint(x: 8.46, y: 195.39), controlPoint1: CGPoint(x: 8.82, y: 139.36), controlPoint2: CGPoint(x: 8.46, y: 195.39))
        path2.addCurve(to: CGPoint(x: 6.65, y: 195.39), controlPoint1: CGPoint(x: 8.46, y: 195.39), controlPoint2: CGPoint(x: 7.15, y: 195.39))
        path2.addCurve(to: CGPoint(x: 4.82, y: 195.36), controlPoint1: CGPoint(x: 6.15, y: 195.39), controlPoint2: CGPoint(x: 4.82, y: 195.36))
        path2.addCurve(to: CGPoint(x: 4.34, y: 96.67), controlPoint1: CGPoint(x: 4.82, y: 195.36), controlPoint2: CGPoint(x: 4.34, y: 135.59))
        path2.addCurve(to: CGPoint(x: 0, y: 10.34), controlPoint1: CGPoint(x: 4.34, y: 66.6), controlPoint2: CGPoint(x: 1.04, y: 27.48))
        path2.addCurve(to: CGPoint(x: 0.5, y: 0.34), controlPoint1: CGPoint(x: 1.7, y: 5.37), controlPoint2: CGPoint(x: 0.5, y: 0.34))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 129.47, y: 129.27))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 0, y: 10.93))
        path3.addCurve(to: CGPoint(x: 13.3, y: 0.31), controlPoint1: CGPoint(x: 0, y: 6.93), controlPoint2: CGPoint(x: 3.3, y: 1.56))
        path3.addCurve(to: CGPoint(x: 33.8, y: 3.81), controlPoint1: CGPoint(x: 23.29, y: -0.94), controlPoint2: CGPoint(x: 29.8, y: 1.81))
        path3.addCurve(to: CGPoint(x: 44.8, y: 16.31), controlPoint1: CGPoint(x: 37.8, y: 5.81), controlPoint2: CGPoint(x: 42.86, y: 10.13))
        path3.addCurve(to: CGPoint(x: 32.62, y: 28.99), controlPoint1: CGPoint(x: 46.73, y: 22.5), controlPoint2: CGPoint(x: 43.34, y: 28.36))
        path3.addCurve(to: CGPoint(x: 7.62, y: 23.19), controlPoint1: CGPoint(x: 21.91, y: 29.62), controlPoint2: CGPoint(x: 13.14, y: 26.91))
        path3.addCurve(to: CGPoint(x: 0, y: 10.93), controlPoint1: CGPoint(x: 2.09, y: 19.47), controlPoint2: CGPoint(x: 0, y: 14.93))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.bold, CGPoint(x: 99.55, y: 100.54))
        
        let combinedShape = UIBezierPath()
        combinedShape.move(to: CGPoint(x: 2.09, y: 0))
        combinedShape.addLine(to: CGPoint(x: 19.25, y: 12.54))
        combinedShape.addLine(to: CGPoint(x: 21.25, y: 31.9))
        combinedShape.addCurve(to: CGPoint(x: 14.83, y: 33.16), controlPoint1: CGPoint(x: 19.51, y: 32.57), controlPoint2: CGPoint(x: 17.38, y: 33.01))
        combinedShape.addCurve(to: CGPoint(x: 0, y: 31.79), controlPoint1: CGPoint(x: 9.31, y: 33.49), controlPoint2: CGPoint(x: 4.31, y: 32.92))
        combinedShape.addLine(to: CGPoint(x: 2.09, y: 0))
        combinedShape.close()
        let combinedShapeLayer = createLayer(combinedShape, skinColor, CGPoint(x: 117.35, y: 96.36))
        
        let combinedShape2 = UIBezierPath()
        combinedShape2.move(to: CGPoint(x: 0.62, y: 0))
        combinedShape2.addLine(to: CGPoint(x: 17.78, y: 12.54))
        combinedShape2.addLine(to: CGPoint(x: 18.91, y: 23.43))
        combinedShape2.addCurve(to: CGPoint(x: 13.64, y: 20.29), controlPoint1: CGPoint(x: 17.25, y: 22.55), controlPoint2: CGPoint(x: 15.49, y: 21.5))
        combinedShape2.addCurve(to: CGPoint(x: 0, y: 9.39), controlPoint1: CGPoint(x: 8.11, y: 16.65), controlPoint2: CGPoint(x: 3.6, y: 13.02))
        combinedShape2.addLine(to: CGPoint(x: 0.62, y: 0))
        combinedShape2.close()
        let combinedShape2Layer = createLayer(combinedShape2, Color.shadow.light, CGPoint(x: 118.81, y: 96.36))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 3.37, y: 12.26))
        path4.addCurve(to: CGPoint(x: 47.92, y: 11.05), controlPoint1: CGPoint(x: 9.98, y: -2.4), controlPoint2: CGPoint(x: 37.99, y: -5.24))
        path4.addCurve(to: CGPoint(x: 20.79, y: 63.08), controlPoint1: CGPoint(x: 60.07, y: 30.98), controlPoint2: CGPoint(x: 60.07, y: 97.56))
        path4.addCurve(to: CGPoint(x: 3.37, y: 12.26), controlPoint1: CGPoint(x: -1.43, y: 43.57), controlPoint2: CGPoint(x: -3.25, y: 26.92))
        path4.close()
        let path4Layer = createLayer(path4, skinColor, CGPoint(x: 107.89, y: 47.9))
        
        let jack = UIView()
        jack.layer.addSublayers(path0Layer, path01Layer, pathLayer, path2Layer, path3Layer, combinedShapeLayer, combinedShape2Layer, path4Layer)
        return jack
    }
    
}
