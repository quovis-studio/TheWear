/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

enum Color {
    
    enum white {
        static let primary = UIColor(white: 1, alpha: 1)
        static let secondary = UIColor(white: 1, alpha: 0.64)
        static let tertiary = UIColor(white: 1, alpha: 0.4)
        static let quaternary = UIColor(white: 1, alpha: 0.2)
        static let quinary = UIColor(white: 1, alpha: 0.04)
        static let substrate = UIColor(white: 1, alpha: 0.08)
    }
    
    enum black {
        static let primary = UIColor(white: 0, alpha: 1)
        static let secondary = UIColor(white: 0, alpha: 0.64)
        static let tertiary = UIColor(white: 0, alpha: 0.4)
        static let quaternary = UIColor(white: 0, alpha: 0.16)
        static let lessQuaternary = UIColor(white: 0, alpha: 0.08)
        static let quinary = UIColor(white: 0, alpha: 0.04)
        static let quinarySolid = UIColor(245, 245, 245)
        static let senary = UIColor(white: 0, alpha: 0.012)
    }
    
    enum shadow {
        static let ultralight = UIColor(white: 0, alpha: 0.04)
        static let light = UIColor(white: 0, alpha: 0.08)
        static let medium = UIColor(white: 0, alpha: 0.12)
        static let bold = UIColor(white: 0, alpha: 0.2)
        static let heavy = UIColor(white: 0, alpha: 0.6)
    }
    
    enum weather {
        static let sunny = UIColor(26, 117, 216)
        static let night = UIColor(9, 16, 35)
        static let cloudy = UIColor(67, 162, 240)
        static let overcast = UIColor(85, 148, 196)
        static let precipitation = UIColor(67, 162, 240)
        static let mist = UIColor(161, 186, 207)
        static let rain = UIColor(60, 83, 105)
        static let heavyRain = UIColor(34, 48, 62)
        static let sleet = UIColor(166, 190, 228)
        static let snow = UIColor(172, 198, 228)
        static let heavySnow = UIColor(139, 169, 203)
        static let thunderstorm = UIColor(34, 32, 43)
    }
    
    enum skin: String, CaseIterable {
        case mory = "mory"
        case paleMory = "paleMory"
        case sand = "sand"
        case beige = "beige"
        case limestone = "limestone"
        case senna = "senna"
        case honey = "honey"
        case almond = "almond"
        case chestnut = "chestnut"
        case umber = "umber"
        case golden = "golden"
        case espresso = "espresso"
        
        var color: UIColor {
            switch self {
            case .mory:
                return UIColor(229, 204, 172)
            case .paleMory:
                return UIColor(233, 208, 187)
            case .sand:
                return UIColor(233, 200, 155)
            case .beige:
                return UIColor(232, 193, 144)
            case .limestone:
                return UIColor(225, 189, 151)
            case .senna:
                return UIColor(201, 159, 130)
            case .honey:
                return UIColor(196, 151, 106)
            case .almond:
                return UIColor(142, 100, 67)
            case .chestnut:
                return UIColor(129, 88, 57)
            case .umber:
                return UIColor(168, 108, 80)
            case .golden:
                return UIColor(121, 75, 48)
            case .espresso:
                return UIColor(93, 59, 30)
            }
        }
    }
    
    enum hair: String, CaseIterable {
        case darkGoldenBrown = "darkGoldenBrown"
        case lightCoolBrown = "lightCoolBrown"
        case lightBrown = "lightBrown"
        case hotToffee = "hotToffee"
        case sunflowerBlonde = "sunflowerBlonde"
        case pureDiamond = "pureDiamond"
        case black = "black"
        case grey = "grey"
        case lightAuburn = "lightAuburn"
        case reddishBlonde = "reddishBlonde"
        case lightBlonde = "lightBlonde"
        case white = "white"
        case caramel = "caramel"
        case chocolateBrown = "chocolateBrown"
        case copperShimmer = "copperShimmer"
        case crushedGarnet = "crushedGarnet"
        case ruby = "ruby"
        
        var color: UIColor {
            switch self {
            case .darkGoldenBrown:
                return UIColor(46, 27, 16)
            case .lightCoolBrown:
                return UIColor(84, 63, 40)
            case .lightBrown:
                return UIColor(111, 79, 49)
            case .hotToffee:
                return UIColor(126, 97, 68)
            case .sunflowerBlonde:
                return UIColor(228, 201, 157)
            case .pureDiamond:
                return UIColor(214, 189, 159)
            case .black:
                return UIColor(29, 26, 26)
            case .grey:
                return UIColor(93, 81, 79)
            case .lightAuburn:
                return UIColor(105, 58, 21)
            case .reddishBlonde:
                return UIColor(153, 97, 43)
            case .lightBlonde:
                return UIColor(227, 182, 126)
            case .white:
                return UIColor(239, 236, 219)
            case .caramel:
                return UIColor(137, 55, 19)
            case .chocolateBrown:
                return UIColor(126, 66, 11)
            case .copperShimmer:
                return UIColor(155, 72, 25)
            case .crushedGarnet:
                return UIColor(125, 57, 44)
            case .ruby:
                return UIColor(115, 38, 22)
            }
        }
    }

    enum clothes: String, CaseIterable, Codable {
        case black = "black"
        case grey = "grey"
        case white = "white"
        case whiteForWardrobe = "whiteForWardrobe"
        case darkBlue = "darkBlue"
        case blue = "blue"
        case lightBlue = "lightBlue"
        case burgundy = "burgundy"
        case red = "red"
        case coral = "coral"
        case beige = "beige"
        case yellow = "yellow"
        case green = "green"
        case orange = "orange"
        case cyan = "cyan"
        case purple = "purple"
        case khaki = "khaki"
        case pink = "pink"
        
        static var allCases: [clothes] {
            return [.black,
                    .grey,
                    .white,
                    .darkBlue,
                    .blue,
                    .lightBlue,
                    .burgundy,
                    .red,
                    .coral,
                    .beige,
                    .yellow,
                    .green,
                    .orange,
                    .cyan,
                    .purple,
                    .khaki,
                    .pink]
        }
        
        var color: UIColor {
            switch self {
            case .black:
                return UIColor(30, 30, 30)
            case .grey:
                return UIColor(124, 124, 124)
            case .white:
                return UIColor(250, 250, 250)
            case .whiteForWardrobe:
                return UIColor(243, 243, 243)
            case .darkBlue:
                return UIColor(31, 51, 141)
            case .blue:
                return UIColor(47, 75, 199)
            case .lightBlue:
                return UIColor(55, 135, 228)
            case .burgundy:
                return UIColor(103, 9, 9)
            case .red:
                return UIColor(192, 59, 59)
            case .coral:
                return UIColor(226, 109, 113)
            case .beige:
                return UIColor(213, 184, 144)
            case .yellow:
                return UIColor(246, 225, 84)
            case .green:
                return UIColor(43, 198, 105)
            case .orange:
                return UIColor(238, 133, 73)
            case .cyan:
                return UIColor(153, 249, 222)
            case .purple:
                return UIColor(125, 104, 207)
            case .khaki:
                return UIColor(114, 115, 41)
            case .pink:
                return UIColor(241, 137, 174)
            }
        }
    }
    
}
