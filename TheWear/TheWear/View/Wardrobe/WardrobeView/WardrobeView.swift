/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class WardrobeView: ModalView {
    
    var wardrobeChanged = false
    
    var updatePartsWithPersonChange: (() -> ())?
    
    var currentClothesType = 0
    var currentClothesItem = 0
    var currentColor: Int?
    var addedClothesItemsForCurrentType = [Bool]()
    var choosenColorsForCurrentItem = [[Bool]]()
    
    var clothesItemCellSize: CGSize!
    
    let clothesTypeCell = "clothesTypeCell"
    let clothesItemCell = "clothesItemCell"
    let clothesColorCell = "clothesColorCell"
    
    var topClothes = UD.shared.retrieveTopClothes() ?? [ClothesItem]()
    var bottomClothes = UD.shared.retrieveBottomClothes() ?? [ClothesItem]()
    var shoes = UD.shared.retrieveShoes() ?? [ClothesItem]()
    var accessories = UD.shared.retrieveAccessories() ?? [ClothesItem]()
    
    lazy var clothesTypeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ClothesTypeCollectionViewCell.self, forCellWithReuseIdentifier: clothesTypeCell)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = .init(top: 0, left: Size.padding.medium, bottom: 0, right: Size.padding.medium)
        return collectionView
    }()
    
    lazy var clothesItemsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ClothesItemCollectionViewCell.self, forCellWithReuseIdentifier: clothesItemCell)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = .init(top: 0, left: Size.padding.medium, bottom: 0, right: Size.padding.medium)
        return collectionView
    }()
    
    lazy var clothesColorsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ClothesColorCollectionViewCell.self, forCellWithReuseIdentifier: clothesColorCell)
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.contentInset = .init(
            top: Size.padding.xxxSmall,
            left: Size.padding.medium,
            bottom: Size.padding.small,
            right: Size.padding.medium
        )
        return collectionView
    }()
    
    private func configureClothesTypeCollectionView() {
        substrateView.addSubview(clothesTypeCollectionView)
        clothesTypeCollectionView.constraints(
            top: panView.bottom,
            left: substrateView.left,
            right: substrateView.right,
            height: .equalToConstant(72)
        )
    }
    
    private func configureClothesItemsCollectionView() {
        configureClothesItemsCollectionViewCellSize()
        substrateView.addSubview(clothesItemsCollectionView)
        clothesItemsCollectionView.constraints(
            top: clothesTypeCollectionView.bottom,
            left: substrateView.left,
            right: substrateView.right,
            height: .equalToConstant(clothesItemCellSize.height)
        )
    }
    
    private func configureClothesColorsCollectionView() {
        substrateView.addSubview(clothesColorsCollectionView)
        clothesColorsCollectionView.constraints(
            top: clothesItemsCollectionView.bottom(Size.padding.large),
            left: substrateView.left,
            bottom: substrateView.bottom,
            right: substrateView.right
        )
    }
    
    private func configureClothesItemsCollectionViewCellSize() {
        layoutIfNeeded()
        let substrateWidth = substrateView.frame.width
        var size: CGFloat!
        if UIDevice.current.userInterfaceIdiom == .phone {
            let paddings = Size.padding.medium + Size.padding.small
            size = (substrateWidth - paddings) / 1.5
            
        } else {
            let paddings = Size.padding.medium + (2 * Size.padding.small)
            size = (substrateWidth - paddings) / 2.5
        }
        clothesItemCellSize = CGSize(width: size, height: size)
    }
    
    override init(following: Bool = false, enableToClose: Bool = true) {
        super.init(following: following, enableToClose: enableToClose)
        configureClothesTypeCollectionView()
        configureClothesItemsCollectionView()
        configureClothesColorsCollectionView()
        configureClothesItemsForCurrentType()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
