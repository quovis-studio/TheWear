/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView {
    
    override func viewBeginPan() {
        super.viewBeginPan()
        clothesTypeCollectionView.visibleCells.forEach {
            if let cell = $0 as? ClothesTypeCollectionViewCell { cell.cancelGestureRecognizer() }
        }
        clothesItemsCollectionView.visibleCells.forEach {
            if let cell = $0 as? ClothesItemCollectionViewCell { cell.cancelGestureRecognizer() }
        }
        clothesColorsCollectionView.visibleCells.forEach {
            if let cell = $0 as? ClothesColorCollectionViewCell { cell.cancelGestureRecognizer() }
        }
    }

    override func viewChangePan() {
        super.viewChangePan()
        clothesTypeCollectionView.isScrollEnabled = false
        clothesTypeCollectionView.isScrollEnabled = true
        clothesItemsCollectionView.isScrollEnabled = false
        clothesItemsCollectionView.isScrollEnabled = true
        clothesColorsCollectionView.isScrollEnabled = false
        clothesColorsCollectionView.isScrollEnabled = true
    }
    
    override func opened() {
        super.opened()
        AnalyticsService.shared.sendEvent(.wardrobeOpened)
    }
    
    override func closed() {
        super.closed()
        UD.shared.saveTopClothes(topClothes)
        UD.shared.saveBottomClothes(bottomClothes)
        UD.shared.saveShoes(shoes)
        UD.shared.saveAccessories(accessories)
        if wardrobeChanged {
            AnalyticsService.shared.sendEvent(.wardrobeChanged)
        }
        AnalyticsService.shared.sendEvent(.wardrobeClosed)
        updatePartsWithPersonChange?()
    }
    
    override func scrollViewWillBeginDragging(
        _ scrollView: UIScrollView
    ) {
        scrollsOnTop = false
        allowedToPan = false
    }
    
    override func scrollViewDidEndDragging(
        _ scrollView: UIScrollView,
        willDecelerate decelerate: Bool
    ) {
        scrollsOnTop = true
        allowedToPan = true
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {  }
    
}
