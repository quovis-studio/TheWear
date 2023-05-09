/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension UD {
    
    func withPerson() -> Bool {
        return retrieve(Key.withPerson) == true ? true : false
    }
    
    func isMan() -> Bool {
        return retrieve(Key.sex) == Sex.male.rawValue ? true : false
    }
    
    func isCelsius() -> Bool {
        return retrieve(Key.temperature) == Temperature.celsius.rawValue ? true : false
    }
    
    func isMS() -> Bool {
        return retrieve(Key.wind) == Wind.ms.rawValue ? true : false
    }
    
    func isHpa() -> Bool {
        return retrieve(Key.pressure) == Pressure.hpa.rawValue ? true : false
    }
    
    func isKM() -> Bool {
        return retrieve(Key.visibility) == Visibility.km.rawValue ? true : false
    }
    
    func hasNotificationsPreference() -> Bool {
        return UD.shared.retrieve(Key.notificationsPreference) == true ? true : false
    }
    
    func hasNotificationsPermission() -> Bool {
        return UD.shared.retrieve(Key.notificationsPermission) == true ? true : false
    }
    
    func wardrobeExplained() -> Bool {
        return UD.shared.retrieve(Key.wardrobeExplained) == true ? true : false
    }
    
}
