/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum Comment {
    
    enum forMan {
        static let extremelyCold = "extremely_cold".localized
        static let frosty = "frosty".localized
        static let freezing = "freezing".localized
        static let chilly = "chilly".localized
        static let lessChilly = "less_chilly".localized
        static let cool = "cool".localized
        static let feelsWarm = "feels_warm".localized
        static let warm = "warm_man".localized
        static let feelsWarmer = "feels_warmer_man".localized
        static let reallyWarm = "really_warm_man".localized
        static let hot = "hot_man".localized
        static let feelsHot = "feels_hot_man".localized
        
        static let extremelyColdShort = "extremely_cold_short".localized
        static let frostyShort = "frosty_short".localized
        static let freezingShort = "freezing_short".localized
        static let chillyShort = "chilly_short".localized
        static let lessChillyShort = "less_chilly_short".localized
        static let coolShort = "cool_short".localized
        static let feelsWarmShort = "feels_warm_short".localized
        static let warmShort = "warm_man_short".localized
        static let feelsWarmerShort = "feels_warmer_man_short".localized
        static let reallyWarmShort = "really_warm_man_short".localized
        static let hotShort = "hot_man_short".localized
        static let feelsHotShort = "feels_hot_man_short".localized
    }
    
    enum forWoman {
        static let extremelyCold = "extremely_cold".localized
        static let frosty = "frosty".localized
        static let freezing = "freezing".localized
        static let chilly = "chilly".localized
        static let lessChilly = "less_chilly".localized
        static let cool = "cool".localized
        static let feelsWarm = "feels_warm".localized
        static let warm = "warm_woman".localized
        static let feelsWarmer = "feels_warmer_woman".localized
        static let reallyWarm = "really_warm_woman".localized
        static let hot = "hot_woman".localized
        static let feelsHot = "feels_hot_woman".localized
        
        static let extremelyColdShort = "extremely_cold_short".localized
        static let frostyShort = "frosty_short".localized
        static let freezingShort = "freezing_short".localized
        static let chillyShort = "chilly_short".localized
        static let lessChillyShort = "less_chilly_short".localized
        static let coolShort = "cool_short".localized
        static let feelsWarmShort = "feels_warm_short".localized
        static let warmShort = "warm_woman_short".localized
        static let feelsWarmerShort = "feels_warmer_woman_short".localized
        static let reallyWarmShort = "really_warm_woman_short".localized
        static let hotShort = "hot_woman_short".localized
        static let feelsHotShort = "feels_hot_woman_short".localized
    }
    
    enum rain {
        static let morning = "rain_morning".localized
        static let afternoon = "rain_afternoon".localized
        static let evening = "rain_evening".localized
        static let night = "rain_night".localized
        static let allDay = "rain_day".localized
        static let morningAndAfternoon = "rain_morning_afternoon".localized
        static let morningAndEvening = "rain_morning_evening".localized
        static let afternoonAndEvening = "rain_afternoon_evening".localized
        static let umbrella = "umbrella".localized
        static let forHour = "rain_for_hour".localized
    }
    
    enum snow {
        static let morning = "snow_morning".localized
        static let afteroon = "snow_afternoon".localized
        static let evening = "snow_evening".localized
        static let night = "snow_night".localized
        static let allDay = "snow_day".localized
        static let morningAndAfternoon = "snow_morning_afternoon".localized
        static let morningAndEvening = "snow_morning_evening".localized
        static let afternoonAndEvening = "snow_afternoon_evening".localized
        static let withRain = "snow_rain".localized
        static let forHour = "snow_for_hour".localized   
    }
    
    enum wind {
        static let galeforce = "gale_force_wind".localized
        static let strong = "strong_wind".localized
    }
    
}
