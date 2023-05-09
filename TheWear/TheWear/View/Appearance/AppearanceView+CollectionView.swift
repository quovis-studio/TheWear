/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension AppearanceView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        if collectionView == appearancePartsCollectionView {
            return appearanceParts.count
        } else {
            return getAppearanceItemsCount()
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        if collectionView == appearancePartsCollectionView {
            let width = appearanceParts[indexPath.item].localizedString.getWidth(Font.title3)
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
        } else {
            return getAppearanceItemsSize(with: collectionView.frame.width)
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        if collectionView == appearancePartsCollectionView {
            return 0
        } else {
            return Size.padding.small
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
    ) -> CGFloat {
        if collectionView == appearancePartsCollectionView {
            return Size.padding.xxSmall
        } else {
            return Size.padding.small
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        if collectionView == appearancePartsCollectionView {
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: appearancePartCell,
                for: indexPath
            ) as! AppearancePartCollectionViewCell
            cell.updatePart(
                with: appearanceParts[indexPath.item].localizedString,
                current: indexPath.item == currentAppearancePart
            )
            cell.contentView.tag = indexPath.item
            cell.partChoosen = { [unowned self] part in
                didSelectPart(part)
            }
            return cell
            
        } else {
            if checkColorPart() {
                let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: appearanceColorCell,
                    for: indexPath
                ) as! AppearanceColorCollectionViewCell
                let color = getAppearanceColor(for: indexPath.item)
                cell.updateColor(
                    with: color,
                    choosen: checkChoosen(with: indexPath.item)
                )
                cell.contentView.tag = indexPath.item
                cell.colorChoosen = { [unowned self] color in
                    didSelectItem(color)
                }
                return cell
                
            } else {
                let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: appearanceItemCell,
                    for: indexPath
                ) as! AppearanceItemCollectionViewCell
                cell.configurePersonViewContainerIfNeeded()
                cell.configurePersonView(
                    with: appearanceParts[currentAppearancePart],
                    index: indexPath.item
                )
                cell.contentView.tag = indexPath.item
                cell.itemChoosen = { [unowned self] item in
                    didSelectItem(item)
                }
                cell.choosen(checkChoosen(with: indexPath.item))
                return cell
            }
        }
    }
    
}
