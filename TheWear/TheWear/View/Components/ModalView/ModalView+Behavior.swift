/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension ModalView: UIScrollViewDelegate {
    
    @objc func viewBeginPan() {  }
    
    @objc func viewChangePan() {  }
    
    @objc func viewTapOutside() {  }
    
    @objc func scrolledToTop() {  }
    
    @objc func opened() {  }
    
    @objc func closed() {  }
    
    func open() {
        layoutIfNeeded()
        constraintWhenClosed.isActive = false
        constraintWhenOpened.isActive = true
        
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.layoutIfNeeded()
            self?.backgroundShadowView.alpha = 1
        } completion: { _ in
            self.opened()
            self.viewDidAppear()
        }
        
        if let scaleDelegate = scaleDelegate {
            scaleDelegate.scaleWhenOpen()
        }
    }
    
    @objc func close(_ completion: (() -> ())? = nil) {
        constraintWhenOpened.isActive = false
        constraintWhenClosed.isActive = true
        
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.layoutIfNeeded()
            self?.backgroundShadowView.alpha = 0
        } completion: { _ in
            completion?()
            self.closed()
            self.removeFromSuperview()
        }
        
        if let scaleDelegate = scaleDelegate {
            scaleDelegate.scaleWhenClose()
        }
    }
    
    func closeImmediately() {
        self.removeFromSuperview()
    }
    
    @objc func closeOnTapOutside(_ recognizer: UITapGestureRecognizer) {
        if !substrateView.frame.contains(recognizer.location(in: self)) {
            viewTapOutside()
            close()
        }
    }
    
    func bringBackToOpen() {
        constraintWhenOpened.constant = topPadding
        UIView.animate(
            withDuration: Duration.long,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseInOut
        ) { [weak self] in
            self?.layoutIfNeeded()
            self?.backgroundShadowView.alpha = 1
        }
        
        if let scaleDelegate = scaleDelegate {
            scaleDelegate.bringToBack()
        }
    }
    
    @objc func viewDidAppear() {
        maxYCoordinate = (UIDevice.current.userInterfaceIdiom == .phone) ?
        substrateView.frame.origin.y :
        substrateView.frame.midY
        if enableToClose {
            panGestureRecognizer.isEnabled = true
            if UIDevice.current.userInterfaceIdiom == .pad {
                tapOutsideRecognizer.isEnabled = true
            }
        }
    }
    
    @objc func handlePan(_ recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .began {
            viewBeginPan()
            
        } else if recognizer.state == .changed {
            let translation = recognizer.translation(in: self)
            
            if scrollsOnTop && allowedToPan {
                viewChangePan()
                let y = ((UIDevice.current.userInterfaceIdiom == .phone) ?
                substrateView.frame.origin.y :
                substrateView.frame.midY) + translation.y
                
                if y >= maxYCoordinate {
                    constraintWhenOpened.constant += translation.y
                    
                    if !following {
                        let shadowAlpha = 1 - (y - maxYCoordinate) / substrateView.frame.height
                        backgroundShadowView.alpha = shadowAlpha
                    }
                    
                    if let scaleDelegate = scaleDelegate {
                        scaleDelegate.scaleOnPan(
                            y: y,
                            translation: translation)
                    }
                }
                layoutIfNeeded()
            }
            recognizer.setTranslation(.zero, in: self)
            
        } else if recognizer.state == .ended ||
                  recognizer.state == .cancelled ||
                  recognizer.state == .failed {
            let y = (UIDevice.current.userInterfaceIdiom == .phone) ?
            substrateView.frame.origin.y :
            substrateView.frame.midY
            if (y - maxYCoordinate) >= substrateView.frame.height / 6 {
                close()
            } else {
                bringBackToOpen()
            }
        }
    }
    
    func startLoading() {
        loadingView = UIActivityIndicatorView(style: .medium)
        guard let loadingView = loadingView else { return }
        loadingView.color = Color.label.primary
        addSubview(loadingView)
        let topPadding = Size.padding.small + Size.icon.large + Size.padding.large + Size.cell.search
        loadingView.constraints(
            top: panView.bottom(topPadding),
            centerX: self.centerX
        )
        loadingView.startAnimating()
    }
    
    func stopLoading() {
        UIView.animate(
            withDuration: Duration.medium,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 4,
            options: .curveEaseIn
        ) { [self] in
            loadingView?.alpha = 0
        } completion: { _ in
            self.loadingView?.removeFromSuperview()
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < 0 && hold {
            scrollsOnTop = true
            scrollView.isScrollEnabled = false
            scrollView.isScrollEnabled = true
            let xContentOffset = scrollView.contentOffset.x
            scrollView.setContentOffset(CGPoint(x: xContentOffset, y: 0), animated: false)
            
        } else if scrollView.contentOffset.y > 0 {
            scrollsOnTop = false
            
        } else if scrollView.contentOffset.y == 0 {
            scrollsOnTop = true
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        hold = true
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        hold = false
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y == 0 {
            scrollsOnTop = true
        }
    }
    
}
