/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBoots(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.65, y: 1.38))
        path.addCurve(to: CGPoint(x: 31.15, y: 1.38), controlPoint1: CGPoint(x: 2.89, y: -0.62), controlPoint2: CGPoint(x: 29.47, y: -0.3))
        path.addCurve(to: CGPoint(x: 29.65, y: 15.79), controlPoint1: CGPoint(x: 32.84, y: 3.06), controlPoint2: CGPoint(x: 28.99, y: 12.64))
        path.addCurve(to: CGPoint(x: 42.37, y: 23.89), controlPoint1: CGPoint(x: 30.31, y: 18.95), controlPoint2: CGPoint(x: 35.16, y: 22.36))
        path.addCurve(to: CGPoint(x: 61.91, y: 27.53), controlPoint1: CGPoint(x: 48.59, y: 25.21), controlPoint2: CGPoint(x: 55.04, y: 24.45))
        path.addCurve(to: CGPoint(x: 67.5, y: 37.74), controlPoint1: CGPoint(x: 68.79, y: 30.61), controlPoint2: CGPoint(x: 67.61, y: 36.43))
        path.addCurve(to: CGPoint(x: 56.11, y: 44.21), controlPoint1: CGPoint(x: 67.39, y: 39.06), controlPoint2: CGPoint(x: 68.69, y: 43.22))
        path.addCurve(to: CGPoint(x: 22.08, y: 44.6), controlPoint1: CGPoint(x: 43.52, y: 45.2), controlPoint2: CGPoint(x: 22.08, y: 44.6))
        path.addCurve(to: CGPoint(x: 19.54, y: 42.6), controlPoint1: CGPoint(x: 22.08, y: 44.6), controlPoint2: CGPoint(x: 20.51, y: 42.6))
        path.addCurve(to: CGPoint(x: 16.9, y: 44.6), controlPoint1: CGPoint(x: 18.57, y: 42.6), controlPoint2: CGPoint(x: 16.9, y: 44.6))
        path.addCurve(to: CGPoint(x: 0.25, y: 43.72), controlPoint1: CGPoint(x: 16.9, y: 44.6), controlPoint2: CGPoint(x: 1.34, y: 45.31))
        path.addCurve(to: CGPoint(x: 2.04, y: 15.79), controlPoint1: CGPoint(x: -0.84, y: 42.14), controlPoint2: CGPoint(x: 2.04, y: 15.79))
        path.addCurve(to: CGPoint(x: 1.65, y: 1.38), controlPoint1: CGPoint(x: 2.04, y: 15.79), controlPoint2: CGPoint(x: 0.41, y: 3.38))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 84.35, y: 552.21))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 1.65, y: 1.38))
        path2.addCurve(to: CGPoint(x: 31.15, y: 1.38), controlPoint1: CGPoint(x: 2.89, y: -0.62), controlPoint2: CGPoint(x: 29.47, y: -0.3))
        path2.addCurve(to: CGPoint(x: 29.65, y: 15.79), controlPoint1: CGPoint(x: 32.84, y: 3.06), controlPoint2: CGPoint(x: 28.99, y: 12.64))
        path2.addCurve(to: CGPoint(x: 42.37, y: 23.89), controlPoint1: CGPoint(x: 30.31, y: 18.95), controlPoint2: CGPoint(x: 35.16, y: 22.36))
        path2.addCurve(to: CGPoint(x: 61.91, y: 27.53), controlPoint1: CGPoint(x: 48.59, y: 25.21), controlPoint2: CGPoint(x: 55.04, y: 24.45))
        path2.addCurve(to: CGPoint(x: 67.5, y: 37.74), controlPoint1: CGPoint(x: 68.79, y: 30.61), controlPoint2: CGPoint(x: 67.61, y: 36.43))
        path2.addCurve(to: CGPoint(x: 56.11, y: 44.21), controlPoint1: CGPoint(x: 67.39, y: 39.06), controlPoint2: CGPoint(x: 68.69, y: 43.22))
        path2.addCurve(to: CGPoint(x: 22.08, y: 44.6), controlPoint1: CGPoint(x: 43.52, y: 45.2), controlPoint2: CGPoint(x: 22.08, y: 44.6))
        path2.addCurve(to: CGPoint(x: 19.54, y: 42.6), controlPoint1: CGPoint(x: 22.08, y: 44.6), controlPoint2: CGPoint(x: 20.51, y: 42.6))
        path2.addCurve(to: CGPoint(x: 16.9, y: 44.6), controlPoint1: CGPoint(x: 18.57, y: 42.6), controlPoint2: CGPoint(x: 16.9, y: 44.6))
        path2.addCurve(to: CGPoint(x: 0.25, y: 43.72), controlPoint1: CGPoint(x: 16.9, y: 44.6), controlPoint2: CGPoint(x: 1.34, y: 45.31))
        path2.addCurve(to: CGPoint(x: 2.04, y: 15.79), controlPoint1: CGPoint(x: -0.84, y: 42.14), controlPoint2: CGPoint(x: 2.04, y: 15.79))
        path2.addCurve(to: CGPoint(x: 1.65, y: 1.38), controlPoint1: CGPoint(x: 2.04, y: 15.79), controlPoint2: CGPoint(x: 0.41, y: 3.38))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.medium, CGPoint(x: 84.35, y: 552.21))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 0.21, y: 2.43))
        path3.addCurve(to: CGPoint(x: 30.12, y: 0.76), controlPoint1: CGPoint(x: 1.45, y: 0.43), controlPoint2: CGPoint(x: 28.43, y: -0.92))
        path3.addCurve(to: CGPoint(x: 31.36, y: 14.65), controlPoint1: CGPoint(x: 31.8, y: 2.44), controlPoint2: CGPoint(x: 30.7, y: 11.49))
        path3.addCurve(to: CGPoint(x: 45.97, y: 23.35), controlPoint1: CGPoint(x: 32.02, y: 17.8), controlPoint2: CGPoint(x: 38.76, y: 21.81))
        path3.addCurve(to: CGPoint(x: 64.07, y: 27.44), controlPoint1: CGPoint(x: 52.18, y: 24.66), controlPoint2: CGPoint(x: 57.2, y: 24.36))
        path3.addCurve(to: CGPoint(x: 69.66, y: 37.65), controlPoint1: CGPoint(x: 70.95, y: 30.52), controlPoint2: CGPoint(x: 69.77, y: 36.33))
        path3.addCurve(to: CGPoint(x: 58.27, y: 44.12), controlPoint1: CGPoint(x: 69.55, y: 38.97), controlPoint2: CGPoint(x: 70.85, y: 43.12))
        path3.addCurve(to: CGPoint(x: 26.24, y: 44.5), controlPoint1: CGPoint(x: 45.68, y: 45.11), controlPoint2: CGPoint(x: 26.24, y: 44.5))
        path3.addCurve(to: CGPoint(x: 23.7, y: 42.51), controlPoint1: CGPoint(x: 26.24, y: 44.5), controlPoint2: CGPoint(x: 24.67, y: 42.51))
        path3.addCurve(to: CGPoint(x: 21.06, y: 44.5), controlPoint1: CGPoint(x: 22.73, y: 42.51), controlPoint2: CGPoint(x: 21.06, y: 44.5))
        path3.addCurve(to: CGPoint(x: 4.41, y: 43.63), controlPoint1: CGPoint(x: 21.06, y: 44.5), controlPoint2: CGPoint(x: 5.49, y: 45.22))
        path3.addCurve(to: CGPoint(x: 3.77, y: 16.2), controlPoint1: CGPoint(x: 3.32, y: 42.04), controlPoint2: CGPoint(x: 3.77, y: 16.2))
        path3.addCurve(to: CGPoint(x: 0.21, y: 2.43), controlPoint1: CGPoint(x: 3.77, y: 16.2), controlPoint2: CGPoint(x: -1.04, y: 4.43))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 166.23, y: 552.3))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0.21, y: 2.43))
        path4.addCurve(to: CGPoint(x: 30.12, y: 0.76), controlPoint1: CGPoint(x: 1.45, y: 0.43), controlPoint2: CGPoint(x: 28.43, y: -0.92))
        path4.addCurve(to: CGPoint(x: 31.36, y: 14.65), controlPoint1: CGPoint(x: 31.8, y: 2.44), controlPoint2: CGPoint(x: 30.7, y: 11.49))
        path4.addCurve(to: CGPoint(x: 45.97, y: 23.35), controlPoint1: CGPoint(x: 32.02, y: 17.8), controlPoint2: CGPoint(x: 38.76, y: 21.81))
        path4.addCurve(to: CGPoint(x: 64.07, y: 27.44), controlPoint1: CGPoint(x: 52.18, y: 24.66), controlPoint2: CGPoint(x: 57.2, y: 24.36))
        path4.addCurve(to: CGPoint(x: 69.66, y: 37.65), controlPoint1: CGPoint(x: 70.95, y: 30.52), controlPoint2: CGPoint(x: 69.77, y: 36.33))
        path4.addCurve(to: CGPoint(x: 58.27, y: 44.12), controlPoint1: CGPoint(x: 69.55, y: 38.97), controlPoint2: CGPoint(x: 70.85, y: 43.12))
        path4.addCurve(to: CGPoint(x: 26.24, y: 44.5), controlPoint1: CGPoint(x: 45.68, y: 45.11), controlPoint2: CGPoint(x: 26.24, y: 44.5))
        path4.addCurve(to: CGPoint(x: 23.7, y: 42.51), controlPoint1: CGPoint(x: 26.24, y: 44.5), controlPoint2: CGPoint(x: 24.67, y: 42.51))
        path4.addCurve(to: CGPoint(x: 21.06, y: 44.5), controlPoint1: CGPoint(x: 22.73, y: 42.51), controlPoint2: CGPoint(x: 21.06, y: 44.5))
        path4.addCurve(to: CGPoint(x: 4.41, y: 43.63), controlPoint1: CGPoint(x: 21.06, y: 44.5), controlPoint2: CGPoint(x: 5.49, y: 45.22))
        path4.addCurve(to: CGPoint(x: 3.77, y: 16.2), controlPoint1: CGPoint(x: 3.32, y: 42.04), controlPoint2: CGPoint(x: 3.77, y: 16.2))
        path4.addCurve(to: CGPoint(x: 0.21, y: 2.43), controlPoint1: CGPoint(x: 3.77, y: 16.2), controlPoint2: CGPoint(x: -1.04, y: 4.43))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.medium, CGPoint(x: 166.23, y: 552.3))
        
        let bootsView = UIView()
        bootsView.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer)
        return bootsView
    }
    
}
