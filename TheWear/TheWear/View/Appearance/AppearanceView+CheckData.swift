/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension AppearanceView {

    func checkColorPart() -> Bool {
        if appearanceParts[currentAppearancePart] == .skinColor ||
           appearanceParts[currentAppearancePart] == .hairColor ||
            appearanceParts[currentAppearancePart] == .beardColor {
            return true
        } else {
            return false
        }
    }
    
    func checkChoosen(with item: Int) -> Bool {
        let part = appearanceParts[currentAppearancePart]
        switch part {
        case .skinColor:
            let rawValue = UD.shared.retrieve(Key.skinColor) ?? Color.skin.honey.rawValue
            guard let skinColor = Color.skin(rawValue: rawValue) else { return false }
            return skinColor.index() == item
            
        case .haircut:
            if UD.shared.isMan() {
                let rawValue = UD.shared.retrieve(Key.haircut) ?? Haircut.man.canadian.rawValue
                guard let haircut = Haircut.man(rawValue: rawValue) else { return false }
                return haircut.index() == item
            } else {
                let rawValue = UD.shared.retrieve(Key.haircut) ?? Haircut.woman.bob.rawValue
                guard let haircut = Haircut.woman(rawValue: rawValue) else { return false }
                return haircut.index() == item
            }
            
        case .hairColor:
            let rawValue = UD.shared.retrieve(Key.hairColor) ?? Color.hair.black.rawValue
            guard let hairColor = Color.hair(rawValue: rawValue) else { return false }
            return hairColor.index() == item
            
        case .beard:
            let rawValue = UD.shared.retrieve(Key.beard) ?? Beard.shaven.rawValue
            guard let beard = Beard(rawValue: rawValue) else { return false }
            return beard.index() == item
            
        case .beardColor:
            let rawValue = UD.shared.retrieve(Key.beardColor) ?? Color.hair.black.rawValue
            guard let beardColor = Color.hair(rawValue: rawValue) else { return false }
            return beardColor.index() == item
        }
    }
    
}
