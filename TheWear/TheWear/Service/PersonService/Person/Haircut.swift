/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum Haircut {
    
    enum man: String, CaseIterable {
        case bald = "bald"
        case bob = "bob"
        case canadian = "canadian"
        case dreadlocks = "dreadlocks"
        case forelock = "forelock"
        case halfbox = "halfbox"
        case hedgehog = "hedgehog"
        case kwiff = "kwiff"
        case long = "long"
        case short = "short"
        case undercut = "undercut"
        case afro = "afro"
    }
    
    enum woman: String, CaseIterable {
        case hedgehog = "hedgehog"
        case shortTail = "shortTail"
        case longTail = "longTail"
        case bob = "bob"
        case bang = "bang"
        case bunch = "bunch"
        case long = "long"
        case pigtails = "pigtails"
        case volume = "volume"
        case afro = "afro"
    }
    
}
