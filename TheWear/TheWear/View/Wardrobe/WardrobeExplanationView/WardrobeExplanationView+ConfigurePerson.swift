/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeExplanationView {
    
    func configurePerson() {
        substrateView.addSubview(personViewContainer)
        personViewContainer.addSubview(personView)
        
        personViewContainer.constraints(
            top: panView.bottom(Size.padding.large),
            bottom: titleLabel.top(Size.padding.large),
            centerX: substrateView.centerX,
            width: .equalTo(personViewContainer.height, multiplier: 252 / 600)
        )
        personView.centerInSuperview(
            width: .equalToConstant(252),
            height: .equalToConstant(600)
        )
        layoutIfNeeded()
        
        personView.transform = CGAffineTransform(
            scaleX: personViewContainer.frame.width / 252,
            y: personViewContainer.frame.height / 600
        )
        drawPersonView()
    }
    
    func drawPersonView() {
        if UD.shared.isMan() {
            personView.addSubview(Man.drawBody(false))
            personView.addSubview(Man.drawBottom(name: .regularPants, color: .blue))
            personView.addSubview(Man.drawTop(name: .polo, color: .red, rain: false))
            personView.addSubview(Man.drawShoes(name: .gym, color: .whiteForWardrobe))
            personView.addSubview(Man.drawHaircut())
            personView.addSubview(Man.drawBeard())
            
        } else {
            personView.addSubview(Woman.drawBody(false))
            personView.addSubview(Woman.drawBottom(name: .regularPants, color: .blue))
            personView.addSubview(Woman.drawTop(name: .polo, color: .red, rain: false))
            personView.addSubview(Woman.drawShoes(name: .gym, color: .whiteForWardrobe))
            personView.addSubview(Woman.drawHaircut())
        }
    }
    
}
