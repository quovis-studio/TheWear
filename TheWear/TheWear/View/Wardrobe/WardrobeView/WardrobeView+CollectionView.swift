/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WardrobeView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        if collectionView == clothesTypeCollectionView {
            return ClothesType.allCases.count
        } else if collectionView == clothesItemsCollectionView {
            return getClothesItemsCount()
        } else {
            return Color.clothes.allCases.count
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        if collectionView == clothesTypeCollectionView {
            let width = ClothesType.allCases[indexPath.item].localizedString.getWidth(Font.title3)
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
            
        } else if collectionView == clothesItemsCollectionView {
            let size = collectionView.frame.size.height
            return CGSize(width: size, height: size)
    
        } else {
            let paddings = (2 * Size.padding.medium) + (2 * Size.padding.small)
            let size = collectionView.frame.width - paddings
            return CGSize(width: size / 3, height: size / 3)
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        if collectionView == clothesTypeCollectionView {
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
        if collectionView == clothesTypeCollectionView {
            return Size.padding.xxSmall
        } else {
            return Size.padding.small
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        if collectionView == clothesTypeCollectionView {
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: clothesTypeCell,
                for: indexPath
            ) as! ClothesTypeCollectionViewCell
            cell.updateType(
                with: ClothesType.allCases[indexPath.item].localizedString,
                current: indexPath.item == currentClothesType
            )
            cell.contentView.tag = indexPath.item
            cell.typeChoosen = { [unowned self] type in
                didSelectType(type)
            }
            return cell
            
        } else if collectionView == clothesItemsCollectionView {
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: clothesItemCell,
                for: indexPath
            ) as! ClothesItemCollectionViewCell
            cell.configurePersonView(
                with: ClothesType.allCases[currentClothesType],
                clothesName: getClothesItemName(with: indexPath.item),
                clothesIndex: indexPath.item,
                currentColor: indexPath.item == currentClothesItem ? currentColor : nil
            )
            cell.choosen(currentClothesItem == indexPath.item)
            cell.added(addedClothesItemsForCurrentType[indexPath.item])
            cell.contentView.tag = indexPath.item
            cell.itemChoosen = { [unowned self] item in
                didSelectItem(item)
            }
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: clothesColorCell,
                for: indexPath
            ) as! ClothesColorCollectionViewCell
            cell.updateColor(
                with: Color.clothes.allCases[indexPath.item],
                choosen: choosenColorsForCurrentItem[currentClothesItem][indexPath.item]
            )
            cell.contentView.tag = indexPath.item
            cell.colorChoosen = { [unowned self] color in
                didSelectColor(color)
            }
            return cell
        }
    }

}
