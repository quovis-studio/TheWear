/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawSantaClausHat(_ hair: Bool) -> ClothesView {
        var hatView = UIView()
        
        let defaultHaircut = Haircut.man.canadian.rawValue
        let haircut = Haircut.man(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.man.canadian
        
        switch haircut {
        case .bald, .canadian, .forelock, .halfbox, .hedgehog, .kwiff, .short, .undercut, .afro:
            hatView = drawSantaClausHatForShort()
        case .bob:
            hatView = drawSantaClausHatForBob(hair)
        case .dreadlocks:
            hatView = drawSantaClausHatForDreadlocks(hair)
        case .long:
            hatView = drawSantaClausHatForLong(hair)
        }
        
        let clothesView = ClothesView(name: "santaClausHat", color: Color.clothes.red)
        clothesView.addSubview(hatView)
        clothesView.frame = hatView.frame
        return clothesView
    }
    
}
