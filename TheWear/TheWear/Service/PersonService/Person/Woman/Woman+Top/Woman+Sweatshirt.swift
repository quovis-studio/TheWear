/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSweatshirt(_ color: UIColor, _ rain: Bool) -> UIView {
        let path0 = UIBezierPath()
        let path01 = UIBezierPath()
        let path02 = UIBezierPath()
        let path03 = UIBezierPath()
        if rain {
            path0.move(to: CGPoint(x: 73.59, y: 1.43))
            path0.addCurve(to: CGPoint(x: 40.88, y: 17.1), controlPoint1: CGPoint(x: 73.14, y: 0.25), controlPoint2: CGPoint(x: 53.7, y: 2.76))
            path0.addCurve(to: CGPoint(x: 0.81, y: 161.4), controlPoint1: CGPoint(x: 28.05, y: 31.45), controlPoint2: CGPoint(x: -5.62, y: 154.33))
            path0.addCurve(to: CGPoint(x: 18.58, y: 166.42), controlPoint1: CGPoint(x: 7.24, y: 168.48), controlPoint2: CGPoint(x: 13.2, y: 168.76))
            path0.addCurve(to: CGPoint(x: 39.75, y: 100.63), controlPoint1: CGPoint(x: 23.96, y: 164.07), controlPoint2: CGPoint(x: 36.87, y: 110.28))
            path0.addCurve(to: CGPoint(x: 49.03, y: 66.15), controlPoint1: CGPoint(x: 42.63, y: 90.97), controlPoint2: CGPoint(x: 49.03, y: 66.15))
            path0.addCurve(to: CGPoint(x: 51.12, y: 106.84), controlPoint1: CGPoint(x: 49.03, y: 66.15), controlPoint2: CGPoint(x: 51.7, y: 90.14))
            path0.addCurve(to: CGPoint(x: 47.83, y: 161.45), controlPoint1: CGPoint(x: 50.55, y: 123.54), controlPoint2: CGPoint(x: 43.12, y: 158.05))
            path0.addCurve(to: CGPoint(x: 95.9, y: 166.35), controlPoint1: CGPoint(x: 52.53, y: 164.85), controlPoint2: CGPoint(x: 70.77, y: 166.06))
            path0.addCurve(to: CGPoint(x: 134.9, y: 162.03), controlPoint1: CGPoint(x: 119.29, y: 166.62), controlPoint2: CGPoint(x: 131.43, y: 163.58))
            path0.addCurve(to: CGPoint(x: 131.47, y: 105.03), controlPoint1: CGPoint(x: 138.38, y: 160.48), controlPoint2: CGPoint(x: 132.96, y: 124.92))
            path0.addCurve(to: CGPoint(x: 132.86, y: 68.31), controlPoint1: CGPoint(x: 129.98, y: 85.15), controlPoint2: CGPoint(x: 134.17, y: 76.06))
            path0.addCurve(to: CGPoint(x: 153.01, y: 91.32), controlPoint1: CGPoint(x: 134.03, y: 71.28), controlPoint2: CGPoint(x: 136.79, y: 91.32))
            path0.addCurve(to: CGPoint(x: 164.23, y: 48.34), controlPoint1: CGPoint(x: 164.21, y: 91.32), controlPoint2: CGPoint(x: 166.01, y: 52.46))
            path0.addCurve(to: CGPoint(x: 148.83, y: 44.13), controlPoint1: CGPoint(x: 162.46, y: 44.22), controlPoint2: CGPoint(x: 156.22, y: 44.13))
            path0.addCurve(to: CGPoint(x: 137.42, y: 12.71), controlPoint1: CGPoint(x: 147.71, y: 38.72), controlPoint2: CGPoint(x: 144.61, y: 24.23))
            path0.addCurve(to: CGPoint(x: 105.86, y: 0.25), controlPoint1: CGPoint(x: 130.24, y: 1.19), controlPoint2: CGPoint(x: 106.09, y: -0.82))
            path0.addCurve(to: CGPoint(x: 91.42, y: 11.32), controlPoint1: CGPoint(x: 105.62, y: 1.32), controlPoint2: CGPoint(x: 104.69, y: 10.55))
            path0.addCurve(to: CGPoint(x: 73.59, y: 1.43), controlPoint1: CGPoint(x: 78.14, y: 12.09), controlPoint2: CGPoint(x: 74.05, y: 2.6))
            path0.close()
            
            path01.move(to: CGPoint(x: 18.21, y: 3.14))
            path01.addCurve(to: CGPoint(x: 17.32, y: 13.44), controlPoint1: CGPoint(x: 18.94, y: 4.91), controlPoint2: CGPoint(x: 17.32, y: 13.44))
            path01.addCurve(to: CGPoint(x: 9.5, y: 10.87), controlPoint1: CGPoint(x: 17.32, y: 13.44), controlPoint2: CGPoint(x: 14.03, y: 11.78))
            path01.addCurve(to: CGPoint(x: 0, y: 10.64), controlPoint1: CGPoint(x: 4.96, y: 9.96), controlPoint2: CGPoint(x: 0, y: 10.64))
            path01.addCurve(to: CGPoint(x: 3.6, y: 0.42), controlPoint1: CGPoint(x: 0, y: 10.64), controlPoint2: CGPoint(x: 2.35, y: 1.81))
            path01.addCurve(to: CGPoint(x: 18.21, y: 3.14), controlPoint1: CGPoint(x: 4.85, y: -0.97), controlPoint2: CGPoint(x: 17.47, y: 1.37))
            path01.close()
            
            path02.move(to: CGPoint(x: 18.21, y: 3.14))
            path02.addCurve(to: CGPoint(x: 17.32, y: 13.44), controlPoint1: CGPoint(x: 18.94, y: 4.91), controlPoint2: CGPoint(x: 17.32, y: 13.44))
            path02.addCurve(to: CGPoint(x: 9.5, y: 10.87), controlPoint1: CGPoint(x: 17.32, y: 13.44), controlPoint2: CGPoint(x: 14.03, y: 11.78))
            path02.addCurve(to: CGPoint(x: 0, y: 10.64), controlPoint1: CGPoint(x: 4.96, y: 9.96), controlPoint2: CGPoint(x: 0, y: 10.64))
            path02.addCurve(to: CGPoint(x: 3.6, y: 0.42), controlPoint1: CGPoint(x: 0, y: 10.64), controlPoint2: CGPoint(x: 2.35, y: 1.81))
            path02.addCurve(to: CGPoint(x: 18.21, y: 3.14), controlPoint1: CGPoint(x: 4.85, y: -0.97), controlPoint2: CGPoint(x: 17.47, y: 1.37))
            path02.close()
            
            path03.move(to: CGPoint(x: 5.72, y: 3.72))
            path03.addCurve(to: CGPoint(x: 4.86, y: 0), controlPoint1: CGPoint(x: 5.48, y: 2.65), controlPoint2: CGPoint(x: 5.1, y: 1.04))
            path03.addCurve(to: CGPoint(x: 0, y: 19.38), controlPoint1: CGPoint(x: 3.41, y: 3.23), controlPoint2: CGPoint(x: 0.83, y: 12.17))
            path03.addCurve(to: CGPoint(x: 4.45, y: 8.08), controlPoint1: CGPoint(x: 0.73, y: 15.29), controlPoint2: CGPoint(x: 3, y: 9.12))
            path03.addCurve(to: CGPoint(x: 5.72, y: 3.72), controlPoint1: CGPoint(x: 5.06, y: 5.77), controlPoint2: CGPoint(x: 5.3, y: 5.09))
            path03.close()
        } else {
            path0.move(to: CGPoint(x: 73.59, y: 1.66))
            path0.addCurve(to: CGPoint(x: 40.88, y: 17.34), controlPoint1: CGPoint(x: 73.14, y: 0.49), controlPoint2: CGPoint(x: 53.7, y: 2.99))
            path0.addCurve(to: CGPoint(x: 0.81, y: 161.64), controlPoint1: CGPoint(x: 28.05, y: 31.69), controlPoint2: CGPoint(x: -5.62, y: 154.57))
            path0.addCurve(to: CGPoint(x: 18.58, y: 166.65), controlPoint1: CGPoint(x: 7.24, y: 168.71), controlPoint2: CGPoint(x: 13.2, y: 169))
            path0.addCurve(to: CGPoint(x: 39.75, y: 100.86), controlPoint1: CGPoint(x: 23.96, y: 164.31), controlPoint2: CGPoint(x: 36.87, y: 110.52))
            path0.addCurve(to: CGPoint(x: 49.03, y: 66.39), controlPoint1: CGPoint(x: 42.63, y: 91.21), controlPoint2: CGPoint(x: 49.03, y: 66.39))
            path0.addCurve(to: CGPoint(x: 51.12, y: 107.07), controlPoint1: CGPoint(x: 49.03, y: 66.39), controlPoint2: CGPoint(x: 51.7, y: 90.38))
            path0.addCurve(to: CGPoint(x: 47.83, y: 161.69), controlPoint1: CGPoint(x: 50.55, y: 123.77), controlPoint2: CGPoint(x: 43.12, y: 158.29))
            path0.addCurve(to: CGPoint(x: 95.9, y: 166.59), controlPoint1: CGPoint(x: 52.53, y: 165.09), controlPoint2: CGPoint(x: 70.77, y: 166.3))
            path0.addCurve(to: CGPoint(x: 134.9, y: 162.27), controlPoint1: CGPoint(x: 119.29, y: 166.86), controlPoint2: CGPoint(x: 131.43, y: 163.82))
            path0.addCurve(to: CGPoint(x: 131.47, y: 105.27), controlPoint1: CGPoint(x: 138.38, y: 160.72), controlPoint2: CGPoint(x: 132.96, y: 125.15))
            path0.addCurve(to: CGPoint(x: 134.01, y: 64.73), controlPoint1: CGPoint(x: 129.98, y: 85.38), controlPoint2: CGPoint(x: 135.11, y: 74.39))
            path0.addCurve(to: CGPoint(x: 164.78, y: 156.35), controlPoint1: CGPoint(x: 135.93, y: 69.58), controlPoint2: CGPoint(x: 155.94, y: 155.17))
            path0.addCurve(to: CGPoint(x: 180.02, y: 151.36), controlPoint1: CGPoint(x: 173.63, y: 157.53), controlPoint2: CGPoint(x: 173.86, y: 157.45))
            path0.addCurve(to: CGPoint(x: 139.06, y: 13.28), controlPoint1: CGPoint(x: 186.18, y: 145.26), controlPoint2: CGPoint(x: 153.58, y: 27.75))
            path0.addCurve(to: CGPoint(x: 105.86, y: 0.49), controlPoint1: CGPoint(x: 124.54, y: -1.19), controlPoint2: CGPoint(x: 106.09, y: -0.58))
            path0.addCurve(to: CGPoint(x: 91.42, y: 11.55), controlPoint1: CGPoint(x: 105.62, y: 1.56), controlPoint2: CGPoint(x: 104.69, y: 10.78))
            path0.addCurve(to: CGPoint(x: 73.59, y: 1.66), controlPoint1: CGPoint(x: 78.14, y: 12.32), controlPoint2: CGPoint(x: 74.05, y: 2.84))
            path0.close()
            
            path01.move(to: CGPoint(x: 4.31, y: 15.51))
            path01.addCurve(to: CGPoint(x: 0, y: 6.12), controlPoint1: CGPoint(x: 2.8, y: 14.33), controlPoint2: CGPoint(x: 0, y: 6.12))
            path01.addCurve(to: CGPoint(x: 9.01, y: 4.28), controlPoint1: CGPoint(x: 0, y: 6.12), controlPoint2: CGPoint(x: 4.61, y: 5.72))
            path01.addCurve(to: CGPoint(x: 16.45, y: 0), controlPoint1: CGPoint(x: 13.41, y: 2.83), controlPoint2: CGPoint(x: 16.45, y: 0))
            path01.addCurve(to: CGPoint(x: 18.36, y: 10.67), controlPoint1: CGPoint(x: 16.45, y: 0), controlPoint2: CGPoint(x: 18.76, y: 8.84))
            path01.addCurve(to: CGPoint(x: 4.31, y: 15.51), controlPoint1: CGPoint(x: 17.96, y: 12.49), controlPoint2: CGPoint(x: 5.83, y: 16.69))
            path01.close()
            
            path02.move(to: CGPoint(x: 4.31, y: 15.51))
            path02.addCurve(to: CGPoint(x: 0, y: 6.12), controlPoint1: CGPoint(x: 2.8, y: 14.33), controlPoint2: CGPoint(x: 0, y: 6.12))
            path02.addCurve(to: CGPoint(x: 9.01, y: 4.28), controlPoint1: CGPoint(x: 0, y: 6.12), controlPoint2: CGPoint(x: 4.61, y: 5.72))
            path02.addCurve(to: CGPoint(x: 16.45, y: 0), controlPoint1: CGPoint(x: 13.41, y: 2.83), controlPoint2: CGPoint(x: 16.45, y: 0))
            path02.addCurve(to: CGPoint(x: 18.36, y: 10.67), controlPoint1: CGPoint(x: 16.45, y: 0), controlPoint2: CGPoint(x: 18.76, y: 8.84))
            path02.addCurve(to: CGPoint(x: 4.31, y: 15.51), controlPoint1: CGPoint(x: 17.96, y: 12.49), controlPoint2: CGPoint(x: 5.83, y: 16.69))
            path02.close()
        }
        let path0Layer = createLayer(path0, color, rain ? CGPoint(x: 38.36, y: 127.08) : CGPoint(x: 38.36, y: 126.81))
        let path01Layer = createLayer(path01, color, rain ? CGPoint(x: 185.46, y: 162.77) : CGPoint(x: 202.5, y: 276.79))
        let path02Layer = createLayer(path02, Color.shadow.bold, rain ? CGPoint(x: 185.46, y: 162.77) : CGPoint(x: 202.5, y: 276.79))
        let path03Layer = createLayer(path03, Color.shadow.medium, CGPoint(x: 181.01, y: 165.32))
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 14.92, y: 16.05))
        path.addCurve(to: CGPoint(x: 0.05, y: 10.27), controlPoint1: CGPoint(x: 13.51, y: 16.55), controlPoint2: CGPoint(x: 0.45, y: 11.97))
        path.addCurve(to: CGPoint(x: 1.53, y: 0), controlPoint1: CGPoint(x: -0.34, y: 8.57), controlPoint2: CGPoint(x: 1.53, y: 0))
        path.addCurve(to: CGPoint(x: 10.03, y: 4.51), controlPoint1: CGPoint(x: 1.53, y: 0), controlPoint2: CGPoint(x: 5.16, y: 2.78))
        path.addCurve(to: CGPoint(x: 20.18, y: 5.9), controlPoint1: CGPoint(x: 14.9, y: 6.24), controlPoint2: CGPoint(x: 20.18, y: 5.9))
        path.addCurve(to: CGPoint(x: 14.92, y: 16.05), controlPoint1: CGPoint(x: 20.18, y: 5.9), controlPoint2: CGPoint(x: 16.34, y: 15.55))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 37.14, y: 287.32))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 14.92, y: 16.05))
        path2.addCurve(to: CGPoint(x: 0.05, y: 10.27), controlPoint1: CGPoint(x: 13.51, y: 16.55), controlPoint2: CGPoint(x: 0.45, y: 11.97))
        path2.addCurve(to: CGPoint(x: 1.53, y: 0), controlPoint1: CGPoint(x: -0.34, y: 8.57), controlPoint2: CGPoint(x: 1.53, y: 0))
        path2.addCurve(to: CGPoint(x: 10.03, y: 4.51), controlPoint1: CGPoint(x: 1.53, y: 0), controlPoint2: CGPoint(x: 5.16, y: 2.78))
        path2.addCurve(to: CGPoint(x: 20.18, y: 5.9), controlPoint1: CGPoint(x: 14.9, y: 6.24), controlPoint2: CGPoint(x: 20.18, y: 5.9))
        path2.addCurve(to: CGPoint(x: 14.92, y: 16.05), controlPoint1: CGPoint(x: 20.18, y: 5.9), controlPoint2: CGPoint(x: 16.34, y: 15.55))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 37.14, y: 287.32))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 87.73, y: 0.58))
        path3.addCurve(to: CGPoint(x: 86.5, y: 13.16), controlPoint1: CGPoint(x: 87.73, y: 0.58), controlPoint2: CGPoint(x: 87.63, y: 10.02))
        path3.addCurve(to: CGPoint(x: 1.34, y: 12.5), controlPoint1: CGPoint(x: 85.38, y: 16.29), controlPoint2: CGPoint(x: 2.62, y: 14.63))
        path3.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 0.07, y: 10.36), controlPoint2: CGPoint.zero)
        path3.addCurve(to: CGPoint(x: 47.35, y: 3.23), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 23.16, y: 3.23))
        path3.addCurve(to: CGPoint(x: 87.73, y: 0.58), controlPoint1: CGPoint(x: 71.53, y: 3.23), controlPoint2: CGPoint(x: 87.73, y: 0.58))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 85.86, y: 288.19))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 87.73, y: 0.58))
        path4.addCurve(to: CGPoint(x: 86.5, y: 13.16), controlPoint1: CGPoint(x: 87.73, y: 0.58), controlPoint2: CGPoint(x: 87.63, y: 10.02))
        path4.addCurve(to: CGPoint(x: 1.34, y: 12.5), controlPoint1: CGPoint(x: 85.38, y: 16.29), controlPoint2: CGPoint(x: 2.62, y: 14.63))
        path4.addCurve(to: CGPoint.zero, controlPoint1: CGPoint(x: 0.07, y: 10.36), controlPoint2: CGPoint.zero)
        path4.addCurve(to: CGPoint(x: 47.35, y: 3.23), controlPoint1: CGPoint.zero, controlPoint2: CGPoint(x: 23.16, y: 3.23))
        path4.addCurve(to: CGPoint(x: 87.73, y: 0.58), controlPoint1: CGPoint(x: 71.53, y: 3.23), controlPoint2: CGPoint(x: 87.73, y: 0.58))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.bold, CGPoint(x: 85.86, y: 288.19))
        
        let top = UIView()
        top.layer.addSublayers(path0Layer, pathLayer, path2Layer, path01Layer, path02Layer, path3Layer, path4Layer, path03Layer)
        return top
    }
    
}
