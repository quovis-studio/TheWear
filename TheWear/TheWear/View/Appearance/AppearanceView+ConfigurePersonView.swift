/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension AppearanceView {
    
    func configurePersonView() {
        substrateView.addSubview(personSubstrateView)
        personSubstrateView.addSubview(personContainerView)
        personContainerView.addSubview(personView)
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            personSubstrateView.constraints(
                top: substrateView.top(Size.padding.xLarge),
                left: substrateView.left(Size.padding.xLarge),
                right: substrateView.right(Size.padding.xLarge),
                height: .equalTo(personSubstrateView.width)
            )
        } else {
            personSubstrateView.constraints(
                top: substrateView.top(Size.padding.xLarge),
                centerX: substrateView.centerX,
                width: .equalTo(substrateView.width, multiplier: 0.5),
                height: .equalTo(personSubstrateView.width)
            )
        }
        personContainerView.constraints(
            top: personSubstrateView.top,
            left: personSubstrateView.left(-Size.padding.large),
            right: personSubstrateView.right(-Size.padding.large),
            height: .equalTo(personContainerView.width, multiplier: 600 / 252)
        )
        layoutIfNeeded()
        personView.transform = CGAffineTransform(
            scaleX: personContainerView.frame.width / 252,
            y: personContainerView.frame.height / 600
        )
        let maskView = UIView()
        maskView.layer.cornerCurve = .continuous
        maskView.layer.cornerRadius = Size.padding.medium
        maskView.frame = CGRect(x: 0, y: 0, width: personSubstrateView.frame.width, height: personSubstrateView.frame.height)
        maskView.backgroundColor = Color.white.primary
        personSubstrateView.mask = maskView
        updatePersonView()
    }
    
    func updatePersonView() {
        personView.subviews.forEach { $0.removeFromSuperview() }
        
        if UD.shared.isMan() {
            personView.addSubview(Man.drawBody(false))
            personView.addSubview(Man.drawTshirt(Color.clothes.red.color, false))
            personView.addSubview(Man.drawHaircut())
            personView.addSubview(Man.drawBeard())
            
        } else {
            personView.addSubview(Woman.drawBody(false))
            personView.addSubview(Woman.drawTshirt(Color.clothes.red.color, false))
            personView.addSubview(Woman.drawHaircut())
        }
    }
    
}
