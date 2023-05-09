/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension Man {
    
    final class func drawHaircut(_ name: Haircut.man? = nil) -> UIView {
        var haircutView = UIView()
        
        let defaultHaircut = Haircut.man.canadian.rawValue
        let haircut: Haircut.man!
        if let name = name {
            haircut = name
        } else {
            haircut = Haircut.man(rawValue: UD.shared.retrieve(Key.haircut) ?? defaultHaircut) ?? Haircut.man.canadian
        }
        
        switch haircut {
        case .bald:
            haircutView = drawBald()
        case .bob:
            haircutView = drawBob()
        case .canadian:
            haircutView = drawCanadian()
        case .dreadlocks:
            haircutView = drawDreadlocks()
        case .forelock:
            haircutView = drawForelock()
        case .halfbox:
            haircutView = drawHalfbox()
        case .hedgehog:
            haircutView = drawHedgehog()
        case .kwiff:
            haircutView = drawKwiff()
        case .long:
            haircutView = drawLong()
        case .short:
            haircutView = drawShort()
        case .undercut:
            haircutView = drawUndercut()
        case .afro:
            haircutView = drawAfro()
        case .none:
            haircutView = drawCanadian()
        }
        
        return haircutView
    }
    
    final class func drawNoHaircut() -> UIView { return UIView() }
    
}
