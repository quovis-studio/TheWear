/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class StatusBarSubstrateView: UIView {
    
    private let gradient = CAGradientLayer()
    
    private func configureInitialGradient() {
        gradient.colors = [Color.weather.sunny.cgColor, Color.weather.sunny.withAlphaComponent(0).cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
    
    func updateGradient(with color: UIColor) {
        gradient.frame = bounds
        let toColors = [color.cgColor, color.withAlphaComponent(0).cgColor]
        let animation = CABasicAnimation(keyPath: "colors")
        animation.fromValue = gradient.colors
        animation.toValue = toColors
        gradient.colors = toColors
        animation.duration = Duration.long
        gradient.add(animation, forKey: nil)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureInitialGradient()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
