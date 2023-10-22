/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class ModalView: UIView, UIGestureRecognizerDelegate {
    
    var enableToClose: Bool!
    var following: Bool!
    var allowedToPan = true
    var hold = false
    var scrollsOnTop = true {
        didSet { if scrollsOnTop == true { scrolledToTop() } }
    }
    
    weak var scaleDelegate: ModalViewScaleDelegate?
    
    var panGestureRecognizer: UIPanGestureRecognizer!
    var tapOutsideRecognizer: UITapGestureRecognizer!

    var constraintWhenClosed: NSLayoutConstraint!
    var constraintWhenOpened: NSLayoutConstraint!
    var maxYCoordinate: CGFloat!
    var topPadding: CGFloat!
    
    var loadingView: UIActivityIndicatorView?
    
    let panView = PanView()
    
    let backgroundShadowView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.black.quaternary
        view.alpha = 0
        return view
    }()
    
    let substrateView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.background.primary
        view.layer.cornerRadius = Size.padding.large
        view.layer.cornerCurve = .continuous
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        }
        return view
    }()
    
    let substrateShadowView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.background.quinary
        view.alpha = 0
        view.layer.cornerRadius = Size.padding.large
        view.layer.cornerCurve = .continuous
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        }
        return view
    }()

    private func configureBackgroundShadowView() {
        addSubview(backgroundShadowView)
        backgroundShadowView.matchSuperview()
    }
    
    private func configureSubstrateShadowView() {
        substrateView.addSubview(substrateShadowView)
        substrateShadowView.matchSuperview()
    }
        
    private func configurePanView() {
        substrateView.addSubview(panView)
        panView.constraints(
            top: substrateView.top(Size.padding.xSmall),
            centerX: substrateView.centerX,
            width: .equalToConstant(Size.system.panView.width),
            height: .equalToConstant(Size.system.panView.height)
        )
    }
    
    func configureModalSubstrateView() {
        addSubview(substrateView)
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        let topSafeArea = UIApplication.shared.windows[0].safeAreaInsets.top
        topPadding = !following ? Size.padding.xxxSmall : Size.padding.small
        
        var width = 0.0
        var height = 0.0
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            width = screenWidth
            height = screenHeight - topSafeArea - topPadding
        } else {
            height = min(screenWidth, screenHeight) - 10 * Size.padding.small
            width = 0.8 * height
        }
        substrateView.constraints(
            width: .equalToConstant(width),
            height: .equalToConstant(height)
        )
        
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            constraintWhenClosed = substrateView.topAnchor.constraint(equalTo: bottomAnchor)
            constraintWhenOpened = substrateView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: topPadding)
        } else {
            topPadding = !following ? 0 : Size.padding.small
            constraintWhenClosed = substrateView.centerYAnchor.constraint(equalTo: bottomAnchor, constant: height / 2)
            constraintWhenOpened = substrateView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: topPadding)
        }
        constraintWhenClosed.isActive = true
        substrateView.constraints(centerX: self.centerX)
        
        let substrateViewMask = UIView()
        substrateViewMask.frame = CGRect(x: 0, y: 0, width: width, height: height)
        substrateViewMask.backgroundColor = Color.white.primary
        substrateViewMask.layer.cornerRadius = Size.padding.large
        substrateViewMask.layer.cornerCurve = .continuous
        if (UIDevice.current.userInterfaceIdiom == .phone) {
            substrateViewMask.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        }
        substrateView.mask = substrateViewMask
    }
    
    private func configureGestureRecognizers(_ enableToClose: Bool) {
        guard enableToClose else {return}
        panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        panGestureRecognizer.delegate = self
        panGestureRecognizer.isEnabled = false
        addGestureRecognizer(panGestureRecognizer)
        if (UIDevice.current.userInterfaceIdiom == .pad) {
            tapOutsideRecognizer = UITapGestureRecognizer(
                target: self,
                action: #selector(closeOnTapOutside(_:)))
            tapOutsideRecognizer.isEnabled = false
            addGestureRecognizer(tapOutsideRecognizer)
        }
    }
    
    func disableToClose() {
        gestureRecognizers?.forEach { removeGestureRecognizer($0) }
    }
    
    func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return true
    }
    
    init(following: Bool = false,
         enableToClose: Bool = true) {
        super.init(frame: .zero)
        self.following = following
        if !following { configureBackgroundShadowView() }
        configureModalSubstrateView()
        configureSubstrateShadowView()
        configurePanView()
        self.enableToClose = enableToClose
        configureGestureRecognizers(enableToClose)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
