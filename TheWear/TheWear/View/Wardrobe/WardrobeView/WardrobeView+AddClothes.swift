/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {

    func addClothes(with colorIndex: Int) {
        let clothesType = ClothesType.allCases[currentClothesType]
        switch clothesType {
        case .outerwear:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.top.allOuterwearCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.top.allOuterwearCases[currentClothesItem].rawValue
            }
            let newClothes = ClothesItem(
                name: name,
                color: Color.clothes.allCases[colorIndex]
            )
            topClothes.append(newClothes)
            topClothes = topClothes.filter { !($0.name == name && $0.byDefault) }
            
        case .top:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.top.allTopCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.top.allTopCases[currentClothesItem].rawValue
            }
            let newClothes = ClothesItem(
                name: name,
                color: Color.clothes.allCases[colorIndex]
            )
            topClothes.append(newClothes)
            topClothes = topClothes.filter { !($0.name == name && $0.byDefault) }
            
        case .bottom:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.bottom.allCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.bottom.allCases[currentClothesItem].rawValue
            }
            let newClothes = ClothesItem(
                name: name,
                color: Color.clothes.allCases[colorIndex]
            )
            bottomClothes.append(newClothes)
            bottomClothes = bottomClothes.filter { !($0.name == name && $0.byDefault) }
            
        case .shoes:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.shoes.allCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.shoes.allCases[currentClothesItem].rawValue
            }
            let newClothes = ClothesItem(
                name: name,
                color: Color.clothes.allCases[colorIndex]
            )
            shoes.append(newClothes)
            shoes = shoes.filter { !($0.name == name && $0.byDefault) }
            
        case .accessories:
            let name: String!
            if UD.shared.isMan() {
                name = Clothes.man.accessory.allCases[currentClothesItem].rawValue
            } else {
                name = Clothes.woman.accessory.allCases[currentClothesItem].rawValue
            }
            let newClothes = ClothesItem(
                name: name,
                color: Color.clothes.allCases[colorIndex]
            )
            accessories.append(newClothes)
            accessories = accessories.filter { !($0.name == name && $0.byDefault) }
        }
    }
    
}
