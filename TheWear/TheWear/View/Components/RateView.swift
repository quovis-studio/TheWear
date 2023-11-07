/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class RateView: UIView {
    
    private var rateViewConstraintWhenOpen: NSLayoutConstraint!
    private var rateViewConstraintWhenClose: NSLayoutConstraint!
    
    private lazy var substrateView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = Size.padding.medium
        view.layer.cornerCurve = .continuous
        view.layer.borderColor = Color.black.quinary.cgColor
        view.layer.borderWidth = Size.system.border
        view.backgroundColor = Color.background.primary
        return view
    }()
    
    private let closeButton: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "delete"))
        imageView.isUserInteractionEnabled = true
        imageView.tintColor = Color.background.quinary
        return imageView
    }()
    
    private let personViewContainer = UIView()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "rate_title".localized
        label.font = Font.body
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textColor = Color.label.primary
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "rate_description".localized
        label.font = Font.footnote1
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textColor = Color.label.primary
        return label
    }()
    
    private let appStoreButton: UILabel = {
        let label = UILabel()
        label.text = "go_to_appstore".localized
        label.font = Font.subhead
        label.textAlignment = .center
        label.layer.cornerRadius = Size.padding.xSmall
        label.layer.cornerCurve = .continuous
        label.clipsToBounds = true
        if UIScreen.main.traitCollection.userInterfaceStyle == .dark {
            label.textColor = Color.white.primary
            label.backgroundColor = Color.background.quinary
        } else {
            label.textColor = Color.black.primary
            label.backgroundColor = Color.background.quinary
        }
        return label
    }()
    
    private func configureConstraints() {
        rateViewConstraintWhenOpen = substrateView.centerYAnchor.constraint(
            equalTo: centerYAnchor
        )
        rateViewConstraintWhenClose = substrateView.topAnchor.constraint(
            equalTo: bottomAnchor,
            constant: Size.padding.medium
        )
        rateViewConstraintWhenClose.isActive = true
    }
    
    private func configureSubstrateView() {
        addSubview(substrateView)
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            substrateView.constraints(
                left: self.left(Size.padding.xSmall),
                right: self.right(Size.padding.xSmall),
                height: .equalTo(substrateView.width, multiplier: 1.4)
            )
            
        } else {
            let screenWidth = UIScreen.main.bounds.size.width
            let screenHeight = UIScreen.main.bounds.size.height
            let height = min(screenWidth, screenHeight) - 10 * Size.padding.small
            let width = 0.8 * height
            
            substrateView.constraints(
                centerX: self.centerX,
                width: .equalToConstant(width),
                height: .equalToConstant(height)
            )
        }
    }
    
    private func configureAppStoreButton() {
        substrateView.addSubview(appStoreButton)
        appStoreButton.constraints(
            bottom: substrateView.bottom(Size.padding.medium),
            centerX: substrateView.centerX,
            width: .equalTo(substrateView.width, constant: -2 * Size.padding.medium),
            height: .equalToConstant(Size.button.large)
        )
    }
    
    private func configureDescriptionLabel() {
        substrateView.addSubview(descriptionLabel)
        descriptionLabel.constraints(
            left: substrateView.left(Size.padding.medium),
            bottom: appStoreButton.top(Size.padding.small),
            right: substrateView.right(Size.padding.medium)
        )
    }
    
    private func configureTitleLabel() {
        substrateView.addSubview(titleLabel)
        titleLabel.constraints(
            left: substrateView.left(Size.padding.medium),
            bottom: descriptionLabel.top(Size.padding.xxxSmall),
            right: substrateView.right(Size.padding.medium)
        )
    }
    
    private func configureCloseButton() {
        substrateView.addSubview(closeButton)
        closeButton.constraints(
            top: substrateView.top(Size.padding.small),
            right: substrateView.right(Size.padding.medium),
            width: .equalToConstant(14),
            height: .equalToConstant(14)
        )
    }
    
    private func configurePersonViewContainer() {
        substrateView.addSubview(personViewContainer)
        personViewContainer.constraints(
            top: closeButton.bottom(Size.padding.small),
            left: substrateView.left(Size.padding.medium),
            bottom: titleLabel.top(Size.padding.small),
            right: substrateView.right(Size.padding.medium)
        )
    }
    
    private func configurePersonViewContainerMask() {
        let maskView = UIView()
        maskView.backgroundColor = .white
        maskView.frame = CGRect(
            x: 0,
            y: 0,
            width: personViewContainer.frame.width,
            height: personViewContainer.frame.height
        )
        personViewContainer.mask = maskView
    }
    
    private func configurePersonView() {
        configurePersonViewContainerMask()
        let personView = UIView(frame: .init(x: 0, y: 0, width: 252, height: 600))
        personViewContainer.addSubview(personView)
        personView.transform = CGAffineTransform(
            scaleX: personViewContainer.frame.width / 252,
            y: personViewContainer.frame.width / 252
        )
        personView.frame.origin = .zero
        personView.addSubview(UD.shared.isMan() ? Man.drawRate() : Woman.drawRate())
    }
    
    func open() {
        layoutIfNeeded()
        configurePersonView()
        rateViewConstraintWhenClose.isActive = false
        rateViewConstraintWhenOpen.isActive = true
        AnalyticsService.shared.sendEvent(.rateIsShown)
        UIView.animate(
            withDuration: Duration.long,
            delay: Duration.short,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            UD.shared.save(Key.timeAfterRateViewShown, Date().timeIntervalSinceReferenceDate)
            self?.layoutIfNeeded()
        }
    }
    
    @objc func close() {
        rateViewConstraintWhenOpen.isActive = false
        rateViewConstraintWhenClose.isActive = true
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.layoutIfNeeded()
        } completion: { _ in
            self.removeFromSuperview()
        }
    }
    
    private func configureGestureRecognizers() {
        closeButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleCloseButtonTap)))
        appStoreButton.addTapGesture(self, #selector(handleAppStoreButtonTap(_:)))
    }
    
    @objc private func handleCloseButtonTap() {
        AnalyticsService.shared.sendEvent(.rateClosed)
        UD.shared.save(Key.showRateViewAfter14Days, true)
        close()
    }
    
    @objc private func handleAppStoreButtonTap(_ recognizer: UILongPressGestureRecognizer) {
        appStoreButton.handleTapGesture(recognizer) {
            AnalyticsService.shared.sendEvent(.goToAppStoreTapped)
            if let url = URL(string: "https://apps.apple.com/ru/app/thewear/id1481102346?l=en") {
                UIApplication.shared.open(url)
            }
            UD.shared.save(Key.showRateViewAfter14Days, false)
            close()
        }
    }
    
    private func configureObserver() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleUpdateTo14DaysWaitWhenAppClosed),
            name: UIScene.didDisconnectNotification,
            object: nil
        )
    }
    
    @objc func handleUpdateTo14DaysWaitWhenAppClosed() {
        if UD.shared.retrieve(Key.showRateViewAfter14Days) == false {
            UD.shared.save(Key.showRateViewAfter14Days, true)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubstrateView()
        configureAppStoreButton()
        configureDescriptionLabel()
        configureTitleLabel()
        configureCloseButton()
        configurePersonViewContainer()
        configureConstraints()
        configureGestureRecognizers()
        configureObserver()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
