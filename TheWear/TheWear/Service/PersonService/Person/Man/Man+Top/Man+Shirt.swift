/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawShirt(_ color: UIColor, _ rain: Bool) -> UIView {
        let path0 = UIBezierPath()
        let path01 = UIBezierPath()
        if rain {
            path0.move(to: CGPoint(x: 0.02, y: 169.81))
            path0.addCurve(to: CGPoint(x: 19.73, y: 72.66), controlPoint1: CGPoint(x: 0.57, y: 164.8), controlPoint2: CGPoint(x: 11.26, y: 114.6))
            path0.addCurve(to: CGPoint(x: 38.32, y: 18.78), controlPoint1: CGPoint(x: 25.89, y: 42.17), controlPoint2: CGPoint(x: 28.69, y: 31.7))
            path0.addCurve(to: CGPoint(x: 74.74, y: 1.95), controlPoint1: CGPoint(x: 47.96, y: 5.87), controlPoint2: CGPoint(x: 73.09, y: 1.93))
            path0.addCurve(to: CGPoint(x: 94.83, y: 13.93), controlPoint1: CGPoint(x: 76.38, y: 1.96), controlPoint2: CGPoint(x: 76.98, y: 13.93))
            path0.addCurve(to: CGPoint(x: 109.67, y: 0), controlPoint1: CGPoint(x: 112.67, y: 13.93), controlPoint2: CGPoint(x: 108.58, y: -0.01))
            path0.addCurve(to: CGPoint(x: 145.48, y: 15.88), controlPoint1: CGPoint(x: 110.76, y: 0.01), controlPoint2: CGPoint(x: 136.99, y: 2.9))
            path0.addCurve(to: CGPoint(x: 157.27, y: 33.67), controlPoint1: CGPoint(x: 151.16, y: 24.56), controlPoint2: CGPoint(x: 155.95, y: 30.2))
            path0.addCurve(to: CGPoint(x: 156.33, y: 37.34), controlPoint1: CGPoint(x: 156.74, y: 35.74), controlPoint2: CGPoint(x: 156.46, y: 36.89))
            path0.addCurve(to: CGPoint(x: 172.8, y: 39.26), controlPoint1: CGPoint(x: 161.87, y: 42.42), controlPoint2: CGPoint(x: 169.03, y: 41.43))
            path0.addCurve(to: CGPoint(x: 162.94, y: 103.82), controlPoint1: CGPoint(x: 176.57, y: 37.09), controlPoint2: CGPoint(x: 175.22, y: 103.82))
            path0.addCurve(to: CGPoint(x: 135.92, y: 68.99), controlPoint1: CGPoint(x: 136.27, y: 103.82), controlPoint2: CGPoint(x: 135.92, y: 68.99))
            path0.addCurve(to: CGPoint(x: 139.47, y: 119.92), controlPoint1: CGPoint(x: 135.92, y: 68.99), controlPoint2: CGPoint(x: 137.73, y: 80.1))
            path0.addCurve(to: CGPoint(x: 144.3, y: 201.25), controlPoint1: CGPoint(x: 141.21, y: 159.75), controlPoint2: CGPoint(x: 145.21, y: 196.1))
            path0.addCurve(to: CGPoint(x: 98.28, y: 204.41), controlPoint1: CGPoint(x: 143.85, y: 203.77), controlPoint2: CGPoint(x: 120.62, y: 204.67))
            path0.addCurve(to: CGPoint(x: 98.28, y: 202.81), controlPoint1: CGPoint(x: 98.28, y: 204.41), controlPoint2: CGPoint(x: 98.28, y: 204.1))
            path0.addCurve(to: CGPoint(x: 49.77, y: 197.75), controlPoint1: CGPoint(x: 72.05, y: 203.13), controlPoint2: CGPoint(x: 50.55, y: 198.54))
            path0.addCurve(to: CGPoint(x: 51.17, y: 126.43), controlPoint1: CGPoint(x: 48.1, y: 196.08), controlPoint2: CGPoint(x: 51.17, y: 151.43))
            path0.addCurve(to: CGPoint(x: 51.43, y: 75.53), controlPoint1: CGPoint(x: 51.17, y: 101.43), controlPoint2: CGPoint(x: 51.43, y: 75.53))
            path0.addCurve(to: CGPoint(x: 16.49, y: 176.77), controlPoint1: CGPoint(x: 51.43, y: 75.53), controlPoint2: CGPoint(x: 19.28, y: 172.31))
            path0.addCurve(to: CGPoint(x: 0.02, y: 169.81), controlPoint1: CGPoint(x: 13.7, y: 181.23), controlPoint2: CGPoint(x: -0.54, y: 174.83))
            path0.close()
            
            path01.move(to: CGPoint(x: 0, y: 31.2))
            path01.addCurve(to: CGPoint(x: 5.16, y: 4.38), controlPoint1: CGPoint(x: 0, y: 31.2), controlPoint2: CGPoint(x: 4.59, y: 5.16))
            path01.addCurve(to: CGPoint(x: 6.62, y: 4.96), controlPoint1: CGPoint(x: 5.73, y: 3.6), controlPoint2: CGPoint(x: 6.09, y: 4.52))
            path01.addCurve(to: CGPoint(x: 6.91, y: 3.81), controlPoint1: CGPoint(x: 6.7, y: 4.63), controlPoint2: CGPoint(x: 6.77, y: 4.38))
            path01.addCurve(to: CGPoint(x: 4.33, y: 0), controlPoint1: CGPoint(x: 5.49, y: 2.16), controlPoint2: CGPoint(x: 4.33, y: 0))
            path01.addCurve(to: CGPoint(x: 1.38, y: 15.56), controlPoint1: CGPoint(x: 4.33, y: 0), controlPoint2: CGPoint(x: 2.65, y: 7.3))
            path01.addCurve(to: CGPoint(x: 0, y: 31.2), controlPoint1: CGPoint(x: 0.11, y: 23.82), controlPoint2: CGPoint(x: 0, y: 31.2))
            path01.close()
        } else {
            path0.move(to: CGPoint(x: 0.02, y: 169.81))
            path0.addCurve(to: CGPoint(x: 19.73, y: 72.66), controlPoint1: CGPoint(x: 0.57, y: 164.8), controlPoint2: CGPoint(x: 11.26, y: 114.6))
            path0.addCurve(to: CGPoint(x: 38.32, y: 18.78), controlPoint1: CGPoint(x: 25.89, y: 42.17), controlPoint2: CGPoint(x: 28.69, y: 31.7))
            path0.addCurve(to: CGPoint(x: 74.74, y: 1.95), controlPoint1: CGPoint(x: 47.96, y: 5.87), controlPoint2: CGPoint(x: 73.09, y: 1.93))
            path0.addCurve(to: CGPoint(x: 94.83, y: 13.93), controlPoint1: CGPoint(x: 76.38, y: 1.96), controlPoint2: CGPoint(x: 76.98, y: 13.93))
            path0.addCurve(to: CGPoint(x: 109.67, y: 0), controlPoint1: CGPoint(x: 112.67, y: 13.93), controlPoint2: CGPoint(x: 108.58, y: -0.01))
            path0.addCurve(to: CGPoint(x: 148.06, y: 17.99), controlPoint1: CGPoint(x: 110.76, y: 0.01), controlPoint2: CGPoint(x: 135.21, y: 2.62))
            path0.addCurve(to: CGPoint(x: 186.43, y: 163.02), controlPoint1: CGPoint(x: 160.92, y: 33.36), controlPoint2: CGPoint(x: 186.16, y: 157.66))
            path0.addCurve(to: CGPoint(x: 168.66, y: 169.13), controlPoint1: CGPoint(x: 186.69, y: 168.38), controlPoint2: CGPoint(x: 170.89, y: 173.59))
            path0.addCurve(to: CGPoint(x: 136.7, y: 68.71), controlPoint1: CGPoint(x: 166.43, y: 164.67), controlPoint2: CGPoint(x: 136.7, y: 68.71))
            path0.addCurve(to: CGPoint(x: 139.9, y: 120.84), controlPoint1: CGPoint(x: 136.7, y: 68.71), controlPoint2: CGPoint(x: 138.15, y: 81.02))
            path0.addCurve(to: CGPoint(x: 144.3, y: 201.25), controlPoint1: CGPoint(x: 141.64, y: 160.66), controlPoint2: CGPoint(x: 145.21, y: 196.1))
            path0.addCurve(to: CGPoint(x: 98.28, y: 204.41), controlPoint1: CGPoint(x: 143.85, y: 203.77), controlPoint2: CGPoint(x: 120.62, y: 204.67))
            path0.addCurve(to: CGPoint(x: 98.28, y: 202.81), controlPoint1: CGPoint(x: 98.28, y: 204.41), controlPoint2: CGPoint(x: 98.28, y: 204.1))
            path0.addCurve(to: CGPoint(x: 49.77, y: 197.75), controlPoint1: CGPoint(x: 72.05, y: 203.13), controlPoint2: CGPoint(x: 50.55, y: 198.54))
            path0.addCurve(to: CGPoint(x: 51.17, y: 126.43), controlPoint1: CGPoint(x: 48.1, y: 196.08), controlPoint2: CGPoint(x: 51.17, y: 151.43))
            path0.addCurve(to: CGPoint(x: 51.43, y: 75.53), controlPoint1: CGPoint(x: 51.17, y: 101.43), controlPoint2: CGPoint(x: 51.43, y: 75.53))
            path0.addCurve(to: CGPoint(x: 16.49, y: 176.77), controlPoint1: CGPoint(x: 51.43, y: 75.53), controlPoint2: CGPoint(x: 19.28, y: 172.31))
            path0.addCurve(to: CGPoint(x: 0.02, y: 169.81), controlPoint1: CGPoint(x: 13.7, y: 181.23), controlPoint2: CGPoint(x: -0.54, y: 174.83))
            path0.close()
        }
        let path0Layer = createLayer(path0, color, CGPoint(x: 34.16, y: 125.03))
        let path01Layer = createLayer(path01, Color.shadow.medium, CGPoint(x: 183.88, y: 157.42))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 4.38, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0.04))
        path.addCurve(to: CGPoint(x: 2.17, y: 85.29), controlPoint1: CGPoint(x: 0, y: 0.04), controlPoint2: CGPoint(x: 1.94, y: 46.78))
        path.addCurve(to: CGPoint(x: 2.9, y: 190.62), controlPoint1: CGPoint(x: 2.4, y: 123.81), controlPoint2: CGPoint(x: 2.9, y: 190.62))
        path.addLine(to: CGPoint(x: 7.47, y: 190.66))
        path.addCurve(to: CGPoint(x: 6.67, y: 85.29), controlPoint1: CGPoint(x: 7.47, y: 190.66), controlPoint2: CGPoint(x: 7.23, y: 128.78))
        path.addCurve(to: CGPoint(x: 4.38, y: 0), controlPoint1: CGPoint(x: 6.11, y: 41.8), controlPoint2: CGPoint(x: 4.38, y: 0))
        path.close()
        let pathLayer = createLayer(path, Color.shadow.medium, CGPoint(x: 129.53, y: 138.82))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0.16, y: 6.07))
        path2.addCurve(to: CGPoint(x: 5, y: 1.86), controlPoint1: CGPoint(x: 0.68, y: 4.92), controlPoint2: CGPoint(x: 2.56, y: 2.92))
        path2.addCurve(to: CGPoint(x: 11.57, y: 0), controlPoint1: CGPoint(x: 7.44, y: 0.81), controlPoint2: CGPoint(x: 11.57, y: 0))
        path2.addCurve(to: CGPoint(x: 15.46, y: 9.05), controlPoint1: CGPoint(x: 11.57, y: 0), controlPoint2: CGPoint(x: 11.14, y: 5.18))
        path2.addCurve(to: CGPoint(x: 25.55, y: 16.99), controlPoint1: CGPoint(x: 19.79, y: 12.91), controlPoint2: CGPoint(x: 27, y: 16.86))
        path2.addCurve(to: CGPoint(x: 21.43, y: 20.11), controlPoint1: CGPoint(x: 24.11, y: 17.11), controlPoint2: CGPoint(x: 22.49, y: 18.32))
        path2.addCurve(to: CGPoint(x: 17.69, y: 25.83), controlPoint1: CGPoint(x: 20.37, y: 21.9), controlPoint2: CGPoint(x: 18.74, y: 26.3))
        path2.addCurve(to: CGPoint(x: 5.75, y: 17.32), controlPoint1: CGPoint(x: 16.64, y: 25.36), controlPoint2: CGPoint(x: 11.33, y: 24.07))
        path2.addCurve(to: CGPoint(x: 0.16, y: 6.07), controlPoint1: CGPoint(x: 0.16, y: 10.57), controlPoint2: CGPoint(x: -0.36, y: 7.22))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 106.19, y: 121.97))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 0.16, y: 6.07))
        path3.addCurve(to: CGPoint(x: 5, y: 1.86), controlPoint1: CGPoint(x: 0.68, y: 4.92), controlPoint2: CGPoint(x: 2.56, y: 2.92))
        path3.addCurve(to: CGPoint(x: 11.57, y: 0), controlPoint1: CGPoint(x: 7.44, y: 0.81), controlPoint2: CGPoint(x: 11.57, y: 0))
        path3.addCurve(to: CGPoint(x: 15.46, y: 9.05), controlPoint1: CGPoint(x: 11.57, y: 0), controlPoint2: CGPoint(x: 11.14, y: 5.18))
        path3.addCurve(to: CGPoint(x: 25.55, y: 16.99), controlPoint1: CGPoint(x: 19.79, y: 12.91), controlPoint2: CGPoint(x: 27, y: 16.86))
        path3.addCurve(to: CGPoint(x: 21.43, y: 20.11), controlPoint1: CGPoint(x: 24.11, y: 17.11), controlPoint2: CGPoint(x: 22.49, y: 18.32))
        path3.addCurve(to: CGPoint(x: 17.69, y: 25.83), controlPoint1: CGPoint(x: 20.37, y: 21.9), controlPoint2: CGPoint(x: 18.74, y: 26.3))
        path3.addCurve(to: CGPoint(x: 5.75, y: 17.32), controlPoint1: CGPoint(x: 16.64, y: 25.36), controlPoint2: CGPoint(x: 11.33, y: 24.07))
        path3.addCurve(to: CGPoint(x: 0.16, y: 6.07), controlPoint1: CGPoint(x: 0.16, y: 10.57), controlPoint2: CGPoint(x: -0.36, y: 7.22))
        path3.close()
        let path3Layer = createLayer(path3, Color.shadow.bold, CGPoint(x: 106.19, y: 121.97))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 16.74, y: 4.52))
        path4.addCurve(to: CGPoint(x: 12.48, y: 1.73), controlPoint1: CGPoint(x: 16.47, y: 4.12), controlPoint2: CGPoint(x: 15.16, y: 2.76))
        path4.addCurve(to: CGPoint(x: 6.11, y: 0), controlPoint1: CGPoint(x: 9.8, y: 0.69), controlPoint2: CGPoint(x: 6.11, y: 0))
        path4.addCurve(to: CGPoint(x: 4.84, y: 9.51), controlPoint1: CGPoint(x: 6.11, y: 0), controlPoint2: CGPoint(x: 6.82, y: 5.49))
        path4.addCurve(to: CGPoint(x: 0.21, y: 17.07), controlPoint1: CGPoint(x: 2.85, y: 13.53), controlPoint2: CGPoint(x: -0.94, y: 16.95))
        path4.addCurve(to: CGPoint(x: 4.45, y: 19.93), controlPoint1: CGPoint(x: 1.36, y: 17.19), controlPoint2: CGPoint(x: 3.29, y: 18.33))
        path4.addCurve(to: CGPoint(x: 7.72, y: 25.81), controlPoint1: CGPoint(x: 5.62, y: 21.54), controlPoint2: CGPoint(x: 6.89, y: 26.28))
        path4.addCurve(to: CGPoint(x: 15.56, y: 15.1), controlPoint1: CGPoint(x: 8.56, y: 25.34), controlPoint2: CGPoint(x: 12.28, y: 20.96))
        path4.addCurve(to: CGPoint(x: 16.74, y: 4.52), controlPoint1: CGPoint(x: 18.85, y: 9.24), controlPoint2: CGPoint(x: 17, y: 4.92))
        path4.close()
        let path4Layer = createLayer(path4, color, CGPoint(x: 131.82, y: 121.91))
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 16.74, y: 4.52))
        path5.addCurve(to: CGPoint(x: 12.48, y: 1.73), controlPoint1: CGPoint(x: 16.47, y: 4.12), controlPoint2: CGPoint(x: 15.16, y: 2.76))
        path5.addCurve(to: CGPoint(x: 6.11, y: 0), controlPoint1: CGPoint(x: 9.8, y: 0.69), controlPoint2: CGPoint(x: 6.11, y: 0))
        path5.addCurve(to: CGPoint(x: 4.84, y: 9.51), controlPoint1: CGPoint(x: 6.11, y: 0), controlPoint2: CGPoint(x: 6.82, y: 5.49))
        path5.addCurve(to: CGPoint(x: 0.21, y: 17.07), controlPoint1: CGPoint(x: 2.85, y: 13.53), controlPoint2: CGPoint(x: -0.94, y: 16.95))
        path5.addCurve(to: CGPoint(x: 4.45, y: 19.93), controlPoint1: CGPoint(x: 1.36, y: 17.19), controlPoint2: CGPoint(x: 3.29, y: 18.33))
        path5.addCurve(to: CGPoint(x: 7.72, y: 25.81), controlPoint1: CGPoint(x: 5.62, y: 21.54), controlPoint2: CGPoint(x: 6.89, y: 26.28))
        path5.addCurve(to: CGPoint(x: 15.56, y: 15.1), controlPoint1: CGPoint(x: 8.56, y: 25.34), controlPoint2: CGPoint(x: 12.28, y: 20.96))
        path5.addCurve(to: CGPoint(x: 16.74, y: 4.52), controlPoint1: CGPoint(x: 18.85, y: 9.24), controlPoint2: CGPoint(x: 17, y: 4.92))
        path5.close()
        let path5Layer = createLayer(path5, Color.shadow.bold, CGPoint(x: 131.82, y: 121.91))
        
        let oval = UIBezierPath()
        oval.move(to: CGPoint(x: 1.47, y: 2.95))
        oval.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval.close()
        let ovalLayer = createLayer(oval, Color.shadow.bold, CGPoint(x: 130.58, y: 144.32))
        
        let oval2 = UIBezierPath()
        oval2.move(to: CGPoint(x: 1.47, y: 2.95))
        oval2.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval2.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval2.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval2.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval2.close()
        let oval2Layer = createLayer(oval2, Color.shadow.bold, CGPoint(x: 131.48, y: 166.68))
        
        let oval3 = UIBezierPath()
        oval3.move(to: CGPoint(x: 1.47, y: 2.95))
        oval3.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval3.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval3.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval3.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval3.close()
        let oval3Layer = createLayer(oval3, Color.shadow.bold, CGPoint(x: 132, y: 188.85))
        
        let oval4 = UIBezierPath()
        oval4.move(to: CGPoint(x: 1.47, y: 2.95))
        oval4.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval4.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval4.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval4.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval4.close()
        let oval4Layer = createLayer(oval4, Color.shadow.bold, CGPoint(x: 132.46, y: 210.98))
        
        let oval5 = UIBezierPath()
        oval5.move(to: CGPoint(x: 1.47, y: 2.95))
        oval5.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval5.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval5.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval5.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval5.close()
        let oval5Layer = createLayer(oval5, Color.shadow.bold, CGPoint(x: 132.61, y: 233.26))
        
        let oval6 = UIBezierPath()
        oval6.move(to: CGPoint(x: 1.47, y: 2.95))
        oval6.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval6.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval6.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval6.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval6.close()
        let oval6Layer = createLayer(oval6, Color.shadow.bold, CGPoint(x: 132.78, y: 255.5))
        
        let oval7 = UIBezierPath()
        oval7.move(to: CGPoint(x: 1.47, y: 2.95))
        oval7.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval7.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval7.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval7.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval7.close()
        let oval7Layer = createLayer(oval7, Color.shadow.bold, CGPoint(x: 133.02, y: 277.68))
        
        let oval8 = UIBezierPath()
        oval8.move(to: CGPoint(x: 1.47, y: 2.95))
        oval8.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval8.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval8.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval8.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval8.close()
        let oval8Layer = createLayer(oval8, Color.shadow.bold, CGPoint(x: 133.04, y: 300))
        
        let oval9 = UIBezierPath()
        oval9.move(to: CGPoint(x: 1.47, y: 2.95))
        oval9.addCurve(to: CGPoint(x: 2.95, y: 1.47), controlPoint1: CGPoint(x: 2.29, y: 2.95), controlPoint2: CGPoint(x: 2.95, y: 2.29))
        oval9.addCurve(to: CGPoint(x: 1.47, y: 0), controlPoint1: CGPoint(x: 2.95, y: 0.66), controlPoint2: CGPoint(x: 2.29, y: 0))
        oval9.addCurve(to: CGPoint(x: 0, y: 1.47), controlPoint1: CGPoint(x: 0.66, y: 0), controlPoint2: CGPoint(x: 0, y: 0.66))
        oval9.addCurve(to: CGPoint(x: 1.47, y: 2.95), controlPoint1: CGPoint(x: 0, y: 2.29), controlPoint2: CGPoint(x: 0.66, y: 2.95))
        oval9.close()
        let oval9Layer = createLayer(oval9, Color.shadow.bold, CGPoint(x: 133.27, y: 322.09))
        
        let shirt = UIView()
        shirt.layer.addSublayers(path0Layer, path01Layer, pathLayer, path2Layer, path3Layer, path4Layer, path5Layer, ovalLayer, oval2Layer, oval3Layer, oval4Layer, oval5Layer, oval6Layer, oval7Layer, oval8Layer, oval9Layer)
        return shirt
    }
    
}