/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawTightPants(_ color: UIColor) -> UIView {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 51.3, y: 245.65))
        path.addCurve(to: CGPoint(x: 73.16, y: 245.04), controlPoint1: CGPoint(x: 52.93, y: 248.4), controlPoint2: CGPoint(x: 72.19, y: 248.31))
        path.addCurve(to: CGPoint(x: 66.56, y: 137.54), controlPoint1: CGPoint(x: 74.12, y: 241.76), controlPoint2: CGPoint(x: 67.74, y: 164.69))
        path.addCurve(to: CGPoint(x: 54.64, y: 0), controlPoint1: CGPoint(x: 65.39, y: 110.39), controlPoint2: CGPoint(x: 54.64, y: 0))
        path.addLine(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: 32.01, y: 145.81))
        path.addCurve(to: CGPoint(x: 37.48, y: 179.63), controlPoint1: CGPoint(x: 32.01, y: 145.81), controlPoint2: CGPoint(x: 33.77, y: 161.54))
        path.addCurve(to: CGPoint(x: 51.3, y: 245.65), controlPoint1: CGPoint(x: 41.2, y: 197.72), controlPoint2: CGPoint(x: 49.67, y: 242.91))
        path.close()
        let pathLayer = createLayer(path, color, CGPoint(x: 119.96, y: 316))
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 51.3, y: 245.65))
        path2.addCurve(to: CGPoint(x: 73.16, y: 245.04), controlPoint1: CGPoint(x: 52.93, y: 248.4), controlPoint2: CGPoint(x: 72.19, y: 248.31))
        path2.addCurve(to: CGPoint(x: 66.56, y: 137.54), controlPoint1: CGPoint(x: 74.12, y: 241.76), controlPoint2: CGPoint(x: 67.74, y: 164.69))
        path2.addCurve(to: CGPoint(x: 54.64, y: 0), controlPoint1: CGPoint(x: 65.39, y: 110.39), controlPoint2: CGPoint(x: 54.64, y: 0))
        path2.addLine(to: CGPoint.zero)
        path2.addLine(to: CGPoint(x: 32.01, y: 145.81))
        path2.addCurve(to: CGPoint(x: 37.48, y: 179.63), controlPoint1: CGPoint(x: 32.01, y: 145.81), controlPoint2: CGPoint(x: 33.77, y: 161.54))
        path2.addCurve(to: CGPoint(x: 51.3, y: 245.65), controlPoint1: CGPoint(x: 41.2, y: 197.72), controlPoint2: CGPoint(x: 49.67, y: 242.91))
        path2.close()
        let path2Layer = createLayer(path2, Color.shadow.bold, CGPoint(x: 119.96, y: 316))
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 40.75, y: 143.81))
        path3.addCurve(to: CGPoint(x: 56.12, y: 0), controlPoint1: CGPoint(x: 44.78, y: 122.96), controlPoint2: CGPoint(x: 56.12, y: 0))
        path3.addLine(to: CGPoint.zero)
        path3.addLine(to: CGPoint(x: 4.3, y: 147.51))
        path3.addCurve(to: CGPoint(x: 2.38, y: 175.52), controlPoint1: CGPoint(x: 4.3, y: 147.51), controlPoint2: CGPoint(x: 3.06, y: 155.96))
        path3.addCurve(to: CGPoint(x: 1.65, y: 244.44), controlPoint1: CGPoint(x: 1.71, y: 195.08), controlPoint2: CGPoint(x: 1.67, y: 240.82))
        path3.addCurve(to: CGPoint(x: 23.97, y: 245.73), controlPoint1: CGPoint(x: 1.64, y: 248.06), controlPoint2: CGPoint(x: 22.37, y: 248.17))
        path3.addCurve(to: CGPoint(x: 40.75, y: 143.81), controlPoint1: CGPoint(x: 25.57, y: 243.3), controlPoint2: CGPoint(x: 36.72, y: 164.66))
        path3.close()
        let path3Layer = createLayer(path3, color, CGPoint(x: 87.13, y: 316))
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 40.75, y: 143.81))
        path4.addCurve(to: CGPoint(x: 56.12, y: 0), controlPoint1: CGPoint(x: 44.78, y: 122.96), controlPoint2: CGPoint(x: 56.12, y: 0))
        path4.addLine(to: CGPoint.zero)
        path4.addLine(to: CGPoint(x: 4.3, y: 147.51))
        path4.addCurve(to: CGPoint(x: 2.38, y: 175.52), controlPoint1: CGPoint(x: 4.3, y: 147.51), controlPoint2: CGPoint(x: 3.06, y: 155.96))
        path4.addCurve(to: CGPoint(x: 1.65, y: 244.44), controlPoint1: CGPoint(x: 1.71, y: 195.08), controlPoint2: CGPoint(x: 1.67, y: 240.82))
        path4.addCurve(to: CGPoint(x: 23.97, y: 245.73), controlPoint1: CGPoint(x: 1.64, y: 248.06), controlPoint2: CGPoint(x: 22.37, y: 248.17))
        path4.addCurve(to: CGPoint(x: 40.75, y: 143.81), controlPoint1: CGPoint(x: 25.57, y: 243.3), controlPoint2: CGPoint(x: 36.72, y: 164.66))
        path4.close()
        let path4Layer = createLayer(path4, Color.shadow.light, CGPoint(x: 87.13, y: 316))
        
        let tightPantsView = UIView()
        tightPantsView.layer.addSublayers(pathLayer, path2Layer, path3Layer, path4Layer)
        return tightPantsView
    }
    
}
