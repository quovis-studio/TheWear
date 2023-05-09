/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class ClothesView: UIView {
    
    var name: String!
    var color: Color.clothes!
    
    init(name: String, color: Color.clothes) {
        super.init(frame: .zero)
        self.name = name
        self.color = color
    }
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
