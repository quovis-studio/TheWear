/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {
    
    func chooseColor(with index: Int) {
        if choosenColorsForCurrentItem[currentClothesItem][index] == false {
            choosenColorsForCurrentItem[currentClothesItem][index] = true
            addedClothesItemsForCurrentType[currentClothesItem] = true
            currentColor = index
            addClothes(with: index)
        } else {
            choosenColorsForCurrentItem[currentClothesItem][index] = false
            if !choosenColorsForCurrentItem[currentClothesItem].contains(true) {
                addedClothesItemsForCurrentType[currentClothesItem] = false
            }
            removeClothes(with: index)
        }
    }
    
}
