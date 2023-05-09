/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawGloves(color: Color.clothes, rain: Bool) -> ClothesView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.01, y: 39.94))
        path.addCurve(to: CGPoint(x: 19.8, y: 7.81), controlPoint1: CGPoint(x: -5, y: 35.46), controlPoint2: CGPoint(x: 17.79, y: 11.41))
        path.addCurve(to: CGPoint(x: 22.63, y: 1.1), controlPoint1: CGPoint(x: 21.8, y: 4.2), controlPoint2: CGPoint(x: 21.62, y: 4.16))
        path.addCurve(to: CGPoint(x: 38.04, y: 5.82), controlPoint1: CGPoint(x: 23.64, y: -1.97), controlPoint2: CGPoint(x: 39.34, y: 1.98))
        path.addCurve(to: CGPoint(x: 35.5, y: 14.52), controlPoint1: CGPoint(x: 36.75, y: 9.66), controlPoint2: CGPoint(x: 35.99, y: 11.07))
        path.addCurve(to: CGPoint(x: 36.06, y: 35.25), controlPoint1: CGPoint(x: 34.81, y: 19.38), controlPoint2: CGPoint(x: 40.09, y: 35.35))
        path.addCurve(to: CGPoint(x: 27.76, y: 27.43), controlPoint1: CGPoint(x: 32.03, y: 35.14), controlPoint2: CGPoint(x: 30.61, y: 28.12))
        path.addCurve(to: CGPoint(x: 1.01, y: 39.94), controlPoint1: CGPoint(x: 24.91, y: 26.73), controlPoint2: CGPoint(x: 7.02, y: 44.42))
        path.close()
        let pathLayer = createLayer(path, color.color, CGPoint(x: 16.41, y: 290.18))
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 1.01, y: 39.94))
        path1.addCurve(to: CGPoint(x: 19.8, y: 7.81), controlPoint1: CGPoint(x: -5, y: 35.46), controlPoint2: CGPoint(x: 17.79, y: 11.41))
        path1.addCurve(to: CGPoint(x: 22.63, y: 1.1), controlPoint1: CGPoint(x: 21.8, y: 4.2), controlPoint2: CGPoint(x: 21.62, y: 4.16))
        path1.addCurve(to: CGPoint(x: 38.04, y: 5.82), controlPoint1: CGPoint(x: 23.64, y: -1.97), controlPoint2: CGPoint(x: 39.34, y: 1.98))
        path1.addCurve(to: CGPoint(x: 35.5, y: 14.52), controlPoint1: CGPoint(x: 36.75, y: 9.66), controlPoint2: CGPoint(x: 35.99, y: 11.07))
        path1.addCurve(to: CGPoint(x: 36.06, y: 35.25), controlPoint1: CGPoint(x: 34.81, y: 19.38), controlPoint2: CGPoint(x: 40.09, y: 35.35))
        path1.addCurve(to: CGPoint(x: 27.76, y: 27.43), controlPoint1: CGPoint(x: 32.03, y: 35.14), controlPoint2: CGPoint(x: 30.61, y: 28.12))
        path1.addCurve(to: CGPoint(x: 1.01, y: 39.94), controlPoint1: CGPoint(x: 24.91, y: 26.73), controlPoint2: CGPoint(x: 7.02, y: 44.42))
        path1.close()
        let path1Layer = createLayer(path1, Color.shadow.light, CGPoint(x: 16.41, y: 290.18))
        
        let norain = UIBezierPath()
        let norain1 = UIBezierPath()
        if rain {
            
        } else {
            norain.move(to: CGPoint(x: 2.55, y: 38.2))
            norain.addCurve(to: CGPoint(x: 2.74, y: 14.12), controlPoint1: CGPoint(x: -1.34, y: 36.31), controlPoint2: CGPoint(x: 2.89, y: 17.56))
            norain.addCurve(to: CGPoint(x: 0.01, y: 4.48), controlPoint1: CGPoint(x: 2.6, y: 10.68), controlPoint2: CGPoint(x: 0.47, y: 7.92))
            norain.addCurve(to: CGPoint(x: 14.18, y: 0.75), controlPoint1: CGPoint(x: -0.44, y: 1.04), controlPoint2: CGPoint(x: 13.21, y: -1.26))
            norain.addCurve(to: CGPoint(x: 16.65, y: 8.22), controlPoint1: CGPoint(x: 15.15, y: 2.76), controlPoint2: CGPoint(x: 15.32, y: 4.59))
            norain.addCurve(to: CGPoint(x: 31.42, y: 41.58), controlPoint1: CGPoint(x: 17.99, y: 11.85), controlPoint2: CGPoint(x: 38.44, y: 40.31))
            norain.addCurve(to: CGPoint(x: 11.03, y: 30.09), controlPoint1: CGPoint(x: 24.41, y: 42.85), controlPoint2: CGPoint(x: 14.76, y: 30.44))
            norain.addCurve(to: CGPoint(x: 2.55, y: 38.2), controlPoint1: CGPoint(x: 7.31, y: 29.74), controlPoint2: CGPoint(x: 6.45, y: 40.08))
            norain.close()
            
            norain1.move(to: CGPoint(x: 2.55, y: 38.2))
            norain1.addCurve(to: CGPoint(x: 2.74, y: 14.12), controlPoint1: CGPoint(x: -1.34, y: 36.31), controlPoint2: CGPoint(x: 2.89, y: 17.56))
            norain1.addCurve(to: CGPoint(x: 0.01, y: 4.48), controlPoint1: CGPoint(x: 2.6, y: 10.68), controlPoint2: CGPoint(x: 0.47, y: 7.92))
            norain1.addCurve(to: CGPoint(x: 14.18, y: 0.75), controlPoint1: CGPoint(x: -0.44, y: 1.04), controlPoint2: CGPoint(x: 13.21, y: -1.26))
            norain1.addCurve(to: CGPoint(x: 16.65, y: 8.22), controlPoint1: CGPoint(x: 15.15, y: 2.76), controlPoint2: CGPoint(x: 15.32, y: 4.59))
            norain1.addCurve(to: CGPoint(x: 31.42, y: 41.58), controlPoint1: CGPoint(x: 17.99, y: 11.85), controlPoint2: CGPoint(x: 38.44, y: 40.31))
            norain1.addCurve(to: CGPoint(x: 11.03, y: 30.09), controlPoint1: CGPoint(x: 24.41, y: 42.85), controlPoint2: CGPoint(x: 14.76, y: 30.44))
            norain1.addCurve(to: CGPoint(x: 2.55, y: 38.2), controlPoint1: CGPoint(x: 7.31, y: 29.74), controlPoint2: CGPoint(x: 6.45, y: 40.08))
            norain1.close()
        }
        let norainLayer = createLayer(norain, color.color, CGPoint(x: 204.34, y: 279.78))
        let norain1Layer = createLayer(norain1, Color.shadow.light, CGPoint(x: 204.34, y: 279.78))

        let gloves = UIView()
        gloves.layer.addSublayers(pathLayer, path1Layer, norainLayer, norain1Layer)
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.gloves.rawValue, color: color)
        clothesView.addSubview(gloves)
        clothesView.frame = gloves.frame
        return clothesView
    }
    
    final class func drawRainGlove(color: Color.clothes, rain: Bool) -> ClothesView {
        let rain = UIBezierPath()
        rain.move(to: CGPoint(x: 2.03, y: 3.68))
        rain.addCurve(to: CGPoint(x: 17.5, y: 5.05), controlPoint1: CGPoint(x: 6.12, y: -0.9), controlPoint2: CGPoint(x: 10.51, y: -2.01))
        rain.addCurve(to: CGPoint(x: 19.76, y: 20.86), controlPoint1: CGPoint(x: 24.48, y: 12.11), controlPoint2: CGPoint(x: 23.01, y: 19.41))
        rain.addCurve(to: CGPoint(x: 4.49, y: 18.52), controlPoint1: CGPoint(x: 16.51, y: 22.3), controlPoint2: CGPoint(x: 8.31, y: 21.67))
        rain.addCurve(to: CGPoint(x: 2.03, y: 3.68), controlPoint1: CGPoint(x: 0.66, y: 15.38), controlPoint2: CGPoint(x: -2.05, y: 8.26))
        rain.close()
        let rain1 = UIBezierPath()
        rain1.move(to: CGPoint(x: 2.03, y: 3.68))
        rain1.addCurve(to: CGPoint(x: 17.5, y: 5.05), controlPoint1: CGPoint(x: 6.12, y: -0.9), controlPoint2: CGPoint(x: 10.51, y: -2.01))
        rain1.addCurve(to: CGPoint(x: 19.76, y: 20.86), controlPoint1: CGPoint(x: 24.48, y: 12.11), controlPoint2: CGPoint(x: 23.01, y: 19.41))
        rain1.addCurve(to: CGPoint(x: 4.49, y: 18.52), controlPoint1: CGPoint(x: 16.51, y: 22.3), controlPoint2: CGPoint(x: 8.31, y: 21.67))
        rain1.addCurve(to: CGPoint(x: 2.03, y: 3.68), controlPoint1: CGPoint(x: 0.66, y: 15.38), controlPoint2: CGPoint(x: -2.05, y: 8.26))
        rain1.close()
        let rainLayer = createLayer(rain, color.color, CGPoint(x: 184.6, y: 135.44))
        let rain1Layer = createLayer(rain1, Color.shadow.light, CGPoint(x: 184.6, y: 135.44))

        let gloves = UIView()
        gloves.layer.addSublayers(rainLayer, rain1Layer)
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.gloves.rawValue, color: color)
        clothesView.addSubview(gloves)
        clothesView.frame = gloves.frame
        return clothesView
    }
    
}
