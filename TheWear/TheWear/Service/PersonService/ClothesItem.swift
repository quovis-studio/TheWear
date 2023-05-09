/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct ClothesItem: Codable {
    
    var name: String!
    var color: Color.clothes!
    var byDefault: Bool!

    init(name: String?, color: Color.clothes?, byDefault: Bool? = false) {
        self.name = name
        self.color = color
        self.byDefault = byDefault
    }
    
    init() {
        self.name = nil
        self.color = nil
        self.byDefault = nil
    }
    
}
