/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension UD {
    
    func configureIfNeeded() {
        if UD.shared.retrieve(Key.notFirstTimeOpened) == true {} else {
            AnalyticsService.shared.sendEvent(.appFirstOpened)
            UD.shared.save(Key.notFirstTimeOpened, true)
            
            // Weather
            UD.shared.save(Key.withPerson, true)
            
            // Units
            UD.shared.save(Key.temperature, CalendarAndLocaleService.shared.getDefaultTempUnits().rawValue)
            print(CalendarAndLocaleService.shared.getDefaultTempUnits().rawValue)
            UD.shared.save(Key.wind, Wind.ms.rawValue)
            UD.shared.save(Key.pressure, Pressure.hpa.rawValue)
            UD.shared.save(Key.visibility, Visibility.km.rawValue)
            
            // Person
            UD.shared.save(Key.tempFeeling, WeatherFeeling.asIs.value)
            UD.shared.save(Key.sex, Sex.male.rawValue)
            
            // Appearance
            UD.shared.save(Key.haircut, Haircut.man.canadian.rawValue)
            UD.shared.save(Key.beard, Beard.shaven.rawValue)
            UD.shared.save(Key.hairColor, Color.hair.black.rawValue)
            UD.shared.save(Key.beardColor, Color.hair.black.rawValue)
            UD.shared.save(Key.skinColor, Color.skin.honey.rawValue)
            
            // Wardrobe
            PersonService.shared.configureInitialUserDefaultsClothes()
            UD.shared.save(Key.wardrobeExplained, false)
            
            // Notifications
            UD.shared.save(Key.notificationsPreference, true)
            UD.shared.save(Key.notificationsTime, "09:00")
        }
    }
    
    func updatePerson() {
        UD.shared.save(Key.haircut, Haircut.man.canadian.rawValue)
        UD.shared.save(Key.beard, Beard.shaven.rawValue)
        UD.shared.save(Key.hairColor, Color.hair.black.rawValue)
        UD.shared.save(Key.beardColor, Color.hair.black.rawValue)
        UD.shared.save(Key.skinColor, Color.skin.honey.rawValue)
        PersonService.shared.configureInitialUserDefaultsClothes()
    }
    
    func configureRateViewIfNeeded() -> Bool {
        if UD.shared.retrieve(Key.showRateViewInitiated) == true {
            return false
        } else {
            UD.shared.save(Key.showRateViewInitiated, true)
            UD.shared.save(Key.showRateViewAfter2Days, true)
            UD.shared.save(Key.showRateViewAfter14Days, true)
            UD.shared.save(Key.timeAfterRateViewShown, Date().timeIntervalSinceReferenceDate)
            return true
        }
    }
    
}
