/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawGloves(color: Color.clothes, rain: Bool) -> ClothesView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.89, y: 44.18))
        path.addCurve(to: CGPoint(x: 22.48, y: 9.66), controlPoint1: CGPoint(x: -7.41, y: 37.47), controlPoint2: CGPoint(x: 20.48, y: 13.27))
        path.addCurve(to: CGPoint(x: 25.4, y: 1.43), controlPoint1: CGPoint(x: 24.48, y: 6.06), controlPoint2: CGPoint(x: 24.39, y: 4.5))
        path.addCurve(to: CGPoint(x: 42.1, y: 5.27), controlPoint1: CGPoint(x: 26.41, y: -1.64), controlPoint2: CGPoint(x: 43.21, y: 0.5))
        path.addCurve(to: CGPoint(x: 40.34, y: 12.35), controlPoint1: CGPoint(x: 40.99, y: 10.04), controlPoint2: CGPoint(x: 40.66, y: 9.46))
        path.addCurve(to: CGPoint(x: 39.05, y: 38.72), controlPoint1: CGPoint(x: 40.02, y: 15.24), controlPoint2: CGPoint(x: 44.05, y: 39.15))
        path.addCurve(to: CGPoint(x: 31.46, y: 30.35), controlPoint1: CGPoint(x: 34.05, y: 38.29), controlPoint2: CGPoint(x: 34.54, y: 30.78))
        path.addCurve(to: CGPoint(x: 1.89, y: 44.18), controlPoint1: CGPoint(x: 28.37, y: 29.91), controlPoint2: CGPoint(x: 11.19, y: 50.89))
        path.close()
        let pathLayer = createLayer(path, color.color, CGPoint(x: 10.14, y: 290.21))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 1.89, y: 44.18))
        path2.addCurve(to: CGPoint(x: 22.48, y: 9.66), controlPoint1: CGPoint(x: -7.41, y: 37.47), controlPoint2: CGPoint(x: 20.48, y: 13.27))
        path2.addCurve(to: CGPoint(x: 25.4, y: 1.43), controlPoint1: CGPoint(x: 24.48, y: 6.06), controlPoint2: CGPoint(x: 24.39, y: 4.5))
        path2.addCurve(to: CGPoint(x: 42.1, y: 5.27), controlPoint1: CGPoint(x: 26.41, y: -1.64), controlPoint2: CGPoint(x: 43.21, y: 0.5))
        path2.addCurve(to: CGPoint(x: 40.34, y: 12.35), controlPoint1: CGPoint(x: 40.99, y: 10.04), controlPoint2: CGPoint(x: 40.66, y: 9.46))
        path2.addCurve(to: CGPoint(x: 39.05, y: 38.72), controlPoint1: CGPoint(x: 40.02, y: 15.24), controlPoint2: CGPoint(x: 44.05, y: 39.15))
        path2.addCurve(to: CGPoint(x: 31.46, y: 30.35), controlPoint1: CGPoint(x: 34.05, y: 38.29), controlPoint2: CGPoint(x: 34.54, y: 30.78))
        path2.addCurve(to: CGPoint(x: 1.89, y: 44.18), controlPoint1: CGPoint(x: 28.37, y: 29.91), controlPoint2: CGPoint(x: 11.19, y: 50.89))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.light, CGPoint(x: 10.14, y: 290.21))
        
        let path3 = UIBezierPath()
        let path4 = UIBezierPath()
        if rain {  } else {
            path3.move(to: CGPoint(x: 1.78, y: 37.98))
            path3.addCurve(to: CGPoint(x: 1.97, y: 11.7), controlPoint1: CGPoint(x: -2.33, y: 34.62), controlPoint2: CGPoint(x: 1.97, y: 15.08))
            path3.addCurve(to: CGPoint(x: 0.63, y: 4.87), controlPoint1: CGPoint(x: 1.97, y: 8.32), controlPoint2: CGPoint(x: 1.08, y: 8.32))
            path3.addCurve(to: CGPoint(x: 17.08, y: 0.68), controlPoint1: CGPoint(x: 0.17, y: 1.43), controlPoint2: CGPoint(x: 16.12, y: -1.33))
            path3.addCurve(to: CGPoint(x: 19.35, y: 7.34), controlPoint1: CGPoint(x: 18.05, y: 2.69), controlPoint2: CGPoint(x: 18.14, y: 4.04))
            path3.addCurve(to: CGPoint(x: 36, y: 44.97), controlPoint1: CGPoint(x: 20.57, y: 10.64), controlPoint2: CGPoint(x: 49.39, y: 43.67))
            path3.addCurve(to: CGPoint(x: 12.05, y: 30.61), controlPoint1: CGPoint(x: 22.6, y: 46.27), controlPoint2: CGPoint(x: 15.78, y: 30.96))
            path3.addCurve(to: CGPoint(x: 1.78, y: 37.98), controlPoint1: CGPoint(x: 8.32, y: 30.27), controlPoint2: CGPoint(x: 5.88, y: 41.33))
            path3.close()
            
            path4.move(to: CGPoint(x: 1.78, y: 37.98))
            path4.addCurve(to: CGPoint(x: 1.97, y: 11.7), controlPoint1: CGPoint(x: -2.33, y: 34.62), controlPoint2: CGPoint(x: 1.97, y: 15.08))
            path4.addCurve(to: CGPoint(x: 0.63, y: 4.87), controlPoint1: CGPoint(x: 1.97, y: 8.32), controlPoint2: CGPoint(x: 1.08, y: 8.32))
            path4.addCurve(to: CGPoint(x: 17.08, y: 0.68), controlPoint1: CGPoint(x: 0.17, y: 1.43), controlPoint2: CGPoint(x: 16.12, y: -1.33))
            path4.addCurve(to: CGPoint(x: 19.35, y: 7.34), controlPoint1: CGPoint(x: 18.05, y: 2.69), controlPoint2: CGPoint(x: 18.14, y: 4.04))
            path4.addCurve(to: CGPoint(x: 36, y: 44.97), controlPoint1: CGPoint(x: 20.57, y: 10.64), controlPoint2: CGPoint(x: 49.39, y: 43.67))
            path4.addCurve(to: CGPoint(x: 12.05, y: 30.61), controlPoint1: CGPoint(x: 22.6, y: 46.27), controlPoint2: CGPoint(x: 15.78, y: 30.96))
            path4.addCurve(to: CGPoint(x: 1.78, y: 37.98), controlPoint1: CGPoint(x: 8.32, y: 30.27), controlPoint2: CGPoint(x: 5.88, y: 41.33))
            path4.close()
        }
        let path3Layer = createLayer(path3, color.color, rain ? CGPoint(x: 184.02, y: 133.45) : CGPoint(x: 202.23, y: 284.97))
        let path4Layer = createLayer(path4, Color.shadow.light, rain ? CGPoint(x: 184.02, y: 133.45) : CGPoint(x: 202.23, y: 284.97))
        
        let gloves = UIView()
        gloves.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer)

        let clothesView = ClothesView(name: Clothes.man.accessory.gloves.rawValue, color: color)
        clothesView.addSubview(gloves)
        clothesView.frame = gloves.frame
        return clothesView
    }
    
    final class func drawRainGlove(color: Color.clothes, rain: Bool) -> ClothesView {
        let path3 = UIBezierPath()
        let path4 = UIBezierPath()
        path3.move(to: CGPoint(x: 2.14, y: 3.53))
        path3.addCurve(to: CGPoint(x: 19.21, y: 4.75), controlPoint1: CGPoint(x: 6.01, y: -0.81), controlPoint2: CGPoint(x: 12.58, y: -1.95))
        path3.addCurve(to: CGPoint(x: 21.43, y: 22.12), controlPoint1: CGPoint(x: 25.83, y: 11.45), controlPoint2: CGPoint(x: 24.74, y: 20.34))
        path3.addCurve(to: CGPoint(x: 4.32, y: 19.73), controlPoint1: CGPoint(x: 18.12, y: 23.91), controlPoint2: CGPoint(x: 8.58, y: 23.47))
        path3.addCurve(to: CGPoint(x: 2.14, y: 3.53), controlPoint1: CGPoint(x: 0.05, y: 15.98), controlPoint2: CGPoint(x: -1.73, y: 7.88))
        path3.close()
        
        path4.move(to: CGPoint(x: 2.14, y: 3.53))
        path4.addCurve(to: CGPoint(x: 19.21, y: 4.75), controlPoint1: CGPoint(x: 6.01, y: -0.81), controlPoint2: CGPoint(x: 12.58, y: -1.95))
        path4.addCurve(to: CGPoint(x: 21.43, y: 22.12), controlPoint1: CGPoint(x: 25.83, y: 11.45), controlPoint2: CGPoint(x: 24.74, y: 20.34))
        path4.addCurve(to: CGPoint(x: 4.32, y: 19.73), controlPoint1: CGPoint(x: 18.12, y: 23.91), controlPoint2: CGPoint(x: 8.58, y: 23.47))
        path4.addCurve(to: CGPoint(x: 2.14, y: 3.53), controlPoint1: CGPoint(x: 0.05, y: 15.98), controlPoint2: CGPoint(x: -1.73, y: 7.88))
        path4.close()
        let path3Layer = createLayer(path3, color.color, CGPoint(x: 184.02, y: 133.45))
        let path4Layer = createLayer(path4, Color.shadow.light, CGPoint(x: 184.02, y: 133.45))
        
        let gloves = UIView()
        gloves.layer.addSublayers(path3Layer, path4Layer)

        let clothesView = ClothesView(name: Clothes.man.accessory.gloves.rawValue, color: color)
        clothesView.addSubview(gloves)
        clothesView.frame = gloves.frame
        return clothesView
    }
    
}
