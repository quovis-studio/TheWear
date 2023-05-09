/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawWarmScarf(color: Color.clothes) -> ClothesView {
        var warmScarfView = UIView()
        
        let defaultHaircut = Haircut.woman.bob.rawValue
        let haircut = Haircut.woman(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.woman.bob
        
        switch haircut {
        case .hedgehog, .shortTail, .longTail, .bunch, .afro:
            warmScarfView = drawWarmScarfForShort(color: color.color)
        case .bob:
            warmScarfView = drawWarmScarfForBob(color: color.color)
        case .bang:
            warmScarfView = drawWarmScarfForBang(color: color.color)
        case .long:
            warmScarfView = drawWarmScarfForLong(color: color.color)
        case .pigtails:
            warmScarfView = drawWarmScarfForPigtails(color: color.color)
        case .volume:
            warmScarfView = drawWarmScarfForVolume(color: color.color)
        }
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.warmScarf.rawValue, color: color)
        clothesView.addSubview(warmScarfView)
        clothesView.frame = warmScarfView.frame
        return clothesView
    }
    
}
