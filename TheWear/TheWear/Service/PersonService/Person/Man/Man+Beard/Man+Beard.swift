/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawBeard(_ name: Beard? = nil) -> UIView {
        var beardView = UIView()
        
        let defaultBeard = Beard.shaven.rawValue
        let beard: Beard!
        if let name = name {
            beard = name
        } else {
            beard = Beard(rawValue: UD.shared.retrieve(Key.beard) ?? defaultBeard) ?? Beard.shaven
        }
        
        switch beard {
        case .shaven:
            beardView = drawShaven()
        case .skipper:
            beardView = drawSkipper()
        case .stubble:
            beardView = drawStubble()
        case .chevron:
            beardView = drawChevron()
        case .rounded:
            beardView = drawRounded()
        case .poirot:
            beardView = drawPoirot()
        case .hispaniola:
            beardView = drawHispaniola()
        case .full:
            beardView = drawFull()
        case .none:
            beardView = drawShaven()
        }
        
        return beardView
    }
    
}
