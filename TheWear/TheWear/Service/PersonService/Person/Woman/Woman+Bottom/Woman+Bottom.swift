/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBottom(name: Clothes.woman.bottom, color: Color.clothes) -> ClothesView {
        var bottomView = UIView()
            
        switch name {
        case .regularPants:
            bottomView = drawRegularPants(color.color)
        case .tightPants:
            bottomView = drawTightPants(color.color)
        case .widePants:
            bottomView = drawWidePants(color.color)
            bottomView.tag = 101
        case .shorts:
            bottomView = drawShorts(color.color)
        case .threeQuarterPants:
            bottomView = drawThreeQuarterPants(color.color)
        case .shortShorts:
            bottomView = drawShortShorts(color.color)
        case .shortSkirt:
            bottomView = drawShortSkirt(color.color)
        case .longSkirt:
            bottomView = drawLongSkirt(color.color)
        case .pleatedSkirt:
            bottomView = drawPleatedSkirt(color.color)
        }
        
        let clothesView = ClothesView(name: name.rawValue, color: color)
        clothesView.addSubview(bottomView)
        clothesView.frame = bottomView.frame
        return clothesView
    }
    
}
