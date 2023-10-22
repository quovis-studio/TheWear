/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeExplanationView {

    func configureChange() {
        configureChangeViews()
        configurePointerViews()
        configureOrderOfClothes()
        animateClothesChange()
    }
    
    func configureChangeViews() {
        personView.addSubviews(headChange, topChange, bottomChange, shoesChange)
        headChange.constraints(
            top: personView.top,
            left: personView.left,
            right: personView.right,
            height: .equalTo(personView.height, multiplier: 0.2)
        )
        topChange.constraints(
            top: headChange.bottom,
            left: personView.left,
            right: personView.right,
            height: .equalTo(personView.height, multiplier: 0.35)
        )
        bottomChange.constraints(
            top: topChange.bottom,
            left: personView.left,
            right: personView.right,
            height: .equalTo(personView.height, multiplier: 0.35)
        )
        shoesChange.constraints(
            top: bottomChange.bottom,
            left: personView.left,
            right: personView.right,
            height: .equalTo(personView.height, multiplier: 0.1)
        )
    }
    
    func configurePointerViews() {
        let pointerSize = 2 * Size.icon.large
        
        headChange.addSubview(headPointerView)
        headPointerView.backgroundColor = Color.label.quaternary
        headPointerView.layer.cornerRadius = pointerSize / 2
        headPointerView.alpha = 0
        headPointerView.centerInSuperview(
            width: .equalToConstant(pointerSize),
            height: .equalToConstant(pointerSize),
            xOffset: 4,
            yOffset: -10
        )
        
        topChange.addSubview(topPointerView)
        topPointerView.backgroundColor = Color.label.quaternary
        topPointerView.layer.cornerRadius = pointerSize / 2
        topPointerView.alpha = 0
        topPointerView.centerInSuperview(
            width: .equalToConstant(pointerSize),
            height: .equalToConstant(pointerSize),
            xOffset: 8,
            yOffset: -20
        )
        
        bottomChange.addSubview(bottomPointerView)
        bottomPointerView.backgroundColor = Color.label.quaternary
        bottomPointerView.layer.cornerRadius = pointerSize / 2
        bottomPointerView.alpha = 0
        bottomPointerView.centerInSuperview(
            width: .equalToConstant(pointerSize),
            height: .equalToConstant(pointerSize),
            xOffset: -12,
            yOffset: -16
        )
        
        shoesChange.addSubview(shoesPointerView)
        shoesPointerView.backgroundColor = Color.label.quaternary
        shoesPointerView.layer.cornerRadius = pointerSize / 2
        shoesPointerView.alpha = 0
        shoesPointerView.centerInSuperview(
            width: .equalToConstant(pointerSize),
            height: .equalToConstant(pointerSize),
            xOffset: 16,
            yOffset: 12
        )
    }
    
    func configureOrderOfClothes() {
        orderOfClothes.removeAll()
        outCounter = 0
        for _ in 0..<5 {
            orderOfClothes.append([0, 1, 2, 3].shuffled())
        }
    }
    
    func animateClothesChange() {
        if inCounter == 4 { inCounter = 0 }
        if outCounter == 5 { configureOrderOfClothes() }
        
        let clothesToChangeIndex = orderOfClothes[outCounter][inCounter]
        var clothesToChange: ClothesItem!
        if UD.shared.isMan() {
            clothesToChange = manChangeClothes[outCounter][clothesToChangeIndex]
        } else {
            clothesToChange = womanChangeClothes[outCounter][clothesToChangeIndex]
        }
        
        if clothesToChangeIndex == 0 && headressIsOnPerson && clothesToChange.name == nil {
            animateRemovingHeaddress()
        } else if clothesToChangeIndex == 0 && headressIsOnPerson && clothesToChange.name != nil {
            continueWithNextClothes()
        } else if clothesToChange.name != nil {
            animateChangingClothes(with: clothesToChangeIndex, item: clothesToChange)
        } else {
            continueWithNextClothes()
        }
    }
    
    func animateRemovingHeaddress() {
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 1,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.headPointerView.alpha = 1
        } completion: { _ in
            UIView.animate(
                withDuration: Duration.medium,
                delay: 0,
                usingSpringWithDamping: 1,
                initialSpringVelocity: 1,
                options: .curveEaseInOut
            ) { [weak self] in
                self?.headPointerView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            } completion: { [weak self] _ in
                self?.personView.subviews[4].removeFromSuperview()
                if UD.shared.isMan() {
                    self?.personView.insertSubview(Man.drawHaircut(), at: 4)
                } else {
                    self?.personView.insertSubview(Woman.drawHaircut(), at: 4)
                }
                self?.headressIsOnPerson = false
                UIView.animate(
                    withDuration: Duration.medium,
                    delay: 0,
                    usingSpringWithDamping: 1,
                    initialSpringVelocity: 1,
                    options: .curveEaseInOut
                ) { [weak self] in
                    self?.headPointerView.alpha = 0
                    self?.headPointerView.transform = CGAffineTransform.identity
                } completion: { [weak self] _ in
                    self?.continueWithNextClothes()
                }
            }
        }
    }
    
    func animateChangingClothes(with index: Int, item: ClothesItem) {
        pointerViewEmulateTap(for: index) { [weak self] in
            self?.changeClothes(for: index, item: item)
            self?.pointerViewEmulateHide(for: index)
        }
    }
    
    func pointerViewEmulateTap(for index: Int, _ completion: @escaping () -> ()) {
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 1,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.changePointerViewAlpha(with: 1, for: index)
        } completion: { [weak self] _ in
            UIView.animate(
                withDuration: Duration.medium,
                delay: 0,
                usingSpringWithDamping: 1,
                initialSpringVelocity: 1,
                options: .curveEaseInOut
            ) { [weak self] in
                self?.transformPointerView(for: index)
            } completion: { _ in
                completion()
            }
        }
    }
    
    func pointerViewEmulateHide(for index: Int) {
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 1,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.changePointerViewAlpha(with: 0, for: index)
            self?.transformToIdentityPointerView(for: index)
        } completion: { [weak self] _ in
            self?.continueWithNextClothes()
        }
    }
    
    func changePointerViewAlpha(with value: CGFloat, for index: Int) {
        if index == 0 {
            headPointerView.alpha = value
        } else if index == 1 {
            topPointerView.alpha = value
        } else if index == 2 {
            bottomPointerView.alpha = value
        } else if index == 3 {
            shoesPointerView.alpha = value
        }
    }
    
    func transformPointerView(for index: Int) {
        if index == 0 {
            headPointerView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        } else if index == 1 {
            topPointerView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        } else if index == 2 {
            bottomPointerView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        } else if index == 3 {
            shoesPointerView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }
    }
    
    func transformToIdentityPointerView(for index: Int) {
        if index == 0 {
            headPointerView.transform = CGAffineTransform.identity
        } else if index == 1 {
            topPointerView.transform = CGAffineTransform.identity
        } else if index == 2 {
            bottomPointerView.transform = CGAffineTransform.identity
        } else if index == 3 {
            shoesPointerView.transform = CGAffineTransform.identity
        }
    }
    
    func changeClothes(for index: Int, item: ClothesItem) {
        if index == 0 {
            personView.subviews[4].removeFromSuperview()
            if UD.shared.isMan() {
                personView.insertSubview(Man.drawBaseballCap(color: item.color), at: 4)
            } else {
                personView.insertSubview(Woman.drawBaseballCap(color: item.color), at: 4)
            }
            headressIsOnPerson = true
            
        } else if index == 1 {
            personView.subviews[2].removeFromSuperview()
            if UD.shared.isMan() {
                let name = Clothes.man.top(rawValue: item.name!) ?? Clothes.man.top.tShirt
                personView.insertSubview(Man.drawTop(name: name, color: item.color, rain: false), at: 2)
            } else {
                let name = Clothes.woman.top(rawValue: item.name!) ?? Clothes.woman.top.tShirt
                personView.insertSubview(Woman.drawTop(name: name, color: item.color, rain: false), at: 2)
            }
            
        } else if index == 2 {
            personView.subviews[1].removeFromSuperview()
            if UD.shared.isMan() {
                let name = Clothes.man.bottom(rawValue: item.name!) ?? Clothes.man.bottom.regularPants
                personView.insertSubview(Man.drawBottom(name: name, color: item.color), at: 1)
            } else {
                let name = Clothes.woman.bottom(rawValue: item.name!) ?? Clothes.woman.bottom.regularPants
                personView.insertSubview(Woman.drawBottom(name: name, color: item.color), at: 1)
            }
            
        } else if index == 3 {
            personView.subviews[3].removeFromSuperview()
            if UD.shared.isMan() {
                let name = Clothes.man.shoes(rawValue: item.name!) ?? Clothes.man.shoes.gym
                personView.insertSubview(Man.drawShoes(name: name, color: item.color), at: 3)
            } else {
                let name = Clothes.woman.shoes(rawValue: item.name!) ?? Clothes.woman.shoes.gym
                personView.insertSubview(Woman.drawShoes(name: name, color: item.color), at: 3)
            }
        }
    }
    
    func continueWithNextClothes() {
        inCounter += 1
        if inCounter == 4 { outCounter += 1 }
        animateClothesChange()
    }
    
}
