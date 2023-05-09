/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBeardForBeanie() -> CAShapeLayer {
        var beardLayer = CAShapeLayer()
        
        let defaultBeard = Beard.shaven.rawValue
        let beard = Beard(rawValue: UD.shared.retrieve(Key.beard) ?? defaultBeard) ?? Beard.shaven

        switch beard {
        case .shaven:
            beardLayer = drawShavenForBeanie()
        case .skipper:
            beardLayer = drawSkipperForBeanie()
        case .stubble:
            beardLayer = drawStubbleForBeanie()
        case .chevron:
            beardLayer = drawChevronForBeanie()
        case .rounded:
            beardLayer = drawRoundedForBeanie()
        case .poirot:
            beardLayer = drawPoirotForBeanie()
        case .hispaniola:
            beardLayer = drawHispaniolaForBeanie()
        case .full:
            beardLayer = drawFullForBeanie()
        }
        
        return beardLayer
    }
    
}
