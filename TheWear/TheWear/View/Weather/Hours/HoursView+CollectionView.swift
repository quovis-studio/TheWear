/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension HoursView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        guard let hoursViewModel = hoursViewModel else { return 0 }
        return hoursViewModel.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "hourCell",
            for: indexPath
        ) as! HourCollectionViewCell
        cell.hourViewModel = hoursViewModel?[indexPath.item]
        return cell
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        guard let hoursViewModel = hoursViewModel else { return CGSize() }
        
        var width: CGFloat = 0.0
        if hoursViewModel[indexPath.item].hour24.string.contains(":") {
            let expectedWidth = hoursViewModel[indexPath.item].tempC.getWidth(Font.callout)
            if expectedWidth < Size.cell.hour.width - (2 * Size.padding.xSmall) {
                width = Size.cell.hour.width
            } else {
                width = expectedWidth + 2 * Size.padding.xSmall
            }
        } else {
            width = Size.cell.hour.width
        }
        return CGSize(width: width, height: collectionView.frame.height)
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
    
}
