/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {

    func removeClothes(with colorIndex: Int) {
        let clothesType = ClothesType.allCases[currentClothesType]
        switch clothesType {
        case .outerwear:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.top.allOuterwearCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.top.allOuterwearCases[currentClothesItem].rawValue
            }
            let color = Color.clothes.allCases[colorIndex]
            var hasNotByDefault = false
            topClothes = topClothes.filter { top in
                return !(top.name == name && top.color == color && !top.byDefault)
            }
            for top in topClothes {
                if top.name == name && !top.byDefault {
                    hasNotByDefault = true
                    break
                }
            }
            if !hasNotByDefault { addTopDefaultClothesIfNeeded(with: name) }
            
        case .top:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.top.allTopCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.top.allTopCases[currentClothesItem].rawValue
            }
            let color = Color.clothes.allCases[colorIndex]
            var hasNotByDefault = false
            topClothes = topClothes.filter { top in
                return !(top.name == name && top.color == color && !top.byDefault)
            }
            for top in topClothes {
                if top.name == name && !top.byDefault {
                    hasNotByDefault = true
                    break
                }
            }
            if !hasNotByDefault { addTopDefaultClothesIfNeeded(with: name) }
            
        case .bottom:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.bottom.allCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.bottom.allCases[currentClothesItem].rawValue
            }
            let color = Color.clothes.allCases[colorIndex]
            var hasNotByDefault = false
            bottomClothes = bottomClothes.filter { bottom in
                return !(bottom.name == name && bottom.color == color && !bottom.byDefault)
            }
            for bottom in bottomClothes {
                if bottom.name == name && !bottom.byDefault {
                    hasNotByDefault = true
                    break
                }
            }
            if !hasNotByDefault { addBottomDefaultClothesIfNeeded(with: name) }
            
        case .shoes:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.shoes.allCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.shoes.allCases[currentClothesItem].rawValue
            }
            let color = Color.clothes.allCases[colorIndex]
            var hasNotByDefault = false
            shoes = shoes.filter { shoe in
                return !(shoe.name == name && shoe.color == color && !shoe.byDefault)
            }
            for shoe in shoes {
                if shoe.name == name && !shoe.byDefault {
                    hasNotByDefault = true
                    break
                }
            }
            if !hasNotByDefault { addShoesDefaultClothesIfNeeded(with: name) }
            
        case .accessories:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.accessory.allCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.accessory.allCases[currentClothesItem].rawValue
            }
            let color = Color.clothes.allCases[colorIndex]
            var hasNotByDefault = false
            accessories = accessories.filter { accessory in
                return !(accessory.name == name && accessory.color == color && !accessory.byDefault)
            }
            for accessory in accessories {
                if accessory.name == name && !accessory.byDefault {
                    hasNotByDefault = true
                    break
                }
            }
            if !hasNotByDefault { addAccessoriesDefaultClothesIfNeeded(with: name) }
        }
    }
    
}
