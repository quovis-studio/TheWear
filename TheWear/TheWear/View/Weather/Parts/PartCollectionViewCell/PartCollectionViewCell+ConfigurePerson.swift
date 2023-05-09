/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension PartCollectionViewCell {

    func configurePersonViewIfNeeded(with partViewModel: PartViewModel) {
        if getWithPerson?() ?? false {
            if personViewContainer == nil { configurePersonView(with: partViewModel.rain) }
            configurePerson(with: partViewModel)
        } else {
            guard personViewContainer != nil else { return }
            removePersonView()
        }
    }
    
    func configurePersonView(with rain: Bool) {
        configurePersonViewConstraints()
        configureChangeViews()
        layoutIfNeeded()
        scalePersonView()
    }
    
    func configurePersonViewConstraints() {
        temperatureBottomConstraintWithoutPerson.isActive = false
        temperatureBottomConstraintWithPerson.isActive = true
        personViewContainer = UIView()
        personView = UIView()
        contentView.addSubview(personViewContainer)
        personViewContainer.addSubview(personView)
        
        let isIphone = UIDevice.current.userInterfaceIdiom == .phone ? true : false
        let personSize = getPersonSize?() ?? CGSize(width: 461 * (252 / 600), height: 461)
        if isIphone {
            personViewContainer.constraints(
                top: partLabel.bottom(Size.padding.medium),
                centerX: contentView.centerX,
                width: .equalToConstant(personSize.width),
                height: .equalToConstant(personSize.height)
            )
            
        } else {
            personViewContainer.constraints(
                top: partLabel.bottom(Size.padding.medium),
                right: contentView.right(Size.padding.xxLarge),
                width: .equalToConstant(personSize.width),
                height: .equalToConstant(personSize.height)
            )
        }
        
        personView.constraints(
            centerX: personViewContainer.centerX,
            centerY: personViewContainer.centerY,
            width: .equalToConstant(252),
            height: .equalToConstant(600)
        )
    }
    
    func scalePersonView() {
        personView.transform = CGAffineTransform(
            scaleX: personViewContainer.frame.width / 252,
            y: personViewContainer.frame.height / 600
        )
    }
    
    func removePersonView() {
        temperatureBottomConstraintWithPerson.isActive = false
        temperatureBottomConstraintWithoutPerson.isActive = true
        personViewContainer.removeFromSuperview()
        personViewContainer = nil
        personView = nil
        removeAllPersonViews()
    }
    
    func removeAllPersonViews() {
        bodyView = nil
        haircutViews = nil
        beardView = nil
        topClothesViews = nil
        bottomClothesViews = nil
        shoesViews = nil
        umbrellaTopViews = nil
        umbrellaBottomViews = nil
        headdressViews = nil
        scarfViews = nil
        glovesViews = nil
        rainGlovesViews = nil
    }
    
    func configurePerson(with partViewModel: PartViewModel) {
        topClothes = partViewModel.topClothes
        bottomClothes = partViewModel.bottomClothes
        shoes = partViewModel.shoes
        accessories = partViewModel.accessories
        updateCounts()
        updateChangeViewsIfNeeded(with: partViewModel.rain)
        removeAllPersonViews()
        configurePersonViews(rain: partViewModel.rain)
        drawContentInPersonView()
    }
    
    private func updateCounts() {
        choosenClothesCountForPart = getChoosenClothesCountForPart?() ?? [Int](repeating: 0, count: 7)
        umbrellaCount = choosenClothesCountForPart[0]
        headdressCount = choosenClothesCountForPart[1]
        scarfCount = choosenClothesCountForPart[2]
        glovesCount = choosenClothesCountForPart[3]
        topCount = choosenClothesCountForPart[4]
        bottomCount = choosenClothesCountForPart[5]
        shoesCount = choosenClothesCountForPart[6]
    }
    
    private func updateChangeViewsIfNeeded(with rain: Bool) {
        umbrellaChangeView.isUserInteractionEnabled = rain ? true : false
        rainGloveChangeView.isUserInteractionEnabled = rain ? true : false
    }
    
    func configurePersonViews(rain: Bool) {
        bodyView = PersonService.shared.configureBody(with: rain)
        beardView = PersonService.shared.configureBeard()
        topClothesViews = PersonService.shared.configureTopClothes(with: topClothes, rain: rain)
        bottomClothesViews = PersonService.shared.configureBottomClothes(with: bottomClothes)
        shoesViews = PersonService.shared.configureShoes(with: shoes)
        
        let accessoriesViews = PersonService.shared.configureAccessoriesViews(with: accessories, rain: rain)
        haircutViews = accessoriesViews.haircutViews
        umbrellaTopViews = accessoriesViews.umbrellaTopViews
        umbrellaBottomViews = accessoriesViews.umbrellaBottomViews
        headdressViews = accessoriesViews.headdressViews
        scarfViews = accessoriesViews.scarfViews
        glovesViews = accessoriesViews.glovesViews
        rainGlovesViews = accessoriesViews.rainGlovesViews
    }
    
}
