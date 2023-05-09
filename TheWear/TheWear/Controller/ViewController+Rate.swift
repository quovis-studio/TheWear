/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension ViewController {
    
    func showRateViewIfNeeded() {
        guard !UD.shared.configureRateViewIfNeeded() else { return }
        
        let lastTime = UD.shared.retrieve(Key.timeAfterRateViewShown) ?? 0.0
        let nowTime = Date().timeIntervalSinceReferenceDate
        let daysPassed = (nowTime - lastTime) / 86400
        
        if UD.shared.retrieve(Key.showRateViewAfter2Days) == true {
            if daysPassed >= 2.0 {
                UD.shared.save(Key.showRateViewAfter2Days, false)
                showRateView()
            }
            
        } else if UD.shared.retrieve(Key.showRateViewAfter14Days) == true {
            if daysPassed >= 14.0 {
                showRateView()
            }
            
        } else {
            if daysPassed > 120.0 {
                showRateView()
            }
        }
    }
    
    private func showRateView() {
        let rateView = RateView()
        view.addSubview(rateView)
        rateView.matchSuperview()
        rateView.open()
    }
    
}
