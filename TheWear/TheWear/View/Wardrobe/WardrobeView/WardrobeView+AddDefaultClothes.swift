/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {
    
    func addTopDefaultClothesIfNeeded(with name: String) {
        if UD.shared.isMan() {
            let clothes = Clothes.man.top(rawValue: name) ?? .tShirt
            if clothes == .tShirt {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.man.top.tShirt.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .longsleeve {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.man.top.longsleeve.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .sweatshirt {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.man.top.sweatshirt.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .hoodie {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.man.top.hoodie.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .lightJacket {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.man.top.lightJacket.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .downJacketWithCape {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.man.top.downJacketWithCape.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
            }
            
        } else {
            let clothes = Clothes.woman.top(rawValue: name) ?? .tShirt
            if clothes == .tShirt {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.tShirt.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .blouse {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.blouse.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .tunic {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.tunic.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .dress {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.dress.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .longsleeve {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.longsleeve.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .sweatshirt {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.sweatshirt.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .hoodie {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.hoodie.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .lightJacket {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.lightJacket.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .downJacketWithCape {
                topClothes.append(
                    ClothesItem(
                        name: Clothes.woman.top.downJacketWithCape.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
            }
        }
    }
    
    func addBottomDefaultClothesIfNeeded(with name: String) {
        if UD.shared.isMan() {
            let clothes = Clothes.man.bottom(rawValue: name) ?? .regularPants
            if clothes == .regularPants {
                bottomClothes.append(
                    ClothesItem(
                        name: Clothes.man.bottom.regularPants.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
                
            } else if clothes == .shorts {
                bottomClothes.append(
                    ClothesItem(
                        name: Clothes.man.bottom.shorts.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
            }
            
        } else {
            let clothes = Clothes.woman.bottom(rawValue: name) ?? .regularPants
            if clothes == .regularPants {
                bottomClothes.append(
                    ClothesItem(
                        name: Clothes.woman.bottom.regularPants.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
                
            } else if clothes == .shorts {
                bottomClothes.append(
                    ClothesItem(
                        name: Clothes.woman.bottom.shorts.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
                
            } else if clothes == .shortSkirt {
                bottomClothes.append(
                    ClothesItem(
                        name: Clothes.woman.bottom.shortSkirt.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .longSkirt {
                bottomClothes.append(
                    ClothesItem(
                        name: Clothes.woman.bottom.longSkirt.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
            }
        }
    }
    
    func addShoesDefaultClothesIfNeeded(with name: String) {
        if UD.shared.isMan() {
            let clothes = Clothes.man.shoes(rawValue: name) ?? .gym
            if clothes == .gym {
                shoes.append(
                    ClothesItem(
                        name: Clothes.man.shoes.gym.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .sneakers {
                shoes.append(
                    ClothesItem(
                        name: Clothes.man.shoes.sneakers.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .boots {
                shoes.append(
                    ClothesItem(
                        name: Clothes.man.shoes.boots.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .slates {
                shoes.append(
                    ClothesItem(
                        name: Clothes.man.shoes.slates.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .slippers {
                shoes.append(
                    ClothesItem(
                        name: Clothes.man.shoes.slippers.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
            }
            
        } else {
            let clothes = Clothes.woman.shoes(rawValue: name) ?? .gym
            if clothes == .gym {
                shoes.append(
                    ClothesItem(
                        name: Clothes.woman.shoes.gym.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .sneakers {
                shoes.append(
                    ClothesItem(
                        name: Clothes.woman.shoes.sneakers.rawValue,
                        color: Color.clothes.white,
                        byDefault: true
                    )
                )
                
            } else if clothes == .boots {
                shoes.append(
                    ClothesItem(
                        name: Clothes.woman.shoes.boots.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .slates {
                shoes.append(
                    ClothesItem(
                        name: Clothes.woman.shoes.slates.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
                
            } else if clothes == .slippers {
                shoes.append(
                    ClothesItem(
                        name: Clothes.woman.shoes.slippers.rawValue,
                        color: Color.clothes.red,
                        byDefault: true
                    )
                )
            }
        }
    }
    
    func addAccessoriesDefaultClothesIfNeeded(with name: String) {
        if UD.shared.isMan() {
            let clothes = Clothes.man.accessory(rawValue: name) ?? .warmScarf
            if clothes == .warmScarf {
                accessories.append(
                    ClothesItem(
                        name: Clothes.man.accessory.warmScarf.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
                
            } else if clothes == .lightScarf {
                accessories.append(
                    ClothesItem(
                        name: Clothes.man.accessory.lightScarf.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
                
            } else if clothes == .beanie {
                accessories.append(
                    ClothesItem(
                        name: Clothes.man.accessory.beanie.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .baseballCap {
                accessories.append(
                    ClothesItem(
                        name: Clothes.man.accessory.baseballCap.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .gloves {
                accessories.append(
                    ClothesItem(
                        name: Clothes.man.accessory.gloves.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .umbrella {
                accessories.append(
                    ClothesItem(
                        name: Clothes.man.accessory.umbrella.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
            }
            
        } else {
            let clothes = Clothes.woman.accessory(rawValue: name) ?? .warmScarf
            if clothes == .warmScarf {
                accessories.append(
                    ClothesItem(
                        name: Clothes.woman.accessory.warmScarf.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
                
            } else if clothes == .lightScarf {
                accessories.append(
                    ClothesItem(
                        name: Clothes.woman.accessory.lightScarf.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
                
            } else if clothes == .beanie {
                accessories.append(
                    ClothesItem(
                        name: Clothes.woman.accessory.beanie.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .baseballCap {
                accessories.append(
                    ClothesItem(
                        name: Clothes.woman.accessory.baseballCap.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .gloves {
                accessories.append(
                    ClothesItem(
                        name: Clothes.woman.accessory.gloves.rawValue,
                        color: Color.clothes.black,
                        byDefault: true
                    )
                )
                
            } else if clothes == .umbrella {
                accessories.append(
                    ClothesItem(
                        name: Clothes.woman.accessory.umbrella.rawValue,
                        color: Color.clothes.blue,
                        byDefault: true
                    )
                )
            }
        }
    }
    
}
