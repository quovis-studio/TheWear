/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class NavigationView: UIView {
    
    weak var navigationDelegate: NavigationDelegate?
    
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.font = Font.headline
        label.text = ""
        label.textColor = .white
        label.textAlignment = .left
        label.isExclusiveTouch = true
        return label
    }()
    
    private let settingsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isExclusiveTouch = true
        imageView.configureSubstrateBackground()
        imageView.startPulseAnimation()
        return imageView
    }()
    
    private func configureCityLabel() {
        addSubview(cityLabel)
        cityLabel.addTapGesture(self, #selector(handleSearchViewOpen(_:)))
        cityLabel.constraints(
            top: self.top,
            left: self.left,
            bottom: self.bottom,
            right: settingsImageView.left(Size.padding.xSmall)
        )
    }
    
    private func configureSettingsImageView() {
        addSubview(settingsImageView)
        settingsImageView.addTapGesture(self, #selector(handleSettingsViewOpen(_:)))
        settingsImageView.constraints(
            top: self.top,
            bottom: self.bottom,
            right: self.right,
            width: .equalToConstant(Size.icon.large),
            height: .equalToConstant(Size.icon.large)
        )
    }
    
    @objc private func handleSettingsViewOpen(_ recognizer: UILongPressGestureRecognizer) {
        settingsImageView.handleTapGesture(recognizer) { navigationDelegate?.openSettingsView() }
    }
    
    @objc private func handleSearchViewOpen(_ recognizer: UILongPressGestureRecognizer) {
        cityLabel.handleTapGesture(recognizer) { navigationDelegate?.openSearchView(enableToClose: true) }
    }
    
    func update(with city: String) {
        isUserInteractionEnabled = true
        cityLabel.text = city
        settingsImageView.image = UIImage(named: "settings")
        settingsImageView.stopPulseAnimation()
    }
    
    func changeAlpha(with alpha: CGFloat) {
        self.alpha = CGFloat(alpha)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isUserInteractionEnabled = false
        configureSettingsImageView()
        configureCityLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
