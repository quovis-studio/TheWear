/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension AppearanceView {
    
    func getAppearanceItemsCount() -> Int {
        let part = appearanceParts[currentAppearancePart]
        switch part {
        case .skinColor:
            return Color.skin.allCases.count
            
        case .haircut:
            if UD.shared.isMan() {
                return Haircut.man.allCases.count
            } else {
                return Haircut.woman.allCases.count
            }
            
        case .hairColor:
            return Color.hair.allCases.count
            
        case .beard:
            return Beard.allCases.count
            
        case .beardColor:
            return Color.hair.allCases.count
        }
    }
    
    func getAppearanceItemsSize(with width: CGFloat) -> CGSize {
        let part = appearanceParts[currentAppearancePart]
        switch part {
        case .haircut, .beard:
            let paddings = (2 * Size.padding.medium) + (Size.padding.small)
            let size = width - paddings
            return CGSize(width: size / 2, height: size / 2)
            
        case .skinColor, .hairColor, .beardColor:
            let paddings = (2 * Size.padding.medium) + (2 * Size.padding.small)
            let size = width - paddings
            return CGSize(width: size / 3, height: size / 3)
        }
    }
    
    func getAppearanceColor(for item: Int) -> UIColor {
        let part = appearanceParts[currentAppearancePart]
        if part == .skinColor {
            return Color.skin.allCases[item].color
        } else if part == .hairColor {
            return Color.hair.allCases[item].color
        } else if part == .beardColor {
            return Color.hair.allCases[item].color
        } else {
            return UIColor()
        }
    }
    
}
