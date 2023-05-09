/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawTop(name: Clothes.woman.top, color: Color.clothes, rain: Bool) -> ClothesView {
        var topView = UIView()
            
        switch name {
        case .lightJacket:
            topView = drawLightJacket(color.color, rain)
        case .coat:
            topView = drawCoat(color.color, rain)
        case .downJacketWithCape:
            topView = drawDownJacketWithCape(color.color, rain)
        case .downJacketWithoutCape:
            topView = drawDownJacketWithoutCape(color.color, rain)
        case .tShirt:
            topView = drawTshirt(color.color, rain)
        case .topTankJewel:
            topView = drawTopTankJewel(color.color, rain)
        case .topTankSquare:
            topView = drawTopTankSquare(color.color, rain)
        case .polo:
            topView = drawPolo(color.color, rain)
        case .longsleeve:
            topView = drawLongsleeve(color.color, rain)
        case .blouse:
            topView = drawBlouse(color.color, rain)
        case .tunic:
            topView = drawTunic(color.color, rain)
        case .dress:
            topView = drawDress(color.color, rain)
            topView.tag = 103
        case .sweatshirt:
            topView = drawSweatshirt(color.color, rain)
        case .hoodie:
            topView = drawHoodie(color.color, rain)
        case .hoodieWithZipper:
            topView = drawHoodieWithZipper(color.color, rain)
        case .shirt:
            topView = drawShirt(color.color, rain)
        }
        
        let clothesView = ClothesView(name: name.rawValue, color: color)
        clothesView.addSubview(topView)
        clothesView.frame = topView.frame
        return clothesView
    }
    
}
