/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension UICollectionView {
    
    func scrollToBeginning(_ animated: Bool = false) {
        scrollToItem(
            at: IndexPath(item: 0, section: 0),
            at: .centeredHorizontally,
            animated: animated
        )
    }
    
    func scrollTo(item: Int, _ animated: Bool = false) {
        scrollToItem(
            at: IndexPath(item: item, section: 0),
            at: .centeredHorizontally,
            animated: animated
        )
    }
    
}
