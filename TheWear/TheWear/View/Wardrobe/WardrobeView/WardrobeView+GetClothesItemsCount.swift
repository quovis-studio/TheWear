/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {

    func getClothesItemsCount() -> Int {
        let clothesType = ClothesType.allCases[currentClothesType]
        switch clothesType {
        case .outerwear:
            if UD.shared.isMan() {
                return Clothes.man.top.allOuterwearCases.count
            } else {
                return Clothes.woman.top.allOuterwearCases.count
            }
            
        case .top:
            if UD.shared.isMan() {
                return Clothes.man.top.allTopCases.count
            } else {
                return Clothes.woman.top.allTopCases.count
            }
            
        case .bottom:
            if UD.shared.isMan() {
                return Clothes.man.bottom.allCases.count
            } else {
                return Clothes.woman.bottom.allCases.count
            }
            
        case .shoes:
            if UD.shared.isMan() {
                return Clothes.man.shoes.allCases.count
            } else {
                return Clothes.woman.shoes.allCases.count
            }
            
        case .accessories:
            if UD.shared.isMan() {
                return Clothes.man.accessory.allCases.count
            } else {
                return Clothes.woman.accessory.allCases.count
            }
        }
    }
    
}
