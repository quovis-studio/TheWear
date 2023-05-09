/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol ModalViewScaleDelegate: AnyObject {
    func scaleOnPan(y: CGFloat, translation: CGPoint)
    func scaleWhenOpen()
    func scaleWhenClose()
    func bringToBack()
}

extension ModalView: ModalViewScaleDelegate {
    
    func scaleWhenClose() {
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.substrateView.transform = .identity
            self?.substrateShadowView.alpha = 0
        }
    }
    
    func scaleWhenOpen() {
        let scaleFactor = (substrateView.frame.width - 2 * Size.padding.small) / substrateView.frame.width
        var transform = substrateView.transform.scaledBy(
            x: scaleFactor,
            y: scaleFactor
        )
        let translate = ((substrateView.frame.height * scaleFactor) - substrateView.frame.height) / 2
        transform = transform.translatedBy(
            x: 0,
            y: translate - 2
        )
        
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.substrateView.transform = transform
            self?.substrateShadowView.alpha = 1
        }
    }
    
    func scaleOnPan(y: CGFloat, translation: CGPoint) {
        let shadowAlpha = 1 - (y - maxYCoordinate) / substrateView.frame.height
        substrateShadowView.alpha = shadowAlpha
        
        let scaleFactor = 1 + (translation.y / substrateView.frame.height) * (1 / Size.padding.small)
        var transform = substrateView.transform.scaledBy(
            x: scaleFactor,
            y: scaleFactor
        )
        let translate = ((substrateView.frame.height * scaleFactor) - substrateView.frame.height) / 2
        transform = transform.translatedBy(
            x: 0,
            y: translate
        )
        
        substrateView.transform = transform
    }
    
    func bringToBack() {
        let scaleFactor = (substrateView.frame.width - 2 * Size.padding.small) / substrateView.frame.width
        let translate = ((substrateView.frame.height * (1 - scaleFactor)) / 2) + 2
        var transform = CGAffineTransform.identity
        transform = transform.translatedBy(x: 0, y: -translate)
        transform = transform.scaledBy(x: scaleFactor, y: scaleFactor)
        
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.substrateView.transform = transform
            self?.substrateShadowView.alpha = 1
        }
    }
    
}
