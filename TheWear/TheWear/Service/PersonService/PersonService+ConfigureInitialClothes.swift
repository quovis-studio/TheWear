/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PersonService {
    
    func configureInitialUserDefaultsClothes() {
        if UD.shared.isMan() {
            configureManTopClothes()
            configureManBottomClothes()
            configureManShoes()
            configureManAccessories()
        } else {
            configureWomanTopClothes()
            configureWomanBottomClothes()
            configureWomanShoes()
            configureWomanAccessories()
        }
    }

    private func configureManTopClothes() {
        let topClothes = [
            ClothesItem(name: Clothes.man.top.tShirt.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.man.top.longsleeve.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.man.top.sweatshirt.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.man.top.hoodie.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.man.top.lightJacket.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.man.top.downJacketWithCape.rawValue, color: Color.clothes.white, byDefault: true)
        ]
        UD.shared.saveTopClothes(topClothes)
    }
    
    private func configureWomanTopClothes() {
        let topClothes = [
            ClothesItem(name: Clothes.woman.top.tShirt.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.woman.top.blouse.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.woman.top.tunic.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.woman.top.dress.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.woman.top.longsleeve.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.woman.top.sweatshirt.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.woman.top.hoodie.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.woman.top.lightJacket.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.woman.top.downJacketWithCape.rawValue, color: Color.clothes.white, byDefault: true)
        ]
        UD.shared.saveTopClothes(topClothes)
    }
    
    private func configureManBottomClothes() {
        let bottomClothes = [
            ClothesItem(name: Clothes.man.bottom.regularPants.rawValue, color: Color.clothes.blue, byDefault: true),
            ClothesItem(name: Clothes.man.bottom.shorts.rawValue, color: Color.clothes.blue, byDefault: true)
        ]
        UD.shared.saveBottomClothes(bottomClothes)
    }
    
    private func configureWomanBottomClothes() {
        let bottomClothes = [
            ClothesItem(name: Clothes.woman.bottom.regularPants.rawValue, color: Color.clothes.blue, byDefault: true),
            ClothesItem(name: Clothes.woman.bottom.shorts.rawValue, color: Color.clothes.blue, byDefault: true),
            ClothesItem(name: Clothes.woman.bottom.shortSkirt.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.woman.bottom.longSkirt.rawValue, color: Color.clothes.red, byDefault: true)
        ]
        UD.shared.saveBottomClothes(bottomClothes)
    }
    
    private func configureManShoes() {
        let shoes = [
            ClothesItem(name: Clothes.man.shoes.gym.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.man.shoes.sneakers.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.man.shoes.boots.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.man.shoes.slates.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.man.shoes.slippers.rawValue, color: Color.clothes.red, byDefault: true)
        ]
        UD.shared.saveShoes(shoes)
    }
    
    private func configureWomanShoes() {
        let shoes = [
            ClothesItem(name: Clothes.woman.shoes.gym.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.woman.shoes.sneakers.rawValue, color: Color.clothes.white, byDefault: true),
            ClothesItem(name: Clothes.woman.shoes.boots.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.woman.shoes.slates.rawValue, color: Color.clothes.red, byDefault: true),
            ClothesItem(name: Clothes.woman.shoes.slippers.rawValue, color: Color.clothes.red, byDefault: true)
        ]
        UD.shared.saveShoes(shoes)
    }

    private func configureManAccessories() {
        let accessories = [
            ClothesItem(name: Clothes.man.accessory.warmScarf.rawValue, color: Color.clothes.blue, byDefault: true),
            ClothesItem(name: Clothes.man.accessory.lightScarf.rawValue, color: Color.clothes.blue, byDefault: true),
            ClothesItem(name: Clothes.man.accessory.beanie.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.man.accessory.baseballCap.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.man.accessory.gloves.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.man.accessory.umbrella.rawValue, color: Color.clothes.blue, byDefault: true)
        ]
        UD.shared.saveAccessories(accessories)
    }
    
    private func configureWomanAccessories() {
        let accessories = [
            ClothesItem(name: Clothes.woman.accessory.warmScarf.rawValue, color: Color.clothes.blue, byDefault: true),
            ClothesItem(name: Clothes.woman.accessory.lightScarf.rawValue, color: Color.clothes.blue, byDefault: true),
            ClothesItem(name: Clothes.woman.accessory.beanie.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.woman.accessory.baseballCap.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.woman.accessory.gloves.rawValue, color: Color.clothes.black, byDefault: true),
            ClothesItem(name: Clothes.woman.accessory.umbrella.rawValue, color: Color.clothes.blue, byDefault: true)
        ]
        UD.shared.saveAccessories(accessories)
    }
    
}
