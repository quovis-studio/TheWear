/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {

    func getClothesItemName(with index: Int) -> String {
        let type = ClothesType.allCases[currentClothesType]
        switch type {
        case .outerwear:
            if UD.shared.isMan() {
                return Clothes.man.top.allOuterwearCases[index].rawValue
            } else {
                return Clothes.woman.top.allOuterwearCases[index].rawValue
            }
            
        case .top:
            if UD.shared.isMan() {
                return Clothes.man.top.allTopCases[index].rawValue
            } else {
                return Clothes.woman.top.allTopCases[index].rawValue
            }
            
        case .bottom:
            if UD.shared.isMan() {
                return Clothes.man.bottom.allCases[index].rawValue
            } else {
                return Clothes.woman.bottom.allCases[index].rawValue
            }
            
        case .shoes:
            if UD.shared.isMan() {
                return Clothes.man.shoes.allCases[index].rawValue
            } else {
                return Clothes.woman.shoes.allCases[index].rawValue
            }
            
        case .accessories:
            if UD.shared.isMan() {
                return Clothes.man.accessory.allCases[index].rawValue
            } else {
                return Clothes.woman.accessory.allCases[index].rawValue
            }
        }
    }
    
}
