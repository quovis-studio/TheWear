/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {

    func configureClothesItemsForCurrentType() {
        let clothesType = ClothesType.allCases[currentClothesType]
        var addedClothesItems = [Bool]()
        var clothesItemColors = [[Bool]]()
        var clothesStrings: [String]!
        
        switch clothesType {
        case .outerwear:
            if UD.shared.isMan() {
                clothesStrings = Clothes.man.top.allOuterwearCases.map { $0.rawValue }
            } else {
                clothesStrings = Clothes.woman.top.allOuterwearCases.map { $0.rawValue }
            }
            for clothes in clothesStrings {
                var added = false
                var colors = [Bool]()
                for color in Color.clothes.allCases {
                    var choosenColor = false
                    for top in topClothes {
                        if top.name == clothes && !top.byDefault && top.color == color {
                            added = true
                            choosenColor = true
                        }
                    }
                    colors.append(choosenColor)
                }
                addedClothesItems.append(added)
                clothesItemColors.append(colors)
            }
            
        case .top:
            if UD.shared.isMan() {
                clothesStrings = Clothes.man.top.allTopCases.map { $0.rawValue }
            } else {
                clothesStrings = Clothes.woman.top.allTopCases.map { $0.rawValue }
            }
            for clothes in clothesStrings {
                var added = false
                var colors = [Bool]()
                for color in Color.clothes.allCases {
                    var choosenColor = false
                    for top in topClothes {
                        if top.name == clothes && !top.byDefault && top.color == color {
                            added = true
                            choosenColor = true
                        }
                    }
                    colors.append(choosenColor)
                }
                addedClothesItems.append(added)
                clothesItemColors.append(colors)
            }
            
        case .bottom:
            if UD.shared.isMan() {
                clothesStrings = Clothes.man.bottom.allCases.map { $0.rawValue }
            } else {
                clothesStrings = Clothes.woman.bottom.allCases.map { $0.rawValue }
            }
            for clothes in clothesStrings {
                var added = false
                var colors = [Bool]()
                for color in Color.clothes.allCases {
                    var choosenColor = false
                    for bottom in bottomClothes {
                        if bottom.name == clothes && !bottom.byDefault && bottom.color == color {
                            added = true
                            choosenColor = true
                        }
                    }
                    colors.append(choosenColor)
                }
                addedClothesItems.append(added)
                clothesItemColors.append(colors)
            }
            
        case .shoes:
            if UD.shared.isMan() {
                clothesStrings = Clothes.man.shoes.allCases.map { $0.rawValue }
            } else {
                clothesStrings = Clothes.woman.shoes.allCases.map { $0.rawValue }
            }
            for clothes in clothesStrings {
                var added = false
                var colors = [Bool]()
                for color in Color.clothes.allCases {
                    var choosenColor = false
                    for shoe in shoes {
                        if shoe.name == clothes && !shoe.byDefault && shoe.color == color {
                            added = true
                            choosenColor = true
                        }
                    }
                    colors.append(choosenColor)
                }
                addedClothesItems.append(added)
                clothesItemColors.append(colors)
            }
            
        case .accessories:
            if UD.shared.isMan() {
                clothesStrings = Clothes.man.accessory.allCases.map { $0.rawValue }
            } else {
                clothesStrings = Clothes.woman.accessory.allCases.map { $0.rawValue }
            }
            for clothes in clothesStrings {
                var added = false
                var colors = [Bool]()
                for color in Color.clothes.allCases {
                    var choosenColor = false
                    for accessory in accessories {
                        if accessory.name == clothes && !accessory.byDefault && accessory.color == color {
                            added = true
                            choosenColor = true
                        }
                    }
                    colors.append(choosenColor)
                }
                addedClothesItems.append(added)
                clothesItemColors.append(colors)
            }
        }
        
        addedClothesItemsForCurrentType = addedClothesItems
        choosenColorsForCurrentItem = clothesItemColors
    }
    
}
