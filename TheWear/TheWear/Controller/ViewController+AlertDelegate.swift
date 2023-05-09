/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

protocol AlertViewDelegate: AnyObject {
    func showAlertView(error: Error, location: ErrorLocation, style: AlertStyle,outsideTapAction: Bool, _ completion: (() -> ())?)
}

extension ViewController: AlertViewDelegate {
    
    func removeAllAlertViews() {
        for subview in view.subviews {
            if let alert = subview as? AlertView {
                alert.close()
            }
        }
    }
    
    func showAlertView(
        error: Error,
        location: ErrorLocation,
        style: AlertStyle,
        outsideTapAction: Bool,
        _ completion: (() -> ())?
    ) {
        let alertView = AlertView(error: error, location: location, style: style, outsideTapAction: outsideTapAction)
        view.addSubview(alertView)
        alertView.matchSuperview()
        
        if let anotherAlertView = view.subviews[view.subviews.count - 2] as? AlertView {
            anotherAlertView.closed = {
                alertView.open()
            }
        } else {
            alertView.open()
        }
        
        alertView.openAppSettings = {
            if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
               UIApplication.shared.open(settingsUrl)
            }
            completion?()
        }
        alertView.tryAgain = completion
    }
    
}
