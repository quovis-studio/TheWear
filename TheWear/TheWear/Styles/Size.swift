/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

enum Size {

    enum font {
        static let title1: CGFloat = 56
        static let title2: CGFloat = 36
        static let title3: CGFloat = 28
        static let headline: CGFloat = 36
        static let body: CGFloat = 28
        static let subhead: CGFloat = 24
        static let callout: CGFloat = 24
        static let footnote: CGFloat = 20
        static let footnote1: CGFloat = 20
        static let footnote2: CGFloat = 20
        static let caption: CGFloat = 16
    }
    
    enum padding {
        static let xxxLarge: CGFloat = 72
        static let xxLarge: CGFloat = 60
        static let xLarge: CGFloat = 40
        static let large: CGFloat = 32
        static let medium: CGFloat = 20
        static let small: CGFloat = 16
        static let xSmall: CGFloat = 12
        static let xxSmall: CGFloat = 8
        static let xxxSmall: CGFloat = 4
    }
    
    enum icon {
        static let large: CGFloat = 52
        static let xMedium: CGFloat = 32
        static let medium: CGFloat = 30
        static let small: CGFloat = 14
    }
    
    enum button {
        static let large: CGFloat = 48
        static let medium: CGFloat = 40
    }
    
    enum cell {
        static let hour = CGSize(width: 60, height: 112)
        static let search: CGFloat = 56
        static let settings: CGFloat = 40
        static let forecast: CGFloat = 50
        static let estimated: CGFloat = 50
    }
    
    enum system {
        static let pageControl: CGFloat = 20
        static let timePicker: CGFloat = 136
        static let timePickerItem: CGFloat = 40
        static let panView = CGSize(width: 48, height: 5)
        static let border: CGFloat = 0.8
        static let separator: CGFloat = 1
    }
    
}
