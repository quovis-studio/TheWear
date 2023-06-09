/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawDownJacketWithoutCape(_ color: UIColor, _ rain: Bool) -> UIView {
        let path0 = UIBezierPath()
        let path01 = UIBezierPath()
        if rain {
            path0.move(to: CGPoint(x: 41.09, y: 17.41))
            path0.addCurve(to: CGPoint(x: 80.03, y: 1.53), controlPoint1: CGPoint(x: 44.49, y: 6.55), controlPoint2: CGPoint(x: 79.26, y: -0.44))
            path0.addCurve(to: CGPoint(x: 97.97, y: 13.69), controlPoint1: CGPoint(x: 80.8, y: 3.5), controlPoint2: CGPoint(x: 84.69, y: 14.46))
            path0.addCurve(to: CGPoint(x: 113.7, y: 0.59), controlPoint1: CGPoint(x: 111.24, y: 12.92), controlPoint2: CGPoint(x: 113.22, y: 2.74))
            path0.addCurve(to: CGPoint(x: 141.66, y: 6.85), controlPoint1: CGPoint(x: 114.01, y: -0.84), controlPoint2: CGPoint(x: 136.08, y: 0.01))
            path0.addCurve(to: CGPoint(x: 159.23, y: 27.44), controlPoint1: CGPoint(x: 150.48, y: 7.48), controlPoint2: CGPoint(x: 157.28, y: 19.18))
            path0.addCurve(to: CGPoint(x: 177.64, y: 32.23), controlPoint1: CGPoint(x: 166.06, y: 31.22), controlPoint2: CGPoint(x: 179.31, y: 19.41))
            path0.addCurve(to: CGPoint(x: 180.39, y: 69.92), controlPoint1: CGPoint(x: 180.77, y: 39.75), controlPoint2: CGPoint(x: 184.26, y: 65.78))
            path0.addCurve(to: CGPoint(x: 166.21, y: 106.5), controlPoint1: CGPoint(x: 183.64, y: 76.04), controlPoint2: CGPoint(x: 178.43, y: 106.7))
            path0.addCurve(to: CGPoint(x: 148.35, y: 100.01), controlPoint1: CGPoint(x: 157.62, y: 106.37), controlPoint2: CGPoint(x: 152.01, y: 103.66))
            path0.addCurve(to: CGPoint(x: 149.92, y: 139.68), controlPoint1: CGPoint(x: 150.41, y: 110.05), controlPoint2: CGPoint(x: 153.01, y: 130.79))
            path0.addCurve(to: CGPoint(x: 147.11, y: 199.21), controlPoint1: CGPoint(x: 153.82, y: 148.96), controlPoint2: CGPoint(x: 151.76, y: 195.22))
            path0.addCurve(to: CGPoint(x: 104.77, y: 208.35), controlPoint1: CGPoint(x: 139.03, y: 206.14), controlPoint2: CGPoint(x: 124.5, y: 208.35))
            path0.addCurve(to: CGPoint(x: 49.37, y: 199.21), controlPoint1: CGPoint(x: 85.04, y: 208.35), controlPoint2: CGPoint(x: 56.76, y: 207.2))
            path0.addCurve(to: CGPoint(x: 45.72, y: 147.61), controlPoint1: CGPoint(x: 44.6, y: 194.05), controlPoint2: CGPoint(x: 42.33, y: 155.63))
            path0.addCurve(to: CGPoint(x: 46.26, y: 111.95), controlPoint1: CGPoint(x: 42.76, y: 141.17), controlPoint2: CGPoint(x: 45.17, y: 121.34))
            path0.addCurve(to: CGPoint(x: 45.41, y: 115.01), controlPoint1: CGPoint(x: 45.97, y: 113.06), controlPoint2: CGPoint(x: 45.68, y: 114.08))
            path0.addCurve(to: CGPoint(x: 36.56, y: 135.97), controlPoint1: CGPoint(x: 44.39, y: 118.4), controlPoint2: CGPoint(x: 40.33, y: 132.74))
            path0.addCurve(to: CGPoint(x: 22.11, y: 178.59), controlPoint1: CGPoint(x: 38.42, y: 141.94), controlPoint2: CGPoint(x: 27.68, y: 178.19))
            path0.addCurve(to: CGPoint(x: 1.19, y: 171.33), controlPoint1: CGPoint(x: 16.54, y: 178.99), controlPoint2: CGPoint(x: 4.11, y: 174.99))
            path0.addCurve(to: CGPoint(x: 5.02, y: 129.19), controlPoint1: CGPoint(x: -1.73, y: 167.67), controlPoint2: CGPoint(x: 1.19, y: 134.47))
            path0.addCurve(to: CGPoint(x: 10.15, y: 86.15), controlPoint1: CGPoint(x: 3.36, y: 120.85), controlPoint2: CGPoint(x: 6.6, y: 90.27))
            path0.addCurve(to: CGPoint(x: 20.24, y: 46.84), controlPoint1: CGPoint(x: 9.04, y: 77.55), controlPoint2: CGPoint(x: 15.89, y: 50.48))
            path0.addCurve(to: CGPoint(x: 41.09, y: 17.41), controlPoint1: CGPoint(x: 19.77, y: 39.57), controlPoint2: CGPoint(x: 34.03, y: 19))
            path0.close()
            
            path01.move(to: CGPoint(x: 1.03, y: 15.29))
            path01.addCurve(to: CGPoint(x: 0.16, y: 33.1), controlPoint1: CGPoint(x: -0.56, y: 26.74), controlPoint2: CGPoint(x: 0.16, y: 33.1))
            path01.addCurve(to: CGPoint(x: 7.2, y: 4.14), controlPoint1: CGPoint(x: 0.16, y: 33.1), controlPoint2: CGPoint(x: 1.32, y: 13.13))
            path01.addCurve(to: CGPoint(x: 4.83, y: 0), controlPoint1: CGPoint(x: 6.01, y: 2), controlPoint2: CGPoint(x: 4.83, y: 0))
            path01.addCurve(to: CGPoint(x: 1.03, y: 15.29), controlPoint1: CGPoint(x: 4.83, y: 0), controlPoint2: CGPoint(x: 2.61, y: 3.83))
            path01.close()
            
        } else {
            path0.move(to: CGPoint(x: 41.09, y: 17.41))
            path0.addCurve(to: CGPoint(x: 80.03, y: 1.53), controlPoint1: CGPoint(x: 44.49, y: 6.55), controlPoint2: CGPoint(x: 79.26, y: -0.44))
            path0.addCurve(to: CGPoint(x: 97.97, y: 13.69), controlPoint1: CGPoint(x: 80.8, y: 3.5), controlPoint2: CGPoint(x: 84.69, y: 14.46))
            path0.addCurve(to: CGPoint(x: 113.7, y: 0.59), controlPoint1: CGPoint(x: 111.24, y: 12.92), controlPoint2: CGPoint(x: 113.22, y: 2.74))
            path0.addCurve(to: CGPoint(x: 141.66, y: 6.85), controlPoint1: CGPoint(x: 114.01, y: -0.84), controlPoint2: CGPoint(x: 136.08, y: 0.01))
            path0.addCurve(to: CGPoint(x: 167.83, y: 30.93), controlPoint1: CGPoint(x: 150.48, y: 7.48), controlPoint2: CGPoint(x: 165.88, y: 22.68))
            path0.addCurve(to: CGPoint(x: 181.64, y: 75.26), controlPoint1: CGPoint(x: 174.66, y: 34.72), controlPoint2: CGPoint(x: 183.32, y: 62.44))
            path0.addCurve(to: CGPoint(x: 188.61, y: 122.28), controlPoint1: CGPoint(x: 187.46, y: 81.88), controlPoint2: CGPoint(x: 191.09, y: 109.35))
            path0.addCurve(to: CGPoint(x: 193.29, y: 163.17), controlPoint1: CGPoint(x: 194.05, y: 129.06), controlPoint2: CGPoint(x: 194.38, y: 161.38))
            path0.addCurve(to: CGPoint(x: 170.28, y: 171.09), controlPoint1: CGPoint(x: 190.42, y: 167.88), controlPoint2: CGPoint(x: 180.38, y: 172.92))
            path0.addCurve(to: CGPoint(x: 154.46, y: 129.06), controlPoint1: CGPoint(x: 166.47, y: 170.4), controlPoint2: CGPoint(x: 152.46, y: 136.44))
            path0.addCurve(to: CGPoint(x: 150.67, y: 120.1), controlPoint1: CGPoint(x: 153.32, y: 127.85), controlPoint2: CGPoint(x: 152.01, y: 124.51))
            path0.addCurve(to: CGPoint(x: 149.92, y: 139.68), controlPoint1: CGPoint(x: 151.52, y: 126.46), controlPoint2: CGPoint(x: 151.96, y: 133.8))
            path0.addCurve(to: CGPoint(x: 147.11, y: 199.21), controlPoint1: CGPoint(x: 153.82, y: 148.96), controlPoint2: CGPoint(x: 151.76, y: 195.22))
            path0.addCurve(to: CGPoint(x: 104.77, y: 208.35), controlPoint1: CGPoint(x: 139.03, y: 206.14), controlPoint2: CGPoint(x: 124.5, y: 208.35))
            path0.addCurve(to: CGPoint(x: 49.37, y: 199.21), controlPoint1: CGPoint(x: 85.04, y: 208.35), controlPoint2: CGPoint(x: 56.76, y: 207.2))
            path0.addCurve(to: CGPoint(x: 45.72, y: 147.61), controlPoint1: CGPoint(x: 44.6, y: 194.05), controlPoint2: CGPoint(x: 42.33, y: 155.63))
            path0.addCurve(to: CGPoint(x: 46.26, y: 111.95), controlPoint1: CGPoint(x: 42.76, y: 141.17), controlPoint2: CGPoint(x: 45.17, y: 121.34))
            path0.addCurve(to: CGPoint(x: 45.41, y: 115.01), controlPoint1: CGPoint(x: 45.97, y: 113.06), controlPoint2: CGPoint(x: 45.68, y: 114.08))
            path0.addCurve(to: CGPoint(x: 36.56, y: 135.97), controlPoint1: CGPoint(x: 44.39, y: 118.4), controlPoint2: CGPoint(x: 40.33, y: 132.74))
            path0.addCurve(to: CGPoint(x: 22.11, y: 178.59), controlPoint1: CGPoint(x: 38.42, y: 141.94), controlPoint2: CGPoint(x: 27.68, y: 178.19))
            path0.addCurve(to: CGPoint(x: 1.19, y: 171.33), controlPoint1: CGPoint(x: 16.54, y: 178.99), controlPoint2: CGPoint(x: 4.11, y: 174.99))
            path0.addCurve(to: CGPoint(x: 5.02, y: 129.19), controlPoint1: CGPoint(x: -1.73, y: 167.67), controlPoint2: CGPoint(x: 1.19, y: 134.47))
            path0.addCurve(to: CGPoint(x: 10.15, y: 86.15), controlPoint1: CGPoint(x: 3.36, y: 120.85), controlPoint2: CGPoint(x: 6.6, y: 90.27))
            path0.addCurve(to: CGPoint(x: 20.24, y: 46.84), controlPoint1: CGPoint(x: 9.04, y: 77.55), controlPoint2: CGPoint(x: 15.89, y: 50.48))
            path0.addCurve(to: CGPoint(x: 41.09, y: 17.41), controlPoint1: CGPoint(x: 19.77, y: 39.57), controlPoint2: CGPoint(x: 34.03, y: 19))
            path0.close()
        }
        let path0Layer = createLayer(path0, color, CGPoint(x: 31.08, y: 124.83))
        let path01Layer = createLayer(path01, Color.shadow.medium, CGPoint(x: 178.1, y: 153.05))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 37.68, y: 0.16))
        path.addCurve(to: CGPoint(x: 0.05, y: 17.74), controlPoint1: CGPoint(x: 23.8, y: -1.04), controlPoint2: CGPoint(x: -1.26, y: 4.32))
        path.addCurve(to: CGPoint(x: 20.32, y: 44.29), controlPoint1: CGPoint(x: 2.45, y: 42.45), controlPoint2: CGPoint(x: 20.32, y: 44.29))
        path.addCurve(to: CGPoint(x: 50.15, y: 42.96), controlPoint1: CGPoint(x: 34.39, y: 44.72), controlPoint2: CGPoint(x: 44.27, y: 45.1))
        path.addCurve(to: CGPoint(x: 63.37, y: 17.74), controlPoint1: CGPoint(x: 56.02, y: 40.83), controlPoint2: CGPoint(x: 63.37, y: 37.37))
        path.addCurve(to: CGPoint(x: 37.68, y: 0.16), controlPoint1: CGPoint(x: 63.37, y: 7.62), controlPoint2: CGPoint(x: 51.57, y: 1.37))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 96.46, y: 102.64))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.5, y: 0.34))
        path2.addCurve(to: CGPoint(x: 2.98, y: 0.24), controlPoint1: CGPoint(x: 0.5, y: 0.34), controlPoint2: CGPoint(x: 2.27, y: 0.28))
        path2.addCurve(to: CGPoint(x: 5.14, y: 0), controlPoint1: CGPoint(x: 3.69, y: 0.19), controlPoint2: CGPoint(x: 5.14, y: 0))
        path2.addCurve(to: CGPoint(x: 4.55, y: 10.34), controlPoint1: CGPoint(x: 5.14, y: 0), controlPoint2: CGPoint(x: 6.4, y: 4.64))
        path2.addCurve(to: CGPoint(x: 8.32, y: 95.46), controlPoint1: CGPoint(x: 5.32, y: 26.69), controlPoint2: CGPoint(x: 7.94, y: 62.26))
        path2.addCurve(to: CGPoint(x: 8.42, y: 203.9), controlPoint1: CGPoint(x: 8.82, y: 139.36), controlPoint2: CGPoint(x: 8.42, y: 203.9))
        path2.addCurve(to: CGPoint(x: 6.71, y: 203.9), controlPoint1: CGPoint(x: 8.42, y: 203.9), controlPoint2: CGPoint(x: 7.21, y: 203.9))
        path2.addCurve(to: CGPoint(x: 4.69, y: 203.9), controlPoint1: CGPoint(x: 6.21, y: 203.9), controlPoint2: CGPoint(x: 4.69, y: 203.9))
        path2.addCurve(to: CGPoint(x: 4.34, y: 96.67), controlPoint1: CGPoint(x: 4.69, y: 203.9), controlPoint2: CGPoint(x: 4.34, y: 135.59))
        path2.addCurve(to: CGPoint(x: 0, y: 10.34), controlPoint1: CGPoint(x: 4.34, y: 66.6), controlPoint2: CGPoint(x: 1.04, y: 27.48))
        path2.addCurve(to: CGPoint(x: 0.5, y: 0.34), controlPoint1: CGPoint(x: 1.7, y: 5.37), controlPoint2: CGPoint(x: 0.5, y: 0.34))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 129, y: 129.7))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 13.68, y: 0.72))
        path3.addCurve(to: CGPoint(x: 0, y: 9.15), controlPoint1: CGPoint(x: 5.48, y: 1.74), controlPoint2: CGPoint(x: -0.05, y: 4.99))
        path3.addCurve(to: CGPoint(x: 21.43, y: 18.99), controlPoint1: CGPoint(x: 0.05, y: 13.31), controlPoint2: CGPoint(x: 6, y: 19.43))
        path3.addCurve(to: CGPoint(x: 40.58, y: 8.64), controlPoint1: CGPoint(x: 36.85, y: 18.55), controlPoint2: CGPoint(x: 41.19, y: 13.77))
        path3.addCurve(to: CGPoint(x: 30.02, y: 0.5), controlPoint1: CGPoint(x: 39.97, y: 3.51), controlPoint2: CGPoint(x: 34.52, y: 1.1))
        path3.addCurve(to: CGPoint(x: 13.68, y: 0.72), controlPoint1: CGPoint(x: 25.52, y: -0.1), controlPoint2: CGPoint(x: 21.88, y: -0.3))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.bold, CGPoint(x: 108.11, y: 111.13))
        
        let combinedShape = UIBezierPath()
        combinedShape.move(to: CGPoint(x: 2.09, y: 0))
        combinedShape.addLine(to: CGPoint(x: 19.25, y: 12.54))
        combinedShape.addLine(to: CGPoint(x: 21.31, y: 32.41))
        combinedShape.addCurve(to: CGPoint(x: 12.44, y: 33.34), controlPoint1: CGPoint(x: 18.88, y: 32.91), controlPoint2: CGPoint(x: 15.95, y: 33.24))
        combinedShape.addCurve(to: CGPoint(x: 0, y: 31.89), controlPoint1: CGPoint(x: 7.28, y: 33.48), controlPoint2: CGPoint(x: 3.17, y: 32.89))
        combinedShape.addLine(to: CGPoint(x: 2.09, y: 0))
        combinedShape.close()
        let combinedShapeLayer = createLayer(combinedShape, skinColor, CGPoint(x: 117.1, y: 96.79))
        
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
        let path4Layer = createLayer(path4, skinColor, CGPoint(x: 107.65, y: 48.32))
        
        let down = UIView()
        down.layer.addSublayers(path0Layer, path01Layer, pathLayer, path2Layer, path3Layer, combinedShapeLayer, combinedShape2Layer, path4Layer)
        return down
    }
    
}
