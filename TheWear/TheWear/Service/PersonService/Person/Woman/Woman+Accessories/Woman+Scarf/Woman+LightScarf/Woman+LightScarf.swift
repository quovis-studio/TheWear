/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawLightScarf(color: Color.clothes) -> ClothesView {
        var lightScarfView = UIView()
        
        let defaultHaircut = Haircut.woman.bob.rawValue
        let haircut = Haircut.woman(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.woman.bob
        
        switch haircut {
        case .hedgehog, .shortTail, .longTail, .bunch, .afro:
            lightScarfView = drawLightScarfForShort(color: color.color)
        case .bob:
            lightScarfView = drawLightScarfForBob(color: color.color)
        case .bang:
            lightScarfView = drawLightScarfForBang(color: color.color)
        case .long:
            lightScarfView = drawLightScarfForLong(color: color.color)
        case .pigtails:
            lightScarfView = drawLightScarfForPigtails(color: color.color)
        case .volume:
            lightScarfView = drawLightScarfForVolume(color: color.color)
        }
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.lightScarf.rawValue, color: color)
        clothesView.addSubview(lightScarfView)
        clothesView.frame = lightScarfView.frame
        return clothesView
    }
    
}
