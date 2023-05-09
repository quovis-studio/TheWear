/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeExplanationView {

    override func closed() {
        super.closed()
        UD.shared.save(Key.wardrobeExplained, true)
        AnalyticsService.shared.sendEvent(.wardrobeExplanationOkTapped)
    }
    
}
