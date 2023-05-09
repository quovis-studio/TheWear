/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension PartCollectionViewCell {
    
    func configureChangeViews() {
        umbrellaChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleUmbrellaChange))
        )
        headdressChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleHeaddressChange))
        )
        leftGloveChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleGlovesChange))
        )
        rightGloveChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleGlovesChange))
        )
        rainGloveChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleGlovesChange))
        )
        scarfChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleScarfChange))
        )
        topChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleTopChange))
        )
        bottomChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleBottomChange))
        )
        shoesChangeView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(handleShoesChange))
        )

        [umbrellaChangeView,
         scarfChangeView,
         topChangeView,
         bottomChangeView,
         shoesChangeView,
         headdressChangeView,
         leftGloveChangeView,
         rightGloveChangeView,
         rainGloveChangeView
        ].forEach {
            personViewContainer.addSubview($0)
            $0.isExclusiveTouch = true
        }
        
        shoesChangeView.constraints(
            bottom: personViewContainer.bottom,
            right: personViewContainer.right,
            width: .equalTo(personViewContainer.width, multiplier: 180 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 72 / 600)
        )
        bottomChangeView.constraints(
            left: shoesChangeView.left,
            bottom: shoesChangeView.top,
            width: .equalTo(personViewContainer.width, multiplier: 124 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 207 / 600)
        )
        topChangeView.constraints(
            bottom: bottomChangeView.top,
            centerX: bottomChangeView.centerX,
            width: .equalTo(personViewContainer.width, multiplier: 208 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 170 / 600)
        )
        leftGloveChangeView.constraints(
            right: bottomChangeView.left,
            centerY: bottomChangeView.top,
            width: .equalTo(personViewContainer.width, multiplier: 68 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 58 / 600)
        )
        rightGloveChangeView.constraints(
            left: bottomChangeView.right,
            centerY: bottomChangeView.top,
            width: .equalTo(personViewContainer.width, multiplier: 56 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 56 / 600)
        )
        rainGloveChangeView.constraints(
            centerX: scarfChangeView.right,
            centerY: scarfChangeView.bottom,
            width: .equalTo(personViewContainer.width, multiplier: 46 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 46 / 600)
        )
        scarfChangeView.constraints(
            bottom: topChangeView.top,
            centerX: topChangeView.centerX,
            width: .equalTo(personViewContainer.width, multiplier: 138 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 50 / 600)
        )
        headdressChangeView.constraints(
            bottom: scarfChangeView.top,
            centerX: scarfChangeView.centerX,
            width: .equalTo(personViewContainer.width, multiplier: 110 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 69 / 600)
        )
        umbrellaChangeView.constraints(
            bottom: headdressChangeView.bottom,
            centerX: headdressChangeView.centerX,
            width: .equalTo(personViewContainer.width, multiplier: 260 / 252),
            height: .equalTo(personViewContainer.height, multiplier: 133 / 600)
        )
    }
    
}
