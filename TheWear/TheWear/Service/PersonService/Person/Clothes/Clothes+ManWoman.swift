/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum Clothes {
    
    enum man {
        enum top: String, CaseIterable {
            case lightJacket = "lightJacket"
            case coat = "coat"
            case downJacketWithCape = "downJacketWithCape"
            case downJacketWithoutCape = "downJacketWithoutCape"
            case tShirt = "tShirt"
            case topTankJewel = "topTankJewel"
            case tShirtOversize = "tShirtOversize"
            case polo = "polo"
            case longsleeve = "longsleeve"
            case sweatshirt = "sweatshirt"
            case hoodie = "hoodie"
            case hoodieWithZipper = "hoodieWithZipper"
            case shirt = "shirt"
            
            static var allOuterwearCases: [top] {
                return [.lightJacket,
                        .coat,
                        .downJacketWithCape,
                        .downJacketWithoutCape]
            }
            
            static var allTopCases: [top] {
                return [.tShirt,
                        .topTankJewel,
                        .tShirtOversize,
                        .polo,
                        .longsleeve,
                        .sweatshirt,
                        .hoodie,
                        .hoodieWithZipper,
                        .shirt]
            }
        }
        
        enum bottom: String, CaseIterable {
            case regularPants = "regularPants"
            case tightPants = "tightPants"
            case widePants = "widePants"
            case shorts = "shorts"
        }
        
        enum shoes: String, CaseIterable {
            case gym = "gym"
            case sneakers = "sneakers"
            case loafers = "loafers"
            case boots = "boots"
            case slates = "slates"
            case slippers = "slippers"
        }
        
        enum accessory: String, CaseIterable {
            case warmScarf = "warmScarf"
            case lightScarf = "lightScarf"
            case beanie = "beanie"
            case gloves = "gloves"
            case baseballCap = "baseballCap"
            case umbrella = "umbrella"
        }
    }
    
    enum woman {
        enum top: String, CaseIterable {
            case lightJacket = "lightJacket"
            case coat = "coat"
            case downJacketWithCape = "downJacketWithCape"
            case downJacketWithoutCape = "downJacketWithoutCape"
            case tShirt = "tShirt"
            case topTankJewel = "topTankJewel"
            case topTankSquare = "topTankSquare"
            case polo = "polo"
            case longsleeve = "longsleeve"
            case blouse = "blouse"
            case tunic = "tunic"
            case dress = "dress"
            case sweatshirt = "sweatshirt"
            case hoodie = "hoodie"
            case hoodieWithZipper = "hoodieWithZipper"
            case shirt = "shirt"
            
            static var allOuterwearCases: [top] {
                return [.lightJacket,
                        .coat,
                        .downJacketWithCape,
                        .downJacketWithoutCape]
            }
            
            static var allTopCases: [top] {
                return [.tShirt,
                        .topTankJewel,
                        .topTankSquare,
                        .polo,
                        .longsleeve,
                        .blouse,
                        .tunic,
                        .dress,
                        .sweatshirt,
                        .hoodie,
                        .hoodieWithZipper,
                        .shirt]
            }
        }
        
        enum bottom: String, CaseIterable {
            case regularPants = "regularPants"
            case tightPants = "tightPants"
            case widePants = "widePants"
            case shorts = "shorts"
            case threeQuarterPants = "threeQuarterPants"
            case shortShorts = "shortShorts"
            case shortSkirt = "shortSkirt"
            case longSkirt = "longSkirt"
            case pleatedSkirt = "pleatedSkirt"
        }
        
        enum shoes: String, CaseIterable {
            case gym = "gym"
            case sneakers = "sneakers"
            case low = "low"
            case boots = "boots"
            case slates = "slates"
            case slippers = "slippers"
        }
        
        enum accessory: String, CaseIterable {
            case warmScarf = "warmScarf"
            case lightScarf = "lightScarf"
            case beanie = "beanie"
            case gloves = "gloves"
            case baseballCap = "baseballCap"
            case umbrella = "umbrella"
        }
    }
    
}
