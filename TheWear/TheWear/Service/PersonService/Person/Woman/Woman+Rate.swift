/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawRate() -> UIView {
        let rateView = UIView(frame: .init(x: 0, y: 0, width: 252, height: 600))
        rateView.addSubview(drawStar4())
        rateView.addSubview(drawBody(true))
        rateView.addSubview(drawRegularPants(Color.clothes.blue.color))
        rateView.addSubview(drawTshirt(Color.clothes.red.color, true))
        rateView.addSubview(drawHaircut())
        rateView.addSubview(drawPhone2())
        rateView.addSubview(drawPhone1())
        rateView.addSubview(drawBorder2())
        rateView.addSubview(drawBorder1())
        rateView.addSubview(drawArm())
        rateView.addSubview(drawStar1())
        rateView.addSubview(drawStar2())
        rateView.addSubview(drawStar3())
        rateView.addSubview(drawStar5())
        return rateView
    }
    
    final class func drawStar1() -> UIView {
        let starColor = UIColor(253, 197, 19)
        
        let star1Path = UIBezierPath()
        star1Path.move(to: CGPoint(x: 10.4, y: 0.38))
        star1Path.addCurve(to: CGPoint(x: 12.41, y: 1.11), controlPoint1: CGPoint(x: 11.1, y: -0.39), controlPoint2: CGPoint(x: 12.37, y: 0.08))
        star1Path.addLine(to: CGPoint(x: 12.61, y: 5.63))
        star1Path.addCurve(to: CGPoint(x: 13.28, y: 6.64), controlPoint1: CGPoint(x: 12.63, y: 6.07), controlPoint2: CGPoint(x: 12.89, y: 6.46))
        star1Path.addLine(to: CGPoint(x: 17.37, y: 8.51))
        star1Path.addCurve(to: CGPoint(x: 17.29, y: 10.67), controlPoint1: CGPoint(x: 18.31, y: 8.94), controlPoint2: CGPoint(x: 18.26, y: 10.3))
        star1Path.addLine(to: CGPoint(x: 13.07, y: 12.27))
        star1Path.addCurve(to: CGPoint(x: 12.33, y: 13.23), controlPoint1: CGPoint(x: 12.67, y: 12.42), controlPoint2: CGPoint(x: 12.38, y: 12.79))
        star1Path.addLine(to: CGPoint(x: 11.8, y: 17.72))
        star1Path.addCurve(to: CGPoint(x: 9.74, y: 18.32), controlPoint1: CGPoint(x: 11.68, y: 18.75), controlPoint2: CGPoint(x: 10.38, y: 19.13))
        star1Path.addLine(to: CGPoint(x: 6.94, y: 14.79))
        star1Path.addCurve(to: CGPoint(x: 5.8, y: 14.38), controlPoint1: CGPoint(x: 6.67, y: 14.45), controlPoint2: CGPoint(x: 6.23, y: 14.29))
        star1Path.addLine(to: CGPoint(x: 1.39, y: 15.28))
        star1Path.addCurve(to: CGPoint(x: 0.2, y: 13.5), controlPoint1: CGPoint(x: 0.38, y: 15.49), controlPoint2: CGPoint(x: -0.37, y: 14.37))
        star1Path.addLine(to: CGPoint(x: 2.68, y: 9.72))
        star1Path.addCurve(to: CGPoint(x: 2.73, y: 8.5), controlPoint1: CGPoint(x: 2.92, y: 9.35), controlPoint2: CGPoint(x: 2.94, y: 8.88))
        star1Path.addLine(to: CGPoint(x: 0.53, y: 4.57))
        star1Path.addCurve(to: CGPoint(x: 1.85, y: 2.87), controlPoint1: CGPoint(x: 0.02, y: 3.66), controlPoint2: CGPoint(x: 0.86, y: 2.59))
        star1Path.addLine(to: CGPoint(x: 6.18, y: 4.06))
        star1Path.addCurve(to: CGPoint(x: 7.35, y: 3.72), controlPoint1: CGPoint(x: 6.6, y: 4.17), controlPoint2: CGPoint(x: 7.05, y: 4.04))
        star1Path.addLine(to: CGPoint(x: 10.4, y: 0.38))
        star1Path.close()
        let star1Layer = createLayer(star1Path, starColor, .zero)
        
        let star1View = UIView(frame: .init(x: 162.08, y: 112.51, width: 18.04, height: 18.76))
        star1View.layer.addSublayer(star1Layer)
        return star1View
    }
    
    final class func drawStar2() -> UIView {
        let starColor = UIColor(253, 197, 19)
        
        let star2Path = UIBezierPath()
        star2Path.move(to: CGPoint(x: 22.93, y: 0.4))
        star2Path.addCurve(to: CGPoint(x: 26.25, y: 2.4), controlPoint1: CGPoint(x: 24.42, y: -0.68), controlPoint2: CGPoint(x: 26.51, y: 0.58))
        star2Path.addLine(to: CGPoint(x: 25.12, y: 10.35))
        star2Path.addCurve(to: CGPoint(x: 25.99, y: 12.35), controlPoint1: CGPoint(x: 25.01, y: 11.12), controlPoint2: CGPoint(x: 25.35, y: 11.89))
        star2Path.addLine(to: CGPoint(x: 32.62, y: 17.08))
        star2Path.addCurve(to: CGPoint(x: 31.77, y: 20.81), controlPoint1: CGPoint(x: 34.14, y: 18.16), controlPoint2: CGPoint(x: 33.61, y: 20.51))
        star2Path.addLine(to: CGPoint(x: 23.79, y: 22.08))
        star2Path.addCurve(to: CGPoint(x: 22.15, y: 23.49), controlPoint1: CGPoint(x: 23.02, y: 22.2), controlPoint2: CGPoint(x: 22.39, y: 22.75))
        star2Path.addLine(to: CGPoint(x: 19.76, y: 31.13))
        star2Path.addCurve(to: CGPoint(x: 15.91, y: 31.44), controlPoint1: CGPoint(x: 19.21, y: 32.89), controlPoint2: CGPoint(x: 16.79, y: 33.08))
        star2Path.addLine(to: CGPoint(x: 12.11, y: 24.28))
        star2Path.addCurve(to: CGPoint(x: 10.23, y: 23.15), controlPoint1: CGPoint(x: 11.74, y: 23.59), controlPoint2: CGPoint(x: 11.02, y: 23.15))
        star2Path.addLine(to: CGPoint(x: 2.13, y: 23.15))
        star2Path.addCurve(to: CGPoint(x: 0.59, y: 19.61), controlPoint1: CGPoint(x: 0.27, y: 23.15), controlPoint2: CGPoint(x: -0.7, y: 20.92))
        star2Path.addLine(to: CGPoint(x: 6.22, y: 13.91))
        star2Path.addCurve(to: CGPoint(x: 6.7, y: 11.8), controlPoint1: CGPoint(x: 6.77, y: 13.36), controlPoint2: CGPoint(x: 6.95, y: 12.54))
        star2Path.addLine(to: CGPoint(x: 4.08, y: 4.15))
        star2Path.addCurve(to: CGPoint(x: 6.98, y: 1.66), controlPoint1: CGPoint(x: 3.48, y: 2.4), controlPoint2: CGPoint(x: 5.31, y: 0.83))
        star2Path.addLine(to: CGPoint(x: 14.27, y: 5.3))
        star2Path.addCurve(to: CGPoint(x: 16.44, y: 5.12), controlPoint1: CGPoint(x: 14.97, y: 5.65), controlPoint2: CGPoint(x: 15.81, y: 5.58))
        star2Path.addLine(to: CGPoint(x: 22.93, y: 0.4))
        star2Path.close()
        let star2Layer = createLayer(star2Path, starColor, .zero)
        
        let star2View = UIView(frame: .init(x: 168.31, y: 63.5, width: 33.5, height: 32.57))
        star2View.layer.addSublayer(star2Layer)
        return star2View
    }
    
    final class func drawStar3() -> UIView {
        let starColor = UIColor(253, 197, 19)
        
        let star3Path = UIBezierPath()
        star3Path.move(to: CGPoint(x: 11.83, y: 1.59))
        star3Path.addCurve(to: CGPoint(x: 15.43, y: 0.89), controlPoint1: CGPoint(x: 12.18, y: -0.14), controlPoint2: CGPoint(x: 14.45, y: -0.58))
        star3Path.addLine(to: CGPoint(x: 19.69, y: 7.29))
        star3Path.addCurve(to: CGPoint(x: 21.57, y: 8.17), controlPoint1: CGPoint(x: 20.11, y: 7.91), controlPoint2: CGPoint(x: 20.83, y: 8.25))
        star3Path.addLine(to: CGPoint(x: 29.22, y: 7.3))
        star3Path.addCurve(to: CGPoint(x: 31.01, y: 10.51), controlPoint1: CGPoint(x: 30.98, y: 7.1), controlPoint2: CGPoint(x: 32.1, y: 9.12))
        star3Path.addLine(to: CGPoint(x: 26.22, y: 16.54))
        star3Path.addCurve(to: CGPoint(x: 25.97, y: 18.6), controlPoint1: CGPoint(x: 25.76, y: 17.13), controlPoint2: CGPoint(x: 25.66, y: 17.92))
        star3Path.addLine(to: CGPoint(x: 29.16, y: 25.6))
        star3Path.addCurve(to: CGPoint(x: 26.66, y: 28.29), controlPoint1: CGPoint(x: 29.89, y: 27.21), controlPoint2: CGPoint(x: 28.32, y: 28.9))
        star3Path.addLine(to: CGPoint(x: 19.44, y: 25.61))
        star3Path.addCurve(to: CGPoint(x: 17.4, y: 26.01), controlPoint1: CGPoint(x: 18.74, y: 25.35), controlPoint2: CGPoint(x: 17.95, y: 25.5))
        star3Path.addLine(to: CGPoint(x: 11.72, y: 31.2))
        star3Path.addCurve(to: CGPoint(x: 8.39, y: 29.65), controlPoint1: CGPoint(x: 10.42, y: 32.4), controlPoint2: CGPoint(x: 8.32, y: 31.42))
        star3Path.addLine(to: CGPoint(x: 8.71, y: 21.97))
        star3Path.addCurve(to: CGPoint(x: 7.71, y: 20.16), controlPoint1: CGPoint(x: 8.74, y: 21.22), controlPoint2: CGPoint(x: 8.36, y: 20.52))
        star3Path.addLine(to: CGPoint(x: 1.01, y: 16.36))
        star3Path.addCurve(to: CGPoint(x: 1.45, y: 12.72), controlPoint1: CGPoint(x: -0.53, y: 15.49), controlPoint2: CGPoint(x: -0.25, y: 13.2))
        star3Path.addLine(to: CGPoint(x: 8.87, y: 10.65))
        star3Path.addCurve(to: CGPoint(x: 10.28, y: 9.13), controlPoint1: CGPoint(x: 9.59, y: 10.45), controlPoint2: CGPoint(x: 10.13, y: 9.86))
        star3Path.addLine(to: CGPoint(x: 11.83, y: 1.59))
        star3Path.close()
        let star3Layer = createLayer(star3Path, starColor, .zero)
        
        let star3View = UIView(frame: .init(x: 86.57, y: 81.62, width: 31.44, height: 31.73))
        star3View.layer.addSublayer(star3Layer)
        return star3View
    }
    
    final class func drawStar4() -> UIView {
        let starColor = UIColor(253, 197, 19)
        
        let star4Path = UIBezierPath()
        star4Path.move(to: CGPoint(x: 19.25, y: 0.83))
        star4Path.addCurve(to: CGPoint(x: 23.27, y: 2.06), controlPoint1: CGPoint(x: 20.54, y: -0.73), controlPoint2: CGPoint(x: 23.07, y: 0.04))
        star4Path.addLine(to: CGPoint(x: 24.13, y: 10.83))
        star4Path.addCurve(to: CGPoint(x: 25.55, y: 12.73), controlPoint1: CGPoint(x: 24.21, y: 11.68), controlPoint2: CGPoint(x: 24.76, y: 12.42))
        star4Path.addLine(to: CGPoint(x: 33.75, y: 15.97))
        star4Path.addCurve(to: CGPoint(x: 33.83, y: 20.18), controlPoint1: CGPoint(x: 35.64, y: 16.72), controlPoint2: CGPoint(x: 35.68, y: 19.37))
        star4Path.addLine(to: CGPoint(x: 25.75, y: 23.7))
        star4Path.addCurve(to: CGPoint(x: 24.38, y: 25.65), controlPoint1: CGPoint(x: 24.96, y: 24.05), controlPoint2: CGPoint(x: 24.44, y: 24.8))
        star4Path.addLine(to: CGPoint(x: 23.83, y: 34.45))
        star4Path.addCurve(to: CGPoint(x: 19.86, y: 35.82), controlPoint1: CGPoint(x: 23.71, y: 36.47), controlPoint2: CGPoint(x: 21.2, y: 37.33))
        star4Path.addLine(to: CGPoint(x: 14.01, y: 29.22))
        star4Path.addCurve(to: CGPoint(x: 11.74, y: 28.53), controlPoint1: CGPoint(x: 13.44, y: 28.58), controlPoint2: CGPoint(x: 12.56, y: 28.32))
        star4Path.addLine(to: CGPoint(x: 3.2, y: 30.72))
        star4Path.addCurve(to: CGPoint(x: 0.67, y: 27.37), controlPoint1: CGPoint(x: 1.23, y: 31.23), controlPoint2: CGPoint(x: -0.36, y: 29.11))
        star4Path.addLine(to: CGPoint(x: 5.13, y: 19.76))
        star4Path.addCurve(to: CGPoint(x: 5.09, y: 17.39), controlPoint1: CGPoint(x: 5.56, y: 19.03), controlPoint2: CGPoint(x: 5.55, y: 18.11))
        star4Path.addLine(to: CGPoint(x: 0.36, y: 9.95))
        star4Path.addCurve(to: CGPoint(x: 2.77, y: 6.5), controlPoint1: CGPoint(x: -0.72, y: 8.24), controlPoint2: CGPoint(x: 0.8, y: 6.07))
        star4Path.addLine(to: CGPoint(x: 11.38, y: 8.4))
        star4Path.addCurve(to: CGPoint(x: 13.63, y: 7.62), controlPoint1: CGPoint(x: 12.22, y: 8.58), controlPoint2: CGPoint(x: 13.08, y: 8.28))
        star4Path.addLine(to: CGPoint(x: 19.25, y: 0.83))
        star4Path.close()
        let star4Layer = createLayer(star4Path, starColor, .zero)
        
        let star4View = UIView(frame: .init(x: 121.94, y: 11.73, width: 35.2, height: 36.59))
        star4View.layer.addSublayer(star4Layer)
        return star4View
    }
    
    final class func drawStar5() -> UIView {
        let starColor = UIColor(253, 197, 19)
        
        let star5Path = UIBezierPath()
        star5Path.move(to: CGPoint(x: 17.34, y: 2.64))
        star5Path.addCurve(to: CGPoint(x: 22.85, y: 1.36), controlPoint1: CGPoint(x: 17.76, y: -0.16), controlPoint2: CGPoint(x: 21.24, y: -0.97))
        star5Path.addLine(to: CGPoint(x: 29.88, y: 11.5))
        star5Path.addCurve(to: CGPoint(x: 32.84, y: 12.83), controlPoint1: CGPoint(x: 30.56, y: 12.48), controlPoint2: CGPoint(x: 31.7, y: 13))
        star5Path.addLine(to: CGPoint(x: 44.58, y: 11.13))
        star5Path.addCurve(to: CGPoint(x: 47.56, y: 16.22), controlPoint1: CGPoint(x: 47.28, y: 10.74), controlPoint2: CGPoint(x: 49.15, y: 13.95))
        star5Path.addLine(to: CGPoint(x: 40.6, y: 26.12))
        star5Path.addCurve(to: CGPoint(x: 40.36, y: 29.44), controlPoint1: CGPoint(x: 39.93, y: 27.08), controlPoint2: CGPoint(x: 39.83, y: 28.36))
        star5Path.addLine(to: CGPoint(x: 45.76, y: 40.58))
        star5Path.addCurve(to: CGPoint(x: 42.09, y: 45.01), controlPoint1: CGPoint(x: 47, y: 43.14), controlPoint2: CGPoint(x: 44.69, y: 45.93))
        star5Path.addLine(to: CGPoint(x: 30.76, y: 40.99))
        star5Path.addCurve(to: CGPoint(x: 27.65, y: 41.71), controlPoint1: CGPoint(x: 29.67, y: 40.6), controlPoint2: CGPoint(x: 28.47, y: 40.88))
        star5Path.addLine(to: CGPoint(x: 19.25, y: 50.3))
        star5Path.addCurve(to: CGPoint(x: 14, y: 47.94), controlPoint1: CGPoint(x: 17.32, y: 52.27), controlPoint2: CGPoint(x: 14.01, y: 50.79))
        star5Path.addLine(to: CGPoint(x: 13.96, y: 35.56))
        star5Path.addCurve(to: CGPoint(x: 12.28, y: 32.68), controlPoint1: CGPoint(x: 13.96, y: 34.36), controlPoint2: CGPoint(x: 13.31, y: 33.25))
        star5Path.addLine(to: CGPoint(x: 1.68, y: 26.85))
        star5Path.addCurve(to: CGPoint(x: 2.11, y: 20.97), controlPoint1: CGPoint(x: -0.76, y: 25.51), controlPoint2: CGPoint(x: -0.48, y: 21.8))
        star5Path.addLine(to: CGPoint(x: 13.41, y: 17.33))
        star5Path.addCurve(to: CGPoint(x: 15.48, y: 14.84), controlPoint1: CGPoint(x: 14.5, y: 16.98), controlPoint2: CGPoint(x: 15.31, y: 16.02))
        star5Path.addLine(to: CGPoint(x: 17.34, y: 2.64))
        star5Path.close()
        let star5Layer = createLayer(star5Path, starColor, .zero)
        
        let star5View = UIView(frame: .init(x: 34.54, y: 8.72, width: 48.14, height: 51.2))
        star5View.layer.addSublayer(star5Layer)
        return star5View
    }
    
    final class func drawPhone2() -> UIView {
        let phone2Path = UIBezierPath()
        phone2Path.move(to: CGPoint(x: 11.46, y: 2.68))
        phone2Path.addLine(to: CGPoint(x: 0.19, y: 34.16))
        phone2Path.addCurve(to: CGPoint(x: 3.24, y: 38.49), controlPoint1: CGPoint(x: -0.56, y: 36.27), controlPoint2: CGPoint(x: 1, y: 38.49))
        phone2Path.addLine(to: CGPoint(x: 17.68, y: 38.49))
        phone2Path.addCurve(to: CGPoint(x: 21.48, y: 35.82), controlPoint1: CGPoint(x: 19.38, y: 38.49), controlPoint2: CGPoint(x: 20.9, y: 37.42))
        phone2Path.addLine(to: CGPoint(x: 32.74, y: 4.33))
        phone2Path.addCurve(to: CGPoint(x: 29.69, y: 0), controlPoint1: CGPoint(x: 33.5, y: 2.22), controlPoint2: CGPoint(x: 31.94, y: 0))
        phone2Path.addLine(to: CGPoint(x: 15.26, y: 0))
        phone2Path.addCurve(to: CGPoint(x: 11.46, y: 2.68), controlPoint1: CGPoint(x: 13.55, y: 0), controlPoint2: CGPoint(x: 12.03, y: 1.07))
        phone2Path.close()
        let phone2PathLayer = createLayer(phone2Path, UIColor(37, 37, 37), .zero)
        
        let phone2View = UIView(frame: .init(x: 178.82, y: 110.51, width: 32.94, height: 38.49))
        phone2View.layer.addSublayer(phone2PathLayer)
        return phone2View
    }
    
    final class func drawPhone1() -> UIView {
        let phone1Path = UIBezierPath()
        phone1Path.move(to: CGPoint(x: 11.46, y: 2.68))
        phone1Path.addLine(to: CGPoint(x: 0.19, y: 34.16))
        phone1Path.addCurve(to: CGPoint(x: 3.24, y: 38.49), controlPoint1: CGPoint(x: -0.56, y: 36.27), controlPoint2: CGPoint(x: 1, y: 38.49))
        phone1Path.addLine(to: CGPoint(x: 17.68, y: 38.49))
        phone1Path.addCurve(to: CGPoint(x: 21.48, y: 35.82), controlPoint1: CGPoint(x: 19.38, y: 38.49), controlPoint2: CGPoint(x: 20.9, y: 37.42))
        phone1Path.addLine(to: CGPoint(x: 32.74, y: 4.33))
        phone1Path.addCurve(to: CGPoint(x: 29.69, y: 0), controlPoint1: CGPoint(x: 33.5, y: 2.22), controlPoint2: CGPoint(x: 31.94, y: -0))
        phone1Path.addLine(to: CGPoint(x: 15.26, y: 0))
        phone1Path.addCurve(to: CGPoint(x: 11.46, y: 2.68), controlPoint1: CGPoint(x: 13.55, y: 0), controlPoint2: CGPoint(x: 12.03, y: 1.07))
        phone1Path.close()
        let phone1PathLayer = createLayer(phone1Path, UIColor.black, .zero)
        phone1PathLayer.lineJoin = .round
        phone1PathLayer.lineCap = .round
        phone1PathLayer.lineWidth = 0.81
        phone1PathLayer.strokeColor = UIColor(37, 37, 37).cgColor
        
        let phone1View = UIView(frame: .init(x: 180.4, y: 112.0, width: 32.94, height: 38.49))
        phone1View.layer.addSublayer(phone1PathLayer)
        return phone1View
    }
    
    final class func drawBorder2() -> UIView {
        let border2Path = UIBezierPath()
        border2Path.move(to: CGPoint(x: 0, y: 0))
        border2Path.addCurve(to: CGPoint(x: 3.21, y: 0.97), controlPoint1: CGPoint(x: 0.81, y: 0), controlPoint2: CGPoint(x: 1.8, y: -0.07))
        border2Path.addCurve(to: CGPoint(x: 5.12, y: 4.37), controlPoint1: CGPoint(x: 4.62, y: 2), controlPoint2: CGPoint(x: 5.12, y: 3.28))
        let border2PathLayer = createLayer(border2Path, UIColor.clear, .zero)
        border2PathLayer.lineJoin = .round
        border2PathLayer.lineCap = .round
        border2PathLayer.lineWidth = 0.81
        border2PathLayer.strokeColor = UIColor(37, 37, 37).cgColor
        
        let border2View = UIView(frame: .init(x: 208.21, y: 110.92, width: 5.12, height: 4.37))
        border2View.layer.addSublayer(border2PathLayer)
        return border2View
    }
    
    final class func drawBorder1() -> UIView {
        let border1Path = UIBezierPath()
        border1Path.move(to: CGPoint(x: 0.13, y: 0))
        border1Path.addCurve(to: CGPoint(x: 0.9, y: 3.2), controlPoint1: CGPoint(x: -0.22, y: 0.81), controlPoint2: CGPoint(x: 0.16, y: 2.12))
        border1Path.addCurve(to: CGPoint(x: 3.7, y: 5.41), controlPoint1: CGPoint(x: 1.64, y: 4.28), controlPoint2: CGPoint(x: 2.73, y: 5.31))
        let border1PathLayer = createLayer(border1Path, UIColor.clear, .zero)
        border1PathLayer.lineJoin = .round
        border1PathLayer.lineCap = .round
        border1PathLayer.lineWidth = 0.81
        border1PathLayer.strokeColor = UIColor(37, 37, 37).cgColor
        
        let border1View = UIView(frame: .init(x: 179.22, y: 145.10, width: 3.7, height: 5.41))
        border1View.layer.addSublayer(border1PathLayer)
        return border1View
    }
    
    final class func drawArm() -> UIView {
        let armPath = UIBezierPath()
        armPath.move(to: CGPoint(x: 28.76, y: 14.67))
        armPath.addCurve(to: CGPoint(x: 23.65, y: 33.72), controlPoint1: CGPoint(x: 27.58, y: 18.74), controlPoint2: CGPoint(x: 23.93, y: 30.21))
        armPath.addLine(to: CGPoint(x: 10.5, y: 32.18))
        armPath.addCurve(to: CGPoint(x: 8.5, y: 25.18), controlPoint1: CGPoint(x: 11.25, y: 28.94), controlPoint2: CGPoint(x: 9.55, y: 26.67))
        armPath.addCurve(to: CGPoint(x: 3.33, y: 18.69), controlPoint1: CGPoint(x: 7.44, y: 23.69), controlPoint2: CGPoint(x: 5.85, y: 21.87))
        armPath.addCurve(to: CGPoint(x: 0.06, y: 8.17), controlPoint1: CGPoint(x: 0.81, y: 15.52), controlPoint2: CGPoint(x: -0.29, y: 12.02))
        armPath.addCurve(to: CGPoint(x: 4.18, y: 0.77), controlPoint1: CGPoint(x: 0.41, y: 4.31), controlPoint2: CGPoint(x: 1.3, y: 1.63))
        armPath.addCurve(to: CGPoint(x: 16.9, y: 7.79), controlPoint1: CGPoint(x: 7.07, y: -0.09), controlPoint2: CGPoint(x: 13.45, y: 5.43))
        armPath.addCurve(to: CGPoint(x: 25.32, y: 12.11), controlPoint1: CGPoint(x: 20.34, y: 10.15), controlPoint2: CGPoint(x: 22.2, y: 11.82))
        armPath.addLine(to: CGPoint(x: 29.66, y: 0))
        armPath.addCurve(to: CGPoint(x: 28.76, y: 14.67), controlPoint1: CGPoint(x: 33.43, y: 0.69), controlPoint2: CGPoint(x: 29.95, y: 10.6))
        armPath.close()
        let armPathLayer = createLayer(armPath, skinColor, .zero)
        
        let armView = UIView(frame: .init(x: 180.63, y: 125.58, width: 31.37, height: 33.72))
        armView.layer.addSublayer(armPathLayer)
        return armView
    }
    
}
