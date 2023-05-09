/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBeanie(color: Color.clothes, _ hair: Bool) -> ClothesView {
        var beanieView = UIView()
        
        let defaultHaircut = Haircut.man.canadian.rawValue
        let haircut = Haircut.man(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.man.canadian
        
        switch haircut {
        case .bald, .canadian, .forelock, .halfbox, .hedgehog, .kwiff, .short, .undercut, .afro:
            beanieView = drawBeanieForShort(color.color)
        case .bob:
            beanieView = drawBeanieForBob(color.color, hair)
        case .dreadlocks:
            beanieView = drawBeanieForDreadlocks(color.color, hair)
        case .long:
            beanieView = drawBeanieForLong(color.color, hair)
        }
        
        let clothesView = ClothesView(name: Clothes.man.accessory.beanie.rawValue, color: color)
        clothesView.addSubview(beanieView)
        clothesView.frame = beanieView.frame
        return clothesView
    }
    
}
