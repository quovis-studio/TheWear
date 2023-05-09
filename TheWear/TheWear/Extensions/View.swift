/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
    
    func configureSubstrateBackground() {
        backgroundColor = Color.white.substrate
        layer.cornerCurve = .continuous
        layer.cornerRadius = Size.padding.medium
        layer.borderColor = Color.white.quinary.cgColor
        layer.borderWidth = Size.system.border
    }
    
    func startPulseAnimation() {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = 1.0
        animation.toValue = 0.4
        animation.duration = Duration.long
        animation.isRemovedOnCompletion = false
        animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        animation.autoreverses = true
        animation.repeatCount = .infinity
        layer.add(animation, forKey: "pulse")
    }
    
    func stopPulseAnimation() {
        layer.removeAnimation(forKey: "pulse")
    }
    
}
