/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit
import StoreKit

extension SettingsSupportTableViewCell {
    
    func chooseSupport(with support: SettingsSupportItem) {
        switch support {
        case .rateTheApp:
            if let scene = UIApplication.shared.connectedScenes.first(
                where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
            
        case .writeToDev:
            UIApplication.shared.open(
                URL(string: "mailto:quovis@yandex.com")!,
                options: [:], completionHandler: nil)
        }
    }
    
}
