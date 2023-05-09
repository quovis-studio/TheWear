/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawSantaClausHat(_ hair: Bool) -> ClothesView {
        var hatView = UIView()
        
        let defaultHaircut = Haircut.woman.bob.rawValue
        let haircut = Haircut.woman(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.woman.bob
        
        switch haircut {
        case .hedgehog, .shortTail, .longTail, .bunch, .afro:
            hatView = drawSantaClausHatForShort(hair)
        case .bob:
            hatView = drawSantaClausHatForBob(hair)
        case .bang:
            hatView = drawSantaClausHatForBang(hair)
        case .long:
            hatView = drawSantaClausHatForLong(hair)
        case .pigtails:
            hatView = drawSantaClausHatForPigtails(hair)
        case .volume:
            hatView = drawSantaClausHatForVolume(hair)
        }
        
        let clothesView = ClothesView(name: "santaClausHat", color: Color.clothes.red)
        clothesView.addSubview(hatView)
        clothesView.frame = hatView.frame
        return clothesView
    }
    
}
