/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PersonService {
    
    func configureClothes(
        with appTemp: Double?
    ) -> (top: [ClothesItem], bottom: [ClothesItem], shoes: [ClothesItem], accessories: [ClothesItem]) {
        
        let temperature = configureTemperature(with: appTemp)
        let topClothesFromUserDefaults = UD.shared.retrieveTopClothes() ?? [ClothesItem]()
        let bottomClothesFromUserDefaults = UD.shared.retrieveBottomClothes() ?? [ClothesItem]()
        let shoesFromUserDefaults = UD.shared.retrieveShoes() ?? [ClothesItem]()
        let accessoriesFromUserDefaults = UD.shared.retrieveAccessories() ?? [ClothesItem]()
        
        var topClothes = [ClothesItem]()
        var bottomClothes = [ClothesItem]()
        var shoes = [ClothesItem]()
        var accessories = [ClothesItem]()
        
        switch temperature {
        case ...(-11):
            topClothes = topClothesFromUserDefaults.find(.downJacketWithCape, .downJacketWithoutCape)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants)
            shoes = shoesFromUserDefaults.find(.boots, .gym, .sneakers)
            accessories = accessoriesFromUserDefaults.find(.gloves, .beanie, .warmScarf, .umbrella)
            
        case (-10)...(-3):
            topClothes = topClothesFromUserDefaults.find(.downJacketWithCape, .downJacketWithoutCape, .coat)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants)
            shoes = shoesFromUserDefaults.find(.boots, .gym, .sneakers)
            accessories = accessoriesFromUserDefaults.find(.gloves, .beanie, .lightScarf, .warmScarf, .umbrella)
            
        case (-2)...0:
            topClothes = topClothesFromUserDefaults.find(.coat, .lightJacket)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants)
            shoes = shoesFromUserDefaults.find(.boots, .gym, .sneakers)
            accessories = accessoriesFromUserDefaults.find(.beanie, .noHeaddress, .gloves, .umbrella)
            
        case 1...4:
            topClothes = topClothesFromUserDefaults.find(.coat, .lightJacket)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants)
            shoes = shoesFromUserDefaults.find(.boots, .gym, .sneakers)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .beanie, .umbrella)
            
        case 5...7:
            topClothes = topClothesFromUserDefaults.find(.coat, .lightJacket)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants)
            shoes = shoesFromUserDefaults.find(.gym, .sneakers, .loafers)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .umbrella)
            
        case 8...10:
            topClothes = topClothesFromUserDefaults.find(.lightJacket)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants)
            shoes = shoesFromUserDefaults.find(.gym, .sneakers, .loafers)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .umbrella)
            
        case 11...14:
            topClothes = topClothesFromUserDefaults.find(.coat, .lightJacket)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants, .longSkirt)
            shoes = shoesFromUserDefaults.find(.gym, .sneakers, .loafers)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .umbrella)
            
        case 15...17:
            topClothes = topClothesFromUserDefaults.find(.hoodie, .hoodieWithZipper, .sweatshirt)
            bottomClothes = bottomClothesFromUserDefaults.find(.regularPants, .widePants, .tightPants, .longSkirt, .threeQuarterPants)
            shoes = shoesFromUserDefaults.find(.gym, .sneakers, .loafers)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .umbrella)
            
        case 18...20:
            topClothes = topClothesFromUserDefaults.find(.sweatshirt, .hoodie, .hoodieWithZipper, .longsleeve, .shirt, .tunic, .blouse)
            bottomClothes = bottomClothesFromUserDefaults.find(.longSkirt, .regularPants, .widePants, .tightPants, .threeQuarterPants, .shorts)
            shoes = shoesFromUserDefaults.find(.sneakers, .gym, .loafers, .low)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .baseballCap, .umbrella)
            
        case 21...22:
            topClothes = topClothesFromUserDefaults.find(.dress, .tShirt, .tShirtOversize, .polo, .shirt, .tunic, .blouse, .longsleeve, .sweatshirt)
            bottomClothes = bottomClothesFromUserDefaults.find(.longSkirt, .shortSkirt, .pleatedSkirt, .regularPants, .widePants, .tightPants, .shorts, .threeQuarterPants)
            shoes = shoesFromUserDefaults.find(.sneakers, .gym, .loafers, .low)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .baseballCap, .umbrella)
            
        case 23...24:
            topClothes = topClothesFromUserDefaults.find(.dress, .tShirt, .tShirtOversize, .polo, .shirt, .tunic, .blouse, .longsleeve)
            bottomClothes = bottomClothesFromUserDefaults.find(.shortSkirt, .pleatedSkirt, .longSkirt, .shortShorts, .shorts, .threeQuarterPants, .regularPants, .widePants, .tightPants)
            shoes = shoesFromUserDefaults.find(.low, .sneakers, .gym, .loafers, .slippers)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .baseballCap, .umbrella)
            
        case 25...:
            topClothes = topClothesFromUserDefaults.find(.dress, .tShirt, .tShirtOversize, .polo, .topTankSquare, .topTankJewel, .shirt, .tunic, .blouse)
            bottomClothes = bottomClothesFromUserDefaults.find(.shortSkirt, .pleatedSkirt, .shortShorts, .shorts, .threeQuarterPants, .regularPants, .tightPants, .widePants)
            shoes = shoesFromUserDefaults.find(.slippers, .slates, .low, .sneakers, .gym, .loafers)
            accessories = accessoriesFromUserDefaults.find(.noHeaddress, .baseballCap, .umbrella)
            
        default:
            break
        }
        
        return (top: topClothes, bottom: bottomClothes, shoes: shoes, accessories: accessories)
    } 
    
    private func configureTemperature(with appTemp: Double?) -> Int {
        guard let appTemp = appTemp else { return 0 }
        let tempFeeling = UD.shared.retrieve(Key.tempFeeling) ?? 0
        return Int(appTemp) + tempFeeling
    }
    
}
