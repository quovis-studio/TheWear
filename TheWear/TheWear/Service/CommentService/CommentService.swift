/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

class CommentService {
    
    static let shared = CommentService()
    
    func getClothesComment(for temp: Int) -> String {
        let temperatureFeeling = UD.shared.retrieve(Key.tempFeeling) ?? 0
        let temperature = temp + temperatureFeeling
        let manOrNoPerson = (UD.shared.isMan() || !UD.shared.withPerson()) ? true : false
        
        switch temperature {
        case ...(-11):
            if manOrNoPerson {
                return Comment.forMan.extremelyCold
            } else {
                return Comment.forWoman.extremelyCold
            }
            
        case (-10)...(-3):
            if manOrNoPerson {
                return Comment.forMan.frosty
            } else {
                return Comment.forWoman.frosty
            }
            
        case (-2)...0:
            if manOrNoPerson {
                return Comment.forMan.freezing
            } else {
                return Comment.forWoman.freezing
            }
            
        case 1...4:
            if manOrNoPerson {
                return Comment.forMan.chilly
            } else {
                return Comment.forWoman.chilly
            }
            
        case 5...7:
            if manOrNoPerson {
                return Comment.forMan.lessChilly
            } else {
                return Comment.forWoman.lessChilly
            }
            
        case 8...10:
            if manOrNoPerson {
                return Comment.forMan.cool
            } else {
                return Comment.forWoman.cool
            }
            
        case 11...14:
            if manOrNoPerson {
                return Comment.forMan.feelsWarm
            } else {
                return Comment.forWoman.feelsWarm
            }
            
        case 15...17:
            if manOrNoPerson {
                return Comment.forMan.warm
            } else {
                return Comment.forWoman.warm
            }
            
        case 18...20:
            if manOrNoPerson {
                return Comment.forMan.feelsWarmer
            } else {
                return Comment.forWoman.feelsWarmer
            }
            
        case 21...22:
            if manOrNoPerson {
                return Comment.forMan.reallyWarm
            } else {
                return Comment.forWoman.reallyWarm
            }
            
        case 23...24:
            if manOrNoPerson {
                return Comment.forMan.hot
            } else {
                return Comment.forWoman.hot
            }
            
        case 25...:
            if manOrNoPerson {
                return Comment.forMan.feelsHot
            } else {
                return Comment.forWoman.feelsHot
            }
            
        default:
            return "Look outside to get more information"
        }
    }
    
    func getClothesShortComment(for temp: Int) -> String {
        let temperatureFeeling = UD.shared.retrieve(Key.tempFeeling) ?? 0
        let temperature = temp + temperatureFeeling
        let manOrNoPerson = (UD.shared.isMan() || !UD.shared.withPerson()) ? true : false
        
        switch temperature {
        case ...(-11):
            if manOrNoPerson {
                return Comment.forMan.extremelyColdShort
            } else {
                return Comment.forWoman.extremelyColdShort
            }
            
        case (-10)...(-3):
            if manOrNoPerson {
                return Comment.forMan.frostyShort
            } else {
                return Comment.forWoman.frostyShort
            }
            
        case (-2)...0:
            if manOrNoPerson {
                return Comment.forMan.freezingShort
            } else {
                return Comment.forWoman.freezingShort
            }
            
        case 1...4:
            if manOrNoPerson {
                return Comment.forMan.chillyShort
            } else {
                return Comment.forWoman.chillyShort
            }
            
        case 5...7:
            if manOrNoPerson {
                return Comment.forMan.lessChillyShort
            } else {
                return Comment.forWoman.lessChillyShort
            }
            
        case 8...10:
            if manOrNoPerson {
                return Comment.forMan.coolShort
            } else {
                return Comment.forWoman.coolShort
            }
            
        case 11...14:
            if manOrNoPerson {
                return Comment.forMan.feelsWarmShort
            } else {
                return Comment.forWoman.feelsWarmShort
            }
            
        case 15...17:
            if manOrNoPerson {
                return Comment.forMan.warmShort
            } else {
                return Comment.forWoman.warmShort
            }
            
        case 18...20:
            if manOrNoPerson {
                return Comment.forMan.feelsWarmerShort
            } else {
                return Comment.forWoman.feelsWarmerShort
            }
            
        case 21...22:
            if manOrNoPerson {
                return Comment.forMan.reallyWarmShort
            } else {
                return Comment.forWoman.reallyWarmShort
            }
            
        case 23...24:
            if manOrNoPerson {
                return Comment.forMan.hotShort
            } else {
                return Comment.forWoman.hotShort
            }
            
        case 25...:
            if manOrNoPerson {
                return Comment.forMan.feelsHotShort
            } else {
                return Comment.forWoman.feelsHotShort
            }
            
        default:
            return "Look outside to get more information"
        }
    }
    
    private init() {  }
    
}
