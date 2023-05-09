/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension UD {
    
    func saveTopClothes(_ clothes: [ClothesItem]) {
        do {
            let data = try JSONEncoder().encode(clothes)
            UserDefaults.standard.set(data, forKey: Key.top)
        } catch {
            return
        }
    }
    
    func retrieveTopClothes() -> [ClothesItem]? {
        if let data = UserDefaults.standard.data(forKey: Key.top) {
            do {
                let clothes = try JSONDecoder().decode([ClothesItem].self, from: data)
                return clothes
            } catch {
                return nil
            }
        }
        return nil
    }
    
    func saveBottomClothes(_ clothes: [ClothesItem]) {
        do {
            let data = try JSONEncoder().encode(clothes)
            UserDefaults.standard.set(data, forKey: Key.bottom)
        } catch {
            return
        }
    }
    
    func retrieveBottomClothes() -> [ClothesItem]? {
        if let data = UserDefaults.standard.data(forKey: Key.bottom) {
            do {
                let clothes = try JSONDecoder().decode([ClothesItem].self, from: data)
                return clothes
            } catch {
                return nil
            }
        }
        return nil
    }
    
    func saveShoes(_ clothes: [ClothesItem]) {
        do {
            let data = try JSONEncoder().encode(clothes)
            UserDefaults.standard.set(data, forKey: Key.shoes)
        } catch {
            return
        }
    }
    
    func retrieveShoes() -> [ClothesItem]? {
        if let data = UserDefaults.standard.data(forKey: Key.shoes) {
            do {
                let clothes = try JSONDecoder().decode([ClothesItem].self, from: data)
                return clothes
            } catch {
                return nil
            }
        }
        return nil
    }
    
    func saveAccessories(_ clothes: [ClothesItem]) {
        do {
            let data = try JSONEncoder().encode(clothes)
            UserDefaults.standard.set(data, forKey: Key.accessories)
        } catch {
            return
        }
    }
    
    func retrieveAccessories() -> [ClothesItem]? {
        if let data = UserDefaults.standard.data(forKey: Key.accessories) {
            do {
                let clothes = try JSONDecoder().decode([ClothesItem].self, from: data)
                return clothes
            } catch {
                return nil
            }
        }
        return nil
    }
    
}
