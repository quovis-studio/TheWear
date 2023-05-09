/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension PartsView {
    
    func updateChoosenClothesCount(with count: Int) {
        choosenClothesCount = [[Int]]()
        for _ in 0..<count {
            choosenClothesCount.append([Int](repeating: 0, count: 7))
        }
    }
    
    func update(with person: Bool) {
        withPerson = person
        collectionView.reloadData()
    }
    
    func updateCollectionViewPosition() {
        partsControl.currentPage = getCurrentPart?() ?? 0
        collectionView.scrollTo(item: getCurrentPart?() ?? 0)
    }
    
    func updateWithChange() {
        guard let count = partsViewModel?.count else { return }
        updateChoosenClothesCount(with: count)
        collectionView.reloadData()
    }
    
}
