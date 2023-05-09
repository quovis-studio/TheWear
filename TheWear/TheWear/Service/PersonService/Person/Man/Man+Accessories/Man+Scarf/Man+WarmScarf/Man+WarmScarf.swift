/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawWarmScarf(color: Color.clothes) -> ClothesView {
        var warmScarfView = UIView()
        
        let defaultHaircut = Haircut.man.canadian.rawValue
        let haircut = Haircut.man(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.man.canadian
        
        switch haircut {
        case .bald, .canadian, .forelock, .halfbox, .hedgehog, .kwiff, .short, .undercut, .afro:
            warmScarfView = drawWarmScarfForShort(color.color)
        case .bob:
            warmScarfView = drawWarmScarfForBob(color.color)
        case .dreadlocks:
            warmScarfView = drawWarmScarfForDreadlocks(color.color)
        case .long:
            warmScarfView = drawWarmScarfForLong(color.color)
        }
        
        let clothesView = ClothesView(name: Clothes.man.accessory.warmScarf.rawValue, color: color)
        clothesView.addSubview(warmScarfView)
        clothesView.frame = warmScarfView.frame
        return clothesView
    }
    
}
