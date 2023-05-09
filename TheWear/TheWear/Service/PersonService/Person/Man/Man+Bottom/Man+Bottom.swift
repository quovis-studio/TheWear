/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBottom(name: Clothes.man.bottom, color: Color.clothes) -> ClothesView {
        var bottomView = UIView()
            
        switch name {
        case .regularPants:
            bottomView = drawRegularPants(color.color)
        case .tightPants:
            bottomView = drawTightPants(color.color)
        case .widePants:
            bottomView = drawWidePants(color.color)
        case .shorts:
            bottomView = drawShorts(color.color)
        }
        
        let clothesView = ClothesView(name: name.rawValue, color: color)
        clothesView.addSubview(bottomView)
        clothesView.frame = bottomView.frame
        return clothesView
    }
    
}
