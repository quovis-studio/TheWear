/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Woman {
    
    final class func drawHaircut(_ name: Haircut.woman? = nil) -> UIView {
        var haircutView = UIView()
        
        let defaultHaircut = Haircut.woman.bob.rawValue
        let haircut: Haircut.woman!
        if let name = name {
            haircut = name
        } else {
            haircut = Haircut.woman(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.woman.bob
        }
        
        switch haircut {
        case .hedgehog:
            haircutView = drawHedgehog()
        case .shortTail:
            haircutView = drawShortTail()
        case .longTail:
            haircutView = drawLongTail()
        case .bob:
            haircutView = drawBob()
        case .bang:
            haircutView = drawBang()
        case .bunch:
            haircutView = drawBunch()
        case .long:
            haircutView = drawLong()
        case .pigtails:
            haircutView = drawPigtails()
        case .volume:
            haircutView = drawVolume()
        case .afro:
            haircutView = drawAfro()
        case .none:
            haircutView = drawBob()
        }
        
        return haircutView
    }
    
    final class func drawNoHaircut() -> UIView { return UIView() }
    
}
