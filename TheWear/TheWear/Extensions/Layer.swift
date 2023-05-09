/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension CALayer {
    
    func addSublayers(_ layers: CAShapeLayer...) {
        layers.forEach { addSublayer($0) }
    }
    
}
