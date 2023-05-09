/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension UIGestureRecognizer {
    
  func cancel() {
    isEnabled = false
    isEnabled = true
  }
    
}

extension UIView {
    
    func addTapGesture(
        _ target: Any?,
        _ selector: Selector?
    ) {
        isUserInteractionEnabled = true
        let recognizer = UILongPressGestureRecognizer(target: target, action: selector)
        recognizer.minimumPressDuration = 0
        addGestureRecognizer(recognizer)
    }
    
    func handleTapGesture(
        _ recognizer: UILongPressGestureRecognizer,
        _ completion: () -> ()
    ) {
        if recognizer.state == .began {
            animateWhenTouchDown()
        } else if recognizer.state == .changed {
            if !bounds.contains(recognizer.location(in: self)) {
                recognizer.cancel()
                animateWhenTouchCanceled()
            }
        } else if recognizer.state == .ended {
            animateWhenTouchUpInside()
            completion()
        } else if recognizer.state == .failed || recognizer.state == .cancelled {
            animateWhenTouchCanceled()
        }
    }
    
    func animateWhenTouchDown() {
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) {
            self.alpha = 0.8
        }
    }
    
    func animateWhenTouchCanceled() {
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) {
            self.alpha = 1
        }
    }
    
    func animateWhenTouchUpInside() {
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) {
            self.alpha = 1
        }
    }
    
}
