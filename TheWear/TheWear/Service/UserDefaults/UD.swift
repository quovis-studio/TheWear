/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

class UD {
    
    static let shared = UD()
    
    func retrieve<T>(_ key: String) -> T? {
        let result = UserDefaults.standard.value(forKey: key)
        return result as? T
    }
    
    func save<T>(_ key: String, _ data: T) {
        UserDefaults.standard.setValue(data, forKey: key)
    }
    
    private init() {  }
    
}
