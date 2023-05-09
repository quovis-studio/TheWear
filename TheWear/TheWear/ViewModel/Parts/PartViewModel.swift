/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

class PartViewModel {
    
    let part: String
    let tempC: String
    let tempF: String
    let feelsLikeTempC: String
    let feelsLikeTempF: String
    let condition: String
    var description: String
    
    let colorCode: String
    let rain: Bool
    
    var topClothes: [ClothesItem]
    var bottomClothes: [ClothesItem]
    var shoes: [ClothesItem]
    var accessories: [ClothesItem]
    
    init(
        part: String,
        tempC: String,
        tempF: String,
        feelsLikeTempC: String,
        feelsLikeTempF: String,
        condition: String,
        description: String,
        colorCode: String,
        rain: Bool,
        topClothes: [ClothesItem],
        bottomClothes: [ClothesItem],
        shoes: [ClothesItem],
        accessories: [ClothesItem]
    ) {
        self.part = part
        self.tempC = tempC
        self.tempF = tempF
        self.feelsLikeTempC = feelsLikeTempC
        self.feelsLikeTempF = feelsLikeTempF
        self.condition = condition
        self.description = description
        self.colorCode = colorCode
        self.rain = rain
        self.topClothes = topClothes
        self.bottomClothes = bottomClothes
        self.shoes = shoes
        self.accessories = accessories
    }
    
    func updateWithChange() {
        guard let temp = getFeelsLikeTemp() else { return }
        updateDescription(with: Int(temp))
        updateClothes(with: temp)
    }
    
    private func getFeelsLikeTemp() -> Double? {
        let feelsLikeWithDegree = feelsLikeTempC.replacingOccurrences(of: "\("feels_like".localized) ", with: "")
        let feelsLike = Double(feelsLikeWithDegree.dropLast())
        return feelsLike
    }
    
    private func updateDescription(with temp: Int) {
        description = CommentService.shared.getClothesComment(for: temp)
    }
    
    func updateClothes(with temp: Double) {
        let clothes = PersonService.shared.configureClothes(with: temp)
        topClothes = clothes.top
        bottomClothes = clothes.bottom
        shoes = clothes.shoes
        accessories = clothes.accessories
    }
    
}
