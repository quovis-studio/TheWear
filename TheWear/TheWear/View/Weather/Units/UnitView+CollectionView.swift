/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension UnitView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        guard let unitViewModel = unitViewModel else { return 0 }
        return unitViewModel.unitParts.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "unitCell",
            for: indexPath
        ) as! UnitPartCollectionViewCell
        cell.unitPartViewModel = unitViewModel?.unitParts[indexPath.item]
        return cell
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        return collectionView.frame.size
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 0
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 0
    }
    
    func scrollViewWillEndDragging(
        _ scrollView: UIScrollView,
        withVelocity velocity: CGPoint,
        targetContentOffset: UnsafeMutablePointer<CGPoint>
    ) {
        let x = targetContentOffset.pointee.x
        partsControl.currentPage = Int(x / scrollView.frame.width)
        sendUnitSwipedEventToAnalyticsService()
    }
    
    private func sendUnitSwipedEventToAnalyticsService() {
        guard let unitViewModel = unitViewModel else { return }
        let unit = unitViewModel.unit
        switch unit {
        case .wind:
            AnalyticsService.shared.sendEvent(.windSwiped)
        case .pressure:
            AnalyticsService.shared.sendEvent(.pressureSwiped)
        case .humidity:
            AnalyticsService.shared.sendEvent(.humiditySwiped)
        case .uv:
            AnalyticsService.shared.sendEvent(.uvSwiped)
        case .visibility:
            AnalyticsService.shared.sendEvent(.visibilitySwiped)
        case .precipitation:
            AnalyticsService.shared.sendEvent(.precipitationSwiped)
        }
    }
    
}
