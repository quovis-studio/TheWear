/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawLightScarf(color: Color.clothes) -> ClothesView {
        var lightScarfView = UIView()
        
        let defaultHaircut = Haircut.man.canadian.rawValue
        let haircut = Haircut.man(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.man.canadian
        
        switch haircut {
        case .bald, .canadian, .forelock, .halfbox, .hedgehog, .kwiff, .short, .undercut, .afro:
            lightScarfView = drawLightScarfForShort(color.color)
        case .bob:
            lightScarfView = drawLightScarfForBob(color.color)
        case .dreadlocks:
            lightScarfView = drawLightScarfForDreadlocks(color.color)
        case .long:
            lightScarfView = drawLightScarfForLong(color.color)
        }
        
        let clothesView = ClothesView(name: Clothes.man.accessory.lightScarf.rawValue, color: color)
        clothesView.addSubview(lightScarfView)
        clothesView.frame = lightScarfView.frame
        return clothesView
    }
    
}
