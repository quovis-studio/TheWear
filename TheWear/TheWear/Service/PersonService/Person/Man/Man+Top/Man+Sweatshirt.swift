/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSweatshirt(_ color: UIColor, _ rain: Bool) -> UIView {
        let path = UIBezierPath()
        let path1 = UIBezierPath()
        
        if rain {
            path.move(to: CGPoint(x: 34.44, y: 24.6))
            path.addCurve(to: CGPoint(x: 76.93, y: 1.54), controlPoint1: CGPoint(x: 47.45, y: 3.9), controlPoint2: CGPoint(x: 76.16, y: -0.43))
            path.addCurve(to: CGPoint(x: 94.87, y: 13.69), controlPoint1: CGPoint(x: 77.7, y: 3.51), controlPoint2: CGPoint(x: 81.59, y: 14.46))
            path.addCurve(to: CGPoint(x: 110.6, y: 0.59), controlPoint1: CGPoint(x: 108.14, y: 12.92), controlPoint2: CGPoint(x: 110.12, y: 2.74))
            path.addCurve(to: CGPoint(x: 147.7, y: 18.21), controlPoint1: CGPoint(x: 111.07, y: -1.56), controlPoint2: CGPoint(x: 134.02, y: 1.69))
            path.addCurve(to: CGPoint(x: 156.43, y: 36.38), controlPoint1: CGPoint(x: 151.61, y: 22.93), controlPoint2: CGPoint(x: 153.89, y: 28.77))
            path.addCurve(to: CGPoint(x: 161.78, y: 43.42), controlPoint1: CGPoint(x: 154.29, y: 39.79), controlPoint2: CGPoint(x: 158.23, y: 43.42))
            path.addCurve(to: CGPoint(x: 173.63, y: 47.79), controlPoint1: CGPoint(x: 165.33, y: 43.42), controlPoint2: CGPoint(x: 170.3, y: 41.45))
            path.addCurve(to: CGPoint(x: 161.55, y: 105.14), controlPoint1: CGPoint(x: 176.97, y: 54.12), controlPoint2: CGPoint(x: 174.45, y: 106.15))
            path.addCurve(to: CGPoint(x: 138.82, y: 84.52), controlPoint1: CGPoint(x: 146.18, y: 103.94), controlPoint2: CGPoint(x: 140.74, y: 92.1))
            path.addCurve(to: CGPoint(x: 142.38, y: 114.55), controlPoint1: CGPoint(x: 140.04, y: 92.29), controlPoint2: CGPoint(x: 141.95, y: 105.56))
            path.addCurve(to: CGPoint(x: 143.57, y: 182.77), controlPoint1: CGPoint(x: 143.02, y: 127.96), controlPoint2: CGPoint(x: 147.05, y: 181.22))
            path.addCurve(to: CGPoint(x: 99.24, y: 188.2), controlPoint1: CGPoint(x: 140.09, y: 184.32), controlPoint2: CGPoint(x: 122.63, y: 188.47))
            path.addCurve(to: CGPoint(x: 48.97, y: 182.17), controlPoint1: CGPoint(x: 74.11, y: 187.91), controlPoint2: CGPoint(x: 52.24, y: 184.53))
            path.addCurve(to: CGPoint(x: 48, y: 116.02), controlPoint1: CGPoint(x: 45.69, y: 179.8), controlPoint2: CGPoint(x: 47.42, y: 132.72))
            path.addCurve(to: CGPoint(x: 50.51, y: 80.95), controlPoint1: CGPoint(x: 48.57, y: 99.32), controlPoint2: CGPoint(x: 50.51, y: 80.95))
            path.addCurve(to: CGPoint(x: 41.51, y: 118.1), controlPoint1: CGPoint(x: 50.51, y: 80.95), controlPoint2: CGPoint(x: 44.39, y: 108.44))
            path.addCurve(to: CGPoint(x: 20.28, y: 168.69), controlPoint1: CGPoint(x: 38.63, y: 127.75), controlPoint2: CGPoint(x: 27.74, y: 167.4))
            path.addCurve(to: CGPoint(x: 0.98, y: 162.57), controlPoint1: CGPoint(x: 12.82, y: 169.97), controlPoint2: CGPoint(x: 7.41, y: 169.65))
            path.addCurve(to: CGPoint(x: 34.44, y: 24.6), controlPoint1: CGPoint(x: -5.45, y: 155.5), controlPoint2: CGPoint(x: 21.44, y: 45.3))
            path.close()
            
            path1.move(to: CGPoint(x: 1.8, y: 16.85))
            path1.addCurve(to: CGPoint(x: 0, y: 33.01), controlPoint1: CGPoint(x: -0.04, y: 25.76), controlPoint2: CGPoint(x: 0, y: 33.01))
            path1.addCurve(to: CGPoint(x: 5.37, y: 14.02), controlPoint1: CGPoint(x: 0, y: 33.01), controlPoint2: CGPoint(x: 2.25, y: 16.87))
            path1.addCurve(to: CGPoint(x: 9.48, y: 3.42), controlPoint1: CGPoint(x: 6.58, y: 8.89), controlPoint2: CGPoint(x: 7.72, y: 4.8))
            path1.addCurve(to: CGPoint(x: 6.6, y: 0), controlPoint1: CGPoint(x: 8.73, y: 1.11), controlPoint2: CGPoint(x: 6.6, y: 0))
            path1.addCurve(to: CGPoint(x: 1.8, y: 16.85), controlPoint1: CGPoint(x: 6.6, y: 0), controlPoint2: CGPoint(x: 3.64, y: 7.94))
            path1.close()
        } else {
            path.move(to: CGPoint(x: 76.93, y: 1.38))
            path.addCurve(to: CGPoint(x: 34.44, y: 24.44), controlPoint1: CGPoint(x: 76.16, y: -0.59), controlPoint2: CGPoint(x: 47.45, y: 3.75))
            path.addCurve(to: CGPoint(x: 0.98, y: 162.42), controlPoint1: CGPoint(x: 21.44, y: 45.14), controlPoint2: CGPoint(x: -5.45, y: 155.35))
            path.addCurve(to: CGPoint(x: 20.28, y: 168.54), controlPoint1: CGPoint(x: 7.41, y: 169.49), controlPoint2: CGPoint(x: 12.82, y: 169.82))
            path.addCurve(to: CGPoint(x: 41.51, y: 117.94), controlPoint1: CGPoint(x: 27.74, y: 167.25), controlPoint2: CGPoint(x: 38.63, y: 127.6))
            path.addCurve(to: CGPoint(x: 50.51, y: 80.8), controlPoint1: CGPoint(x: 44.39, y: 108.29), controlPoint2: CGPoint(x: 50.51, y: 80.8))
            path.addCurve(to: CGPoint(x: 48, y: 115.87), controlPoint1: CGPoint(x: 50.51, y: 80.8), controlPoint2: CGPoint(x: 48.57, y: 99.17))
            path.addCurve(to: CGPoint(x: 48.97, y: 182.02), controlPoint1: CGPoint(x: 47.42, y: 132.56), controlPoint2: CGPoint(x: 45.69, y: 179.65))
            path.addCurve(to: CGPoint(x: 99.24, y: 188.04), controlPoint1: CGPoint(x: 52.24, y: 184.38), controlPoint2: CGPoint(x: 74.11, y: 187.75))
            path.addCurve(to: CGPoint(x: 143.57, y: 182.62), controlPoint1: CGPoint(x: 122.63, y: 188.31), controlPoint2: CGPoint(x: 140.09, y: 184.17))
            path.addCurve(to: CGPoint(x: 142.38, y: 114.39), controlPoint1: CGPoint(x: 147.05, y: 181.07), controlPoint2: CGPoint(x: 143.02, y: 127.81))
            path.addCurve(to: CGPoint(x: 139.09, y: 78.63), controlPoint1: CGPoint(x: 141.74, y: 100.98), controlPoint2: CGPoint(x: 139.09, y: 78.63))
            path.addCurve(to: CGPoint(x: 166.05, y: 162.04), controlPoint1: CGPoint(x: 139.09, y: 78.63), controlPoint2: CGPoint(x: 157.2, y: 160.86))
            path.addCurve(to: CGPoint(x: 185.04, y: 156.37), controlPoint1: CGPoint(x: 174.89, y: 163.21), controlPoint2: CGPoint(x: 178.88, y: 162.47))
            path.addCurve(to: CGPoint(x: 150.24, y: 20.44), controlPoint1: CGPoint(x: 191.2, y: 150.27), controlPoint2: CGPoint(x: 163.92, y: 36.96))
            path.addCurve(to: CGPoint(x: 110.6, y: 0.44), controlPoint1: CGPoint(x: 136.56, y: 3.92), controlPoint2: CGPoint(x: 111.07, y: -1.71))
            path.addCurve(to: CGPoint(x: 94.87, y: 13.54), controlPoint1: CGPoint(x: 110.12, y: 2.59), controlPoint2: CGPoint(x: 108.14, y: 12.77))
            path.addCurve(to: CGPoint(x: 76.93, y: 1.38), controlPoint1: CGPoint(x: 81.59, y: 14.31), controlPoint2: CGPoint(x: 77.7, y: 3.35))
            path.close()
        }
        let pathLayer = createLayer(path, color, CGPoint(x: 34.18, y: rain ? 124.83 : 124.98))
        let path1Layer = createLayer(path1, Color.shadow.medium, CGPoint(x: 180.95, y: 156.42))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 16.28, y: 16.19))
        path3.addCurve(to: CGPoint(x: 0.05, y: 11.21), controlPoint1: CGPoint(x: 14.86, y: 16.69), controlPoint2: CGPoint(x: 0.44, y: 12.91))
        path3.addCurve(to: CGPoint(x: 1.79, y: 0), controlPoint1: CGPoint(x: -0.34, y: 9.51), controlPoint2: CGPoint(x: 1.79, y: 0))
        path3.addCurve(to: CGPoint(x: 10.92, y: 4.87), controlPoint1: CGPoint(x: 1.79, y: 0), controlPoint2: CGPoint(x: 6.39, y: 3.48))
        path3.addCurve(to: CGPoint(x: 21.39, y: 6.12), controlPoint1: CGPoint(x: 15.44, y: 6.26), controlPoint2: CGPoint(x: 21.39, y: 6.12))
        path3.addCurve(to: CGPoint(x: 16.28, y: 16.19), controlPoint1: CGPoint(x: 21.39, y: 6.12), controlPoint2: CGPoint(x: 17.7, y: 15.68))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 33.35, y: 287.34))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 16.28, y: 16.19))
        path4.addCurve(to: CGPoint(x: 0.05, y: 11.21), controlPoint1: CGPoint(x: 14.86, y: 16.69), controlPoint2: CGPoint(x: 0.44, y: 12.91))
        path4.addCurve(to: CGPoint(x: 1.79, y: 0), controlPoint1: CGPoint(x: -0.34, y: 9.51), controlPoint2: CGPoint(x: 1.79, y: 0))
        path4.addCurve(to: CGPoint(x: 10.92, y: 4.87), controlPoint1: CGPoint(x: 1.79, y: 0), controlPoint2: CGPoint(x: 6.39, y: 3.48))
        path4.addCurve(to: CGPoint(x: 21.39, y: 6.12), controlPoint1: CGPoint(x: 15.44, y: 6.26), controlPoint2: CGPoint(x: 21.39, y: 6.12))
        path4.addCurve(to: CGPoint(x: 16.28, y: 16.19), controlPoint1: CGPoint(x: 21.39, y: 6.12), controlPoint2: CGPoint(x: 17.7, y: 15.68))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.bold, CGPoint(x: 33.35, y: 287.34))
        
        let path5 = UIBezierPath()
        let path6 = UIBezierPath()
        if rain {
            path5.move(to: CGPoint(x: 19.88, y: 2.26))
            path5.addCurve(to: CGPoint(x: 21.5, y: 12.21), controlPoint1: CGPoint(x: 22.13, y: 0.52), controlPoint2: CGPoint(x: 21.5, y: 12.21))
            path5.addCurve(to: CGPoint(x: 10.97, y: 13.11), controlPoint1: CGPoint(x: 21.5, y: 12.21), controlPoint2: CGPoint(x: 16.52, y: 13.91))
            path5.addCurve(to: CGPoint(x: 0, y: 10.02), controlPoint1: CGPoint(x: 5.42, y: 12.31), controlPoint2: CGPoint(x: 0, y: 10.02))
            path5.addCurve(to: CGPoint(x: 4.28, y: 0.29), controlPoint1: CGPoint(x: 0, y: 10.02), controlPoint2: CGPoint(x: 2.66, y: -1.99))
            path5.addCurve(to: CGPoint(x: 19.88, y: 2.26), controlPoint1: CGPoint(x: 5.91, y: 2.57), controlPoint2: CGPoint(x: 17.63, y: 4.01))
            path5.close()
    
            path6.move(to: CGPoint(x: 19.88, y: 2.26))
            path6.addCurve(to: CGPoint(x: 21.5, y: 12.21), controlPoint1: CGPoint(x: 22.13, y: 0.52), controlPoint2: CGPoint(x: 21.5, y: 12.21))
            path6.addCurve(to: CGPoint(x: 10.97, y: 13.11), controlPoint1: CGPoint(x: 21.5, y: 12.21), controlPoint2: CGPoint(x: 16.52, y: 13.91))
            path6.addCurve(to: CGPoint(x: 0, y: 10.02), controlPoint1: CGPoint(x: 5.42, y: 12.31), controlPoint2: CGPoint(x: 0, y: 10.02))
            path6.addCurve(to: CGPoint(x: 4.28, y: 0.29), controlPoint1: CGPoint(x: 0, y: 10.02), controlPoint2: CGPoint(x: 2.66, y: -1.99))
            path6.addCurve(to: CGPoint(x: 19.88, y: 2.26), controlPoint1: CGPoint(x: 5.91, y: 2.57), controlPoint2: CGPoint(x: 17.63, y: 4.01))
            path6.close()
        } else {
            path5.move(to: CGPoint(x: 4.34, y: 15.19))
            path5.addCurve(to: CGPoint(x: 0, y: 5.77), controlPoint1: CGPoint(x: 2.82, y: 14.02), controlPoint2: CGPoint(x: 0, y: 5.77))
            path5.addCurve(to: CGPoint(x: 10.71, y: 4.09), controlPoint1: CGPoint(x: 0, y: 5.77), controlPoint2: CGPoint(x: 6.31, y: 5.53))
            path5.addCurve(to: CGPoint(x: 19.23, y: 0), controlPoint1: CGPoint(x: 15.11, y: 2.64), controlPoint2: CGPoint(x: 19.23, y: 0))
            path5.addCurve(to: CGPoint(x: 20.43, y: 10.52), controlPoint1: CGPoint(x: 19.23, y: 0), controlPoint2: CGPoint(x: 20.84, y: 8.69))
            path5.addCurve(to: CGPoint(x: 4.34, y: 15.19), controlPoint1: CGPoint(x: 20.03, y: 12.34), controlPoint2: CGPoint(x: 5.85, y: 16.37))
            path5.close()
            
            path6.move(to: CGPoint(x: 4.34, y: 15.19))
            path6.addCurve(to: CGPoint(x: 0, y: 5.77), controlPoint1: CGPoint(x: 2.82, y: 14.02), controlPoint2: CGPoint(x: 0, y: 5.77))
            path6.addCurve(to: CGPoint(x: 10.71, y: 4.09), controlPoint1: CGPoint(x: 0, y: 5.77), controlPoint2: CGPoint(x: 6.31, y: 5.53))
            path6.addCurve(to: CGPoint(x: 19.23, y: 0), controlPoint1: CGPoint(x: 15.11, y: 2.64), controlPoint2: CGPoint(x: 19.23, y: 0))
            path6.addCurve(to: CGPoint(x: 20.43, y: 10.52), controlPoint1: CGPoint(x: 19.23, y: 0), controlPoint2: CGPoint(x: 20.84, y: 8.69))
            path6.addCurve(to: CGPoint(x: 4.34, y: 15.19), controlPoint1: CGPoint(x: 20.03, y: 12.34), controlPoint2: CGPoint(x: 5.85, y: 16.37))
            path6.close()
        }
        let path5Layer = createLayer(path5, color, CGPoint(x: rain ? 186.33 : 200.11, y: rain ? 160.42 : 281.22))
        let path6Layer = createLayer(path6, Color.shadow.bold, CGPoint(x: rain ? 186.33 : 200.11, y: rain ? 160.42 : 281.22))
        
        // Bottom
        let path7 = UIBezierPath()
        path7.move(to: CGPoint(x: 94.86, y: 0.48))
        path7.addCurve(to: CGPoint(x: 93.64, y: 13.05), controlPoint1: CGPoint(x: 94.86, y: 0.48), controlPoint2: CGPoint(x: 94.76, y: 9.91))
        path7.addCurve(to: CGPoint(x: 2.48, y: 12.39), controlPoint1: CGPoint(x: 92.52, y: 16.19), controlPoint2: CGPoint(x: 3.75, y: 14.53))
        path7.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 1.2, y: 10.26), controlPoint2: CGPoint.zero)
        path7.addCurve(to: CGPoint(x: 50.48, y: 3.13), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 26.3, y: 3.13))
        path7.addCurve(to: CGPoint(x: 94.86, y: 0.48), controlPoint1: CGPoint(x: 74.67, y: 3.13), controlPoint2: CGPoint(x: 94.86, y: 0.48))
        path7.close()
        let path7Layer = createLayer(path7, color, CGPoint(x: 83.12, y: 306.94))
        
        let path8 = UIBezierPath()
        path8.move(to: CGPoint(x: 94.86, y: 0.48))
        path8.addCurve(to: CGPoint(x: 93.64, y: 13.05), controlPoint1: CGPoint(x: 94.86, y: 0.48), controlPoint2: CGPoint(x: 94.76, y: 9.91))
        path8.addCurve(to: CGPoint(x: 2.48, y: 12.39), controlPoint1: CGPoint(x: 92.52, y: 16.19), controlPoint2: CGPoint(x: 3.75, y: 14.53))
        path8.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 1.2, y: 10.26), controlPoint2: CGPoint.zero)
        path8.addCurve(to: CGPoint(x: 50.48, y: 3.13), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 26.3, y: 3.13))
        path8.addCurve(to: CGPoint(x: 94.86, y: 0.48), controlPoint1: CGPoint(x: 74.67, y: 3.13), controlPoint2: CGPoint(x: 94.86, y: 0.48))
        path8.close()
        let path8Layer = createLayer(path8, Color.shadow.bold, CGPoint(x: 83.12, y: 306.94))
        
        let sweat = UIView()
        sweat.layer.addSublayers(pathLayer, path1Layer, path3Layer, path4Layer, path5Layer, path6Layer, path7Layer, path8Layer)
        return sweat
    }
    
}
