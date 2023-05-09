/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension PartsView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        guard let partsViewModel = partsViewModel else { return 0 }
        return partsViewModel.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "partCell",
            for: indexPath
        ) as! PartCollectionViewCell
        cell.getChoosenClothesCountForPart = { [unowned self] in
            return choosenClothesCount[indexPath.item]
        }
        cell.updateChoosenClothesCountForPart = { [unowned self] clothes in
            choosenClothesCount[indexPath.item] = clothes
        }
        cell.getWithPerson = { [unowned self] in
            return self.withPerson ?? false
        }
        cell.getPersonSize = { [unowned self] in
            return personSize
        }
        cell.partViewModel = partsViewModel?[indexPath.item]
        return cell
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        guard let partSize = getPartSize?() else { return collectionView.frame.size }
        return partSize
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
        let part = Int(x / scrollView.frame.width)
        if partsControl.currentPage == part { return }
        if part > partsControl.currentPage {
            AnalyticsService.shared.sendEvent(.partsSwipedForward)
        } else {
            AnalyticsService.shared.sendEvent(.partsSwipedBackward)
        }
        partsControl.currentPage = part
        updateCurrentPart?(part)
    }
    
}
