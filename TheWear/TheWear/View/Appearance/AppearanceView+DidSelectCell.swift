/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension AppearanceView {
    
    func didSelectPart(_ part: Int) {
        currentAppearancePart = part
        appearancePartsCollectionView.reloadData()
        appearanceItemsCollectionView.reloadData()
        appearancePartsCollectionView.scrollToItem(at: IndexPath(item: part, section: 0), at: .centeredHorizontally, animated: true)
        appearanceItemsCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredVertically, animated: true)
        if !appearanceChanged { appearanceChanged = true }
    }
    
    func didSelectItem(_ item: Int) {
        switch appearanceParts[currentAppearancePart] {
        case .skinColor:
            UD.shared.save(Key.skinColor, Color.skin.allCases[item].rawValue)
        case .haircut:
            if UD.shared.isMan() {
                UD.shared.save(Key.haircut, Haircut.man.allCases[item].rawValue)
            } else {
                UD.shared.save(Key.haircut, Haircut.woman.allCases[item].rawValue)
            }
        case .hairColor:
            UD.shared.save(Key.hairColor, Color.hair.allCases[item].rawValue)
        case .beard:
            UD.shared.save(Key.beard, Beard.allCases[item].rawValue)
        case .beardColor:
            UD.shared.save(Key.beardColor, Color.hair.allCases[item].rawValue)
        }
        appearanceItemsCollectionView.reloadData()
        updatePersonView()
        
        if !appearanceChanged { appearanceChanged = true }
    }
    
}
