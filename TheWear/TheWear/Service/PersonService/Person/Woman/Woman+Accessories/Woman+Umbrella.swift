/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawUmbrellaTop(color: Color.clothes) -> ClothesView {
        let top = UIBezierPath()
        top.move(to: CGPoint(x: 92.87, y: 6.55))
        top.addCurve(to: CGPoint(x: 227.24, y: 47.08), controlPoint1: CGPoint(x: 183.23, y: -19.36), controlPoint2: CGPoint(x: 225.04, y: 39.39))
        top.addCurve(to: CGPoint(x: 110.78, y: 69.04), controlPoint1: CGPoint(x: 224.22, y: 43.79), controlPoint2: CGPoint(x: 158.85, y: 55.25))
        top.addCurve(to: CGPoint(x: 0.39, y: 112.14), controlPoint1: CGPoint(x: 62.72, y: 82.82), controlPoint2: CGPoint(x: 1.21, y: 107.74))
        top.addCurve(to: CGPoint(x: 92.87, y: 6.55), controlPoint1: CGPoint(x: -1.82, y: 104.45), controlPoint2: CGPoint(x: 2.51, y: 32.46))
        top.close()
        let topLayer = createLayer(top, color.color, CGPoint(x: 44.03, y: -24))
        
        let arm = UIBezierPath()
        arm.move(to: CGPoint(x: 1.82, y: 3.29))
        arm.addCurve(to: CGPoint(x: 15.66, y: 4.52), controlPoint1: CGPoint(x: 5.47, y: -0.8), controlPoint2: CGPoint(x: 9.41, y: -1.8))
        arm.addCurve(to: CGPoint(x: 17.68, y: 18.66), controlPoint1: CGPoint(x: 21.91, y: 10.83), controlPoint2: CGPoint(x: 20.59, y: 17.37))
        arm.addCurve(to: CGPoint(x: 4.02, y: 16.58), controlPoint1: CGPoint(x: 14.77, y: 19.96), controlPoint2: CGPoint(x: 7.44, y: 19.39))
        arm.addCurve(to: CGPoint(x: 1.82, y: 3.29), controlPoint1: CGPoint(x: 0.59, y: 13.76), controlPoint2: CGPoint(x: -1.83, y: 7.39))
        arm.close()
        let armLayer = createLayer(arm, skinColor, CGPoint(x: 185.87, y: 136.85))
        
        let umb = UIView()
        umb.layer.addSublayers(topLayer, armLayer)
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.umbrella.rawValue, color: color)
        clothesView.addSubview(umb)
        clothesView.frame = umb.frame
        return clothesView
    }
    
    final class func drawUmbrellaBottom(color: Color.clothes) -> ClothesView {
        let bottom = UIBezierPath()
        bottom.move(to: CGPoint(x: 0.02, y: 66.03))
        bottom.addCurve(to: CGPoint(x: 110.02, y: 21.55), controlPoint1: CGPoint(x: -1.09, y: 62.19), controlPoint2: CGPoint(x: 51.38, y: 38.36))
        bottom.addCurve(to: CGPoint(x: 226.88, y: 0.98), controlPoint1: CGPoint(x: 168.66, y: 4.74), controlPoint2: CGPoint(x: 225.77, y: -2.87))
        bottom.addCurve(to: CGPoint(x: 115.53, y: 40.78), controlPoint1: CGPoint(x: 227.98, y: 4.82), controlPoint2: CGPoint(x: 169.75, y: 25.23))
        bottom.addCurve(to: CGPoint(x: 0.02, y: 66.03), controlPoint1: CGPoint(x: 61.31, y: 56.32), controlPoint2: CGPoint(x: 1.12, y: 69.88))
        bottom.close()
        let bottomLayer = createLayer(bottom, color.color, CGPoint(x: 44.4, y: 22.11))
        
        let bottom1 = UIBezierPath()
        bottom1.move(to: CGPoint(x: 0.02, y: 66.03))
        bottom1.addCurve(to: CGPoint(x: 110.02, y: 21.55), controlPoint1: CGPoint(x: -1.09, y: 62.19), controlPoint2: CGPoint(x: 51.38, y: 38.36))
        bottom1.addCurve(to: CGPoint(x: 226.88, y: 0.98), controlPoint1: CGPoint(x: 168.66, y: 4.74), controlPoint2: CGPoint(x: 225.77, y: -2.87))
        bottom1.addCurve(to: CGPoint(x: 115.53, y: 40.78), controlPoint1: CGPoint(x: 227.98, y: 4.82), controlPoint2: CGPoint(x: 169.75, y: 25.23))
        bottom1.addCurve(to: CGPoint(x: 0.02, y: 66.03), controlPoint1: CGPoint(x: 61.31, y: 56.32), controlPoint2: CGPoint(x: 1.12, y: 69.88))
        bottom1.close()
        let bottom1Layer = createLayer(bottom1, Color.shadow.heavy, CGPoint(x: 44.4, y: 22.11))
        
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 48.39, y: 173.32))
        shape.addLine(to: CGPoint(x: 0.16, y: 5.1))
        shape.addCurve(to: CGPoint(x: 2.9, y: 0.16), controlPoint1: CGPoint(x: -0.45, y: 2.98), controlPoint2: CGPoint(x: 0.78, y: 0.76))
        shape.addCurve(to: CGPoint(x: 7.78, y: 2.7), controlPoint1: CGPoint(x: 4.96, y: -0.43), controlPoint2: CGPoint(x: 7.1, y: 0.7))
        shape.addLine(to: CGPoint(x: 7.86, y: 2.94))
        shape.addLine(to: CGPoint(x: 56.08, y: 171.12))
        shape.addCurve(to: CGPoint(x: 68.45, y: 177.98), controlPoint1: CGPoint(x: 57.61, y: 176.43), controlPoint2: CGPoint(x: 63.14, y: 179.5))
        shape.addCurve(to: CGPoint(x: 75.38, y: 165.88), controlPoint1: CGPoint(x: 73.67, y: 176.48), controlPoint2: CGPoint(x: 76.73, y: 171.1))
        shape.addLine(to: CGPoint(x: 75.31, y: 165.61))
        shape.addCurve(to: CGPoint(x: 78.05, y: 160.66), controlPoint1: CGPoint(x: 74.7, y: 163.48), controlPoint2: CGPoint(x: 75.93, y: 161.27))
        shape.addCurve(to: CGPoint(x: 83, y: 163.4), controlPoint1: CGPoint(x: 80.17, y: 160.05), controlPoint2: CGPoint(x: 82.39, y: 161.28))
        shape.addCurve(to: CGPoint(x: 70.66, y: 185.67), controlPoint1: CGPoint(x: 85.74, y: 172.96), controlPoint2: CGPoint(x: 80.21, y: 182.93))
        shape.addCurve(to: CGPoint(x: 48.49, y: 173.64), controlPoint1: CGPoint(x: 61.21, y: 188.38), controlPoint2: CGPoint(x: 51.36, y: 183))
        shape.addLine(to: CGPoint(x: 48.39, y: 173.32))
        shape.close()
        let shapeLayer = createLayer(shape, Color.black.primary, CGPoint(x: 132.34, y: -23.37))
        
        let umb = UIView()
        umb.layer.addSublayers(bottomLayer, bottom1Layer, shapeLayer)
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.umbrella.rawValue, color: color)
        clothesView.addSubview(umb)
        clothesView.frame = umb.frame
        return clothesView
    }
    
    final class func drawNoUmbrellaTop() -> ClothesView { return ClothesView() }
    
    final class func drawNoUmbrellaBottom() -> ClothesView { return ClothesView() }
    
}
