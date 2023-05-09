/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBeanie(color: Color.clothes, _ hair: Bool) -> ClothesView {
        var beanieView = UIView()
        
        let defaultHaircut = Haircut.woman.bob.rawValue
        let haircut = Haircut.woman(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.woman.bob
        
        switch haircut {
        case .hedgehog, .shortTail, .longTail, .bunch, .afro:
            beanieView = drawBeanieForShort(color.color, hair)
        case .bob:
            beanieView = drawBeanieForBob(color.color, hair)
        case .bang:
            beanieView = drawBeanieForBang(color.color, hair)
        case .long:
            beanieView = drawBeanieForLong(color.color, hair)
        case .pigtails:
            beanieView = drawBeanieForPigtails(color.color, hair)
        case .volume:
            beanieView = drawBeanieForVolume(color.color, hair)
        }
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.beanie.rawValue, color: color)
        clothesView.addSubview(beanieView)
        clothesView.frame = beanieView.frame
        return clothesView
    }
    
}
