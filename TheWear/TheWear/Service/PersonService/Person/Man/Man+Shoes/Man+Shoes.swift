/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawShoes(name: Clothes.man.shoes, color: Color.clothes) -> ClothesView {
        var shoesView = UIView()
            
        switch name {
        case .gym:
            shoesView = drawGym(color.color)
        case .sneakers:
            shoesView = drawSneakers(color.color)
        case .loafers:
            shoesView = drawLoafers(color.color)
        case .boots:
            shoesView = drawBoots(color.color)
        case .slates:
            shoesView = drawSlates(color.color)
        case .slippers:
            shoesView = drawSlippers(color.color)
        }
        
        let clothesView = ClothesView(name: name.rawValue, color: color)
        clothesView.addSubview(shoesView)
        clothesView.frame = shoesView.frame
        return clothesView
    }
    
}
