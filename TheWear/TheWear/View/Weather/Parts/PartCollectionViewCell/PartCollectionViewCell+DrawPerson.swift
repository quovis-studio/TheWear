/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension PartCollectionViewCell {
    
    func drawContentInPersonView() {
        // 0. Clear personView from all views
        personView.subviews.forEach { $0.removeFromSuperview() }
        
        // 1. Draw body [0]
        personView.addSubview(bodyView)
        
        // 2. Check order of shoes and bottom and draw them
        let isWidePants = bottomClothesViews[bottomCount].name! == AllClothes.widePants.rawValue ? true : false
        if isWidePants { // [1, 2]
            personView.addSubview(shoesViews[shoesCount])
            personView.addSubview(bottomClothesViews[bottomCount])
        } else { // [1, 2]
            personView.addSubview(bottomClothesViews[bottomCount])
            personView.addSubview(shoesViews[shoesCount])
        }
        
        // 3. Draw gloves if needed [3]
        if glovesViews.count != 0 {
            personView.addSubview(glovesViews[glovesCount])
        } else {
            personView.addSubview(ClothesView())
        }
        
        // 4. Draw top clothes [4]
        personView.addSubview(topClothesViews[topCount])
        
        // 5. Check if there is a dress, then remove bottom clothes and disable tap or vice versa
        let isDrress = topClothesViews[topCount].name == AllClothes.dress.rawValue
        personView.subviews[isWidePants ? 2 : 1].alpha = isDrress ? 0 : 1
        bottomChangeView.isUserInteractionEnabled = isDrress ? false : true
        
        // 6. Draw umbrella bottom, scarf and haircut
        if umbrellaBottomViews.count != 0 {
            personView.addSubview(umbrellaBottomViews[umbrellaCount]) // [5]
        } else {
            personView.addSubview(UIView()) // [5]
        }
        if scarfViews.count != 0 {
            personView.addSubview(scarfViews[scarfCount]) // [6]
        } else {
            personView.addSubview(UIView())
        }
        personView.addSubview(haircutViews[headdressCount]) // [7]
        
        // 7. Draw headdress and umbrella top if needed
        personView.addSubview(headdressViews[headdressCount]) // [8]
        if umbrellaBottomViews.count != 0 {
            personView.addSubview(umbrellaTopViews[umbrellaCount]) // [9]
        } else {
            personView.addSubview(UIView()) // [9]
        }
        // 8. Draw glove for rain if needed [10]
        if rainGlovesViews.count != 0 {
            personView.addSubview(rainGlovesViews[glovesCount])
        } else {
            personView.addSubview(UIView())
        }
        
        // 9. Check if there is no beanie, then draw beard [11]
        if headdressViews[headdressCount].name != AllClothes.beanie.rawValue {
            if UD.shared.isMan() {
                personView.addSubview(beardView)
            } else {
                personView.addSubview(UIView())
            }
        } else {
            personView.addSubview(UIView())
        }
    }
    
}
