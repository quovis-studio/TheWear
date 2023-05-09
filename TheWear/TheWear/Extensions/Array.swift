/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension Array where Element == ClothesItem {

    func find(_ clothes: AllClothes...) -> [ClothesItem] {
        var clothesItems = [ClothesItem]()
        
        for cloth in clothes {
            for udCloth in self {
                if cloth.rawValue == udCloth.name {
                    clothesItems.append(udCloth)
                }
            }

            if cloth == .noHeaddress {
                clothesItems.append(
                    ClothesItem(
                        name: AllClothes.noHeaddress.rawValue,
                        color: nil,
                        byDefault: nil
                    )
                )
            }
        }
        
        return clothesItems
    }
    
}
