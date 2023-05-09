/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBaseballCap(color: Color.clothes) -> ClothesView {
        var capView = UIView()
        
        let defaultHaircut = Haircut.man.canadian.rawValue
        let haircut = Haircut.man(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.man.canadian
        
        switch haircut {
        case .bald:
            capView = drawBaseballCapForBald(color.color)
        case .bob:
            capView = drawBaseballCapForBob(color.color)
        case .canadian, .forelock, .halfbox, .hedgehog, .kwiff, .short:
            capView = drawBaseballCapForShort(color.color)
        case .dreadlocks:
            capView = drawBaseballCapForDreadlocks(color.color)
        case .long:
            capView = drawBaseballCapForLong(color.color)
        case .undercut:
            capView = drawBaseballCapForUndercut(color.color)
        case .afro:
            capView = drawBaseballCapForAfro(color.color)
        }
        
        let clothesView = ClothesView(name: Clothes.man.accessory.baseballCap.rawValue, color: color)
        clothesView.addSubview(capView)
        clothesView.frame = capView.frame
        return clothesView
    }
    
}
