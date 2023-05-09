/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension PartCollectionViewCell {

    @objc func handleUmbrellaChange() {
        guard umbrellaTopViews.count > 1 else { return }
        umbrellaCount = (umbrellaCount == umbrellaTopViews.count - 1) ? 0 : umbrellaCount + 1
        choosenClothesCountForPart[0] = umbrellaCount
        personView.subviews[5].removeFromSuperview()
        personView.insertSubview(umbrellaBottomViews[umbrellaCount], at: 5)
        personView.subviews[9].removeFromSuperview()
        personView.insertSubview(umbrellaTopViews[umbrellaCount], at: 9)
        AnalyticsService.shared.sendEvent(.umbrellaChanged)
    }
    
    @objc func handleHeaddressChange() {
        guard headdressViews.count > 1 else { return }
        headdressCount = (headdressCount == headdressViews.count - 1) ? 0 : headdressCount + 1
        choosenClothesCountForPart[1] = headdressCount
        updateChoosenClothesCountForPart?(choosenClothesCountForPart)
        personView.subviews[7].removeFromSuperview()
        personView.insertSubview(haircutViews[headdressCount], at: 7)
        personView.subviews[8].removeFromSuperview()
        personView.insertSubview(headdressViews[headdressCount], at: 8)
        
        personView.subviews[11].removeFromSuperview()
        if headdressViews[headdressCount].name != AllClothes.beanie.rawValue {
            if UD.shared.isMan() {
                personView.addSubview(beardView)
            } else {
                personView.addSubview(UIView())
            }
        } else {
            personView.addSubview(UIView())
        }
        AnalyticsService.shared.sendEvent(.headdressChanged)
    }
    
    @objc func handleGlovesChange() {
        guard glovesViews.count > 1 else { return }
        glovesCount = (glovesCount == glovesViews.count - 1) ? 0 : glovesCount + 1
        choosenClothesCountForPart[3] = glovesCount
        updateChoosenClothesCountForPart?(choosenClothesCountForPart)
        personView.subviews[3].removeFromSuperview()
        personView.insertSubview(glovesViews[glovesCount], at: 3)
        if rainGlovesViews.count != 0 {
            personView.subviews[10].removeFromSuperview()
            personView.insertSubview(rainGlovesViews[glovesCount], at: 10)
        }
        AnalyticsService.shared.sendEvent(.glovesChanged)
    }
    
    @objc func handleScarfChange() {
        guard scarfViews.count > 1 else { return }
        scarfCount = (scarfCount == scarfViews.count - 1) ? 0 : scarfCount + 1
        choosenClothesCountForPart[2] = scarfCount
        updateChoosenClothesCountForPart?(choosenClothesCountForPart)
        personView.subviews[6].removeFromSuperview()
        personView.insertSubview(scarfViews[scarfCount], at: 6)
        AnalyticsService.shared.sendEvent(.scarfChanged)
    }
    
    @objc func handleTopChange() {
        guard topClothesViews.count > 1 else { return }
        topCount = (topCount == topClothesViews.count - 1) ? 0 : topCount + 1
        choosenClothesCountForPart[4] = topCount
        updateChoosenClothesCountForPart?(choosenClothesCountForPart)
        personView.subviews[4].removeFromSuperview()
        personView.insertSubview(topClothesViews[topCount], at: 4)
        checkForDress()
        AnalyticsService.shared.sendEvent(.topChanged)
    }
    
    func checkForDress() {
        let isBoots = shoesViews[shoesCount].name == AllClothes.boots.rawValue ? true : false
        let isWidePants = bottomClothesViews[bottomCount].name == AllClothes.widePants.rawValue ? true : false
        let bottomIndex = (isBoots && isWidePants) ? 2 : 1
        if topClothesViews[topCount].name == AllClothes.dress.rawValue {
            personView.subviews[bottomIndex].alpha = 0
            bottomChangeView.isUserInteractionEnabled = false
        } else {
            personView.subviews[bottomIndex].alpha = 1
            bottomChangeView.isUserInteractionEnabled = true
        }
    }
    
    @objc func handleBottomChange() {
        guard bottomClothesViews.count > 1 else { return }
        let bottomIndex = bottomClothesViews[bottomCount].name == AllClothes.widePants.rawValue ? 2 : 1
        bottomCount = (bottomCount == bottomClothesViews.count - 1) ? 0 : bottomCount + 1
        choosenClothesCountForPart[5] = bottomCount
        updateChoosenClothesCountForPart?(choosenClothesCountForPart)
        let isWidePants = bottomClothesViews[bottomCount].name == AllClothes.widePants.rawValue ? true : false
        personView.subviews[bottomIndex].removeFromSuperview()
        personView.insertSubview(bottomClothesViews[bottomCount], at: isWidePants ? 2 : 1)
        AnalyticsService.shared.sendEvent(.bottomChanged)
    }
    
    @objc func handleShoesChange() {
        guard shoesViews.count > 1 else { return }
        let shoesIndex = bottomClothesViews[bottomCount].name == AllClothes.widePants.rawValue ? 1 : 2
        shoesCount = (shoesCount == shoesViews.count - 1) ? 0 : shoesCount + 1
        choosenClothesCountForPart[6] = shoesCount
        updateChoosenClothesCountForPart?(choosenClothesCountForPart)
        let isWidePants = bottomClothesViews[bottomCount].name == AllClothes.widePants.rawValue ? true : false
        personView.subviews[shoesIndex].removeFromSuperview()
        personView.insertSubview(shoesViews[shoesCount], at: isWidePants ? 1 : 2)
        AnalyticsService.shared.sendEvent(.shoesChanged)
    }
    
}
