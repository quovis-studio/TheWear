/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension AppearanceView {
    
    override func viewBeginPan() {
        super.viewBeginPan()
        appearancePartsCollectionView.visibleCells.forEach {
            if let cell = $0 as? AppearancePartCollectionViewCell { cell.cancelGestureRecognizer() }
        }
        appearanceItemsCollectionView.visibleCells.forEach {
            if let cell = $0 as? AppearanceColorCollectionViewCell { cell.cancelGestureRecognizer() }
            if let cell = $0 as? AppearanceItemCollectionViewCell { cell.cancelGestureRecognizer() }
        }
    }
    
    override func viewChangePan() {
        super.viewChangePan()
        appearancePartsCollectionView.isScrollEnabled = false
        appearancePartsCollectionView.isScrollEnabled = true
        appearanceItemsCollectionView.isScrollEnabled = false
        appearanceItemsCollectionView.isScrollEnabled = true
    }
    
    override func opened() {
        super.opened()
        AnalyticsService.shared.sendEvent(.appearanceOpened)
    }
    
    override func closed() {
        super.closed()
        updatePartsWithPersonChange?()
        if appearanceChanged {
            AnalyticsService.shared.sendEvent(.appearanceChanged)
        }
        AnalyticsService.shared.sendEvent(.appearanceClosed)
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
