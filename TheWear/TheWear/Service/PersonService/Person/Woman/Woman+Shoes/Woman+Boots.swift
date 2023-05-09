/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBoots(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 49.1, y: 103.36))
        path.addCurve(to: CGPoint(x: 57.42, y: 113.14), controlPoint1: CGPoint(x: 57.53, y: 103.84), controlPoint2: CGPoint(x: 58.47, y: 108.11))
        path.addCurve(to: CGPoint(x: 15.67, y: 114.9), controlPoint1: CGPoint(x: 58.81, y: 116.93), controlPoint2: CGPoint(x: 57.86, y: 122.98))
        path.addLine(to: CGPoint(x: 15.67, y: 117.98))
        path.addLine(to: CGPoint(x: 0.78, y: 117.98))
        path.addCurve(to: CGPoint(x: 0.51, y: 106.66), controlPoint1: CGPoint(x: 0.16, y: 115.37), controlPoint2: CGPoint(x: -0.47, y: 109.49))
        path.addCurve(to: CGPoint(x: 1.27, y: 85.1), controlPoint1: CGPoint(x: -0.54, y: 95.37), controlPoint2: CGPoint(x: 1.77, y: 89.1))
        path.addCurve(to: CGPoint(x: 3.37, y: 23.53), controlPoint1: CGPoint(x: 0.77, y: 81.1), controlPoint2: CGPoint(x: 1.5, y: 45.28))
        path.addCurve(to: CGPoint(x: 8.27, y: 0.1), controlPoint1: CGPoint(x: 4.62, y: 8.99), controlPoint2: CGPoint(x: 6.07, y: -1.11))
        path.addCurve(to: CGPoint(x: 40.27, y: 1.6), controlPoint1: CGPoint(x: 13.74, y: 3.11), controlPoint2: CGPoint(x: 31.77, y: 4.6))
        path.addCurve(to: CGPoint(x: 22.77, y: 86.1), controlPoint1: CGPoint(x: 48.77, y: -1.4), controlPoint2: CGPoint(x: 23.11, y: 79.32))
        path.addCurve(to: CGPoint(x: 31.25, y: 98.46), controlPoint1: CGPoint(x: 22.42, y: 92.88), controlPoint2: CGPoint(x: 26.55, y: 95.64))
        path.addCurve(to: CGPoint(x: 49.1, y: 103.36), controlPoint1: CGPoint(x: 35.95, y: 101.28), controlPoint2: CGPoint(x: 43.27, y: 103.03))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 82.73, y: 477.9))
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 49.1, y: 103.36))
        path1.addCurve(to: CGPoint(x: 57.42, y: 113.14), controlPoint1: CGPoint(x: 57.53, y: 103.84), controlPoint2: CGPoint(x: 58.47, y: 108.11))
        path1.addCurve(to: CGPoint(x: 15.67, y: 114.9), controlPoint1: CGPoint(x: 58.81, y: 116.93), controlPoint2: CGPoint(x: 57.86, y: 122.98))
        path1.addLine(to: CGPoint(x: 15.67, y: 117.98))
        path1.addLine(to: CGPoint(x: 0.78, y: 117.98))
        path1.addCurve(to: CGPoint(x: 0.51, y: 106.66), controlPoint1: CGPoint(x: 0.16, y: 115.37), controlPoint2: CGPoint(x: -0.47, y: 109.49))
        path1.addCurve(to: CGPoint(x: 1.27, y: 85.1), controlPoint1: CGPoint(x: -0.54, y: 95.37), controlPoint2: CGPoint(x: 1.77, y: 89.1))
        path1.addCurve(to: CGPoint(x: 3.37, y: 23.53), controlPoint1: CGPoint(x: 0.77, y: 81.1), controlPoint2: CGPoint(x: 1.5, y: 45.28))
        path1.addCurve(to: CGPoint(x: 8.27, y: 0.1), controlPoint1: CGPoint(x: 4.62, y: 8.99), controlPoint2: CGPoint(x: 6.07, y: -1.11))
        path1.addCurve(to: CGPoint(x: 40.27, y: 1.6), controlPoint1: CGPoint(x: 13.74, y: 3.11), controlPoint2: CGPoint(x: 31.77, y: 4.6))
        path1.addCurve(to: CGPoint(x: 22.77, y: 86.1), controlPoint1: CGPoint(x: 48.77, y: -1.4), controlPoint2: CGPoint(x: 23.11, y: 79.32))
        path1.addCurve(to: CGPoint(x: 31.25, y: 98.46), controlPoint1: CGPoint(x: 22.42, y: 92.88), controlPoint2: CGPoint(x: 26.55, y: 95.64))
        path1.addCurve(to: CGPoint(x: 49.1, y: 103.36), controlPoint1: CGPoint(x: 35.95, y: 101.28), controlPoint2: CGPoint(x: 43.27, y: 103.03))
        path1.close()
        let path1Layer = createLayer(path1, Color.shadow.medium, CGPoint(x: 82.73, y: 477.9))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 66.1, y: 106.38))
        path2.addCurve(to: CGPoint(x: 74.42, y: 116.17), controlPoint1: CGPoint(x: 74.53, y: 106.86), controlPoint2: CGPoint(x: 75.47, y: 111.13))
        path2.addCurve(to: CGPoint(x: 32.67, y: 117.93), controlPoint1: CGPoint(x: 75.81, y: 119.95), controlPoint2: CGPoint(x: 74.86, y: 126))
        path2.addLine(to: CGPoint(x: 32.67, y: 121))
        path2.addLine(to: CGPoint(x: 17.78, y: 121))
        path2.addCurve(to: CGPoint(x: 17.51, y: 109.68), controlPoint1: CGPoint(x: 17.16, y: 118.39), controlPoint2: CGPoint(x: 16.73, y: 112.43))
        path2.addCurve(to: CGPoint(x: 14.99, y: 93.07), controlPoint1: CGPoint(x: 15.94, y: 105.5), controlPoint2: CGPoint(x: 15.59, y: 96.31))
        path2.addCurve(to: CGPoint(x: 2.72, y: 31.03), controlPoint1: CGPoint(x: 14.39, y: 89.83), controlPoint2: CGPoint(x: 4.69, y: 48.47))
        path2.addCurve(to: CGPoint(x: 0.96, y: 0.07), controlPoint1: CGPoint(x: 0.75, y: 13.59), controlPoint2: CGPoint(x: -1.23, y: -1.14))
        path2.addCurve(to: CGPoint(x: 32.03, y: 0.37), controlPoint1: CGPoint(x: 6.44, y: 3.08), controlPoint2: CGPoint(x: 25.79, y: 3.33))
        path2.addCurve(to: CGPoint(x: 35.89, y: 88.39), controlPoint1: CGPoint(x: 38.27, y: -2.59), controlPoint2: CGPoint(x: 35.89, y: 81.22))
        path2.addCurve(to: CGPoint(x: 46.74, y: 101.74), controlPoint1: CGPoint(x: 35.89, y: 95.56), controlPoint2: CGPoint(x: 42.04, y: 98.92))
        path2.addCurve(to: CGPoint(x: 66.1, y: 106.38), controlPoint1: CGPoint(x: 51.44, y: 104.57), controlPoint2: CGPoint(x: 60.27, y: 106.05))
        path2.close()
        let path2Layer = createLayer(path2, color, CGPoint(x: 154.4, y: 474.88))
        
        let path21 = UIBezierPath()
        path21.move(to: CGPoint(x: 66.1, y: 106.38))
        path21.addCurve(to: CGPoint(x: 74.42, y: 116.17), controlPoint1: CGPoint(x: 74.53, y: 106.86), controlPoint2: CGPoint(x: 75.47, y: 111.13))
        path21.addCurve(to: CGPoint(x: 32.67, y: 117.93), controlPoint1: CGPoint(x: 75.81, y: 119.95), controlPoint2: CGPoint(x: 74.86, y: 126))
        path21.addLine(to: CGPoint(x: 32.67, y: 121))
        path21.addLine(to: CGPoint(x: 17.78, y: 121))
        path21.addCurve(to: CGPoint(x: 17.51, y: 109.68), controlPoint1: CGPoint(x: 17.16, y: 118.39), controlPoint2: CGPoint(x: 16.73, y: 112.43))
        path21.addCurve(to: CGPoint(x: 14.99, y: 93.07), controlPoint1: CGPoint(x: 15.94, y: 105.5), controlPoint2: CGPoint(x: 15.59, y: 96.31))
        path21.addCurve(to: CGPoint(x: 2.72, y: 31.03), controlPoint1: CGPoint(x: 14.39, y: 89.83), controlPoint2: CGPoint(x: 4.69, y: 48.47))
        path21.addCurve(to: CGPoint(x: 0.96, y: 0.07), controlPoint1: CGPoint(x: 0.75, y: 13.59), controlPoint2: CGPoint(x: -1.23, y: -1.14))
        path21.addCurve(to: CGPoint(x: 32.03, y: 0.37), controlPoint1: CGPoint(x: 6.44, y: 3.08), controlPoint2: CGPoint(x: 25.79, y: 3.33))
        path21.addCurve(to: CGPoint(x: 35.89, y: 88.39), controlPoint1: CGPoint(x: 38.27, y: -2.59), controlPoint2: CGPoint(x: 35.89, y: 81.22))
        path21.addCurve(to: CGPoint(x: 46.74, y: 101.74), controlPoint1: CGPoint(x: 35.89, y: 95.56), controlPoint2: CGPoint(x: 42.04, y: 98.92))
        path21.addCurve(to: CGPoint(x: 66.1, y: 106.38), controlPoint1: CGPoint(x: 51.44, y: 104.57), controlPoint2: CGPoint(x: 60.27, y: 106.05))
        path21.close()
        let path21Layer = createLayer(path21, Color.shadow.medium, CGPoint(x: 154.4, y: 474.88))
        
        let shoes = UIView()
        shoes.layer.addSublayers(pathLayer, path1Layer, path2Layer, path21Layer)
        return shoes
    }
    
}
