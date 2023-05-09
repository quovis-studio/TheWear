/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawBaseballCap(color: Color.clothes) -> ClothesView {
        var capView = UIView()
        
        let defaultHaircut = Haircut.woman.bob.rawValue
        let haircut = Haircut.woman(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.woman.bob
        
        switch haircut {
        case .hedgehog, .shortTail, .longTail, .bunch, .afro:
            capView = drawBaseballCapForShort(color.color)
        case .bob:
            capView = drawBaseballCapForBob(color.color)
        case .bang:
            capView = drawBaseballCapForBang(color.color)
        case .long:
            capView = drawBaseballCapForLong(color.color)
        case .pigtails:
            capView = drawBaseballCapForPigtails(color.color)
        case .volume:
            capView = drawBaseballCapForVolume(color.color)
        }
        
        let clothesView = ClothesView(name: Clothes.woman.accessory.baseballCap.rawValue, color: color)
        clothesView.addSubview(capView)
        clothesView.frame = capView.frame
        return clothesView
    }
    
}
