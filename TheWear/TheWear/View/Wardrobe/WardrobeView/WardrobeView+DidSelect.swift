/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {

    func didSelectType(_ type: Int) {
        currentClothesType = type
        currentClothesItem = 0
        currentColor = nil
        configureClothesItemsForCurrentType()
        
        clothesTypeCollectionView.reloadData()
        clothesItemsCollectionView.reloadData()
        clothesColorsCollectionView.reloadData()
        
        clothesTypeCollectionView.scrollToItem(
            at: IndexPath(item: type, section: 0),
            at: .centeredHorizontally,
            animated: true
        )
        clothesItemsCollectionView.scrollToItem(
            at: IndexPath(item: 0, section: 0),
            at: .centeredHorizontally,
            animated: true
        )
        clothesColorsCollectionView.scrollToItem(
            at: IndexPath(item: 0, section: 0),
            at: .centeredVertically,
            animated: true
        )
        
        if !wardrobeChanged { wardrobeChanged = true }
    }
    
    func didSelectItem(_ item: Int) {
        if item != currentClothesItem {
            currentColor = nil
        }
        currentClothesItem = item
        clothesItemsCollectionView.reloadData()
        clothesColorsCollectionView.reloadData()
        clothesItemsCollectionView.scrollToItem(
            at: IndexPath(item: item, section: 0),
            at: .centeredHorizontally,
            animated: true
        )
        clothesColorsCollectionView.scrollToItem(
            at: IndexPath(item: 0, section: 0),
            at: .centeredVertically,
            animated: true
        )
        
        if !wardrobeChanged { wardrobeChanged = true }
    }
    
    func didSelectColor(_ color: Int) {
        chooseColor(with: color)
        clothesItemsCollectionView.reloadData()
        clothesColorsCollectionView.reloadData()
        
        if !wardrobeChanged { wardrobeChanged = true }
    }
    
}
