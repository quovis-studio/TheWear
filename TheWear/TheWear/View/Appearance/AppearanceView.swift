/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class AppearanceView: ModalView {
    
    var appearanceChanged = false
    
    var updatePartsWithPersonChange: (() -> ())?
    
    let appearancePartCell = "appearancePartCell"
    let appearanceColorCell = "appearanceColorCell"
    let appearanceItemCell = "appearanceItemCell"
    
    var currentAppearancePart = 0
    var appearanceParts: [AppearancePart]!
    
    let personSubstrateView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.background.quinary
        view.layer.cornerCurve = .continuous
        view.layer.cornerRadius = Size.padding.medium
        view.layer.borderColor = Color.background.senary.cgColor
        view.layer.borderWidth = Size.system.border
        return view
    }()
    let personContainerView = UIView()
    let personView = UIView()
    
    lazy var appearancePartsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(AppearancePartCollectionViewCell.self, forCellWithReuseIdentifier: appearancePartCell)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = .init(
            top: 0,
            left: Size.padding.medium,
            bottom: 0,
            right: Size.padding.medium
        )
        return collectionView
    }()
    
    lazy var appearanceItemsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(AppearanceColorCollectionViewCell.self, forCellWithReuseIdentifier: appearanceColorCell)
        collectionView.register(AppearanceItemCollectionViewCell.self, forCellWithReuseIdentifier: appearanceItemCell)
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.contentInset = .init(
            top: Size.padding.xxxSmall,
            left: Size.padding.medium,
            bottom: Size.padding.small,
            right: Size.padding.medium)
        return collectionView
    }()
    
    private func configureAppearanceParts() {
        if UD.shared.isMan() {
            appearanceParts = [.skinColor, .haircut, .hairColor, .beard, .beardColor]
        } else {
            appearanceParts = [.skinColor, .haircut, .hairColor]
        }
    }
    
    private func configureAppearancePartsCollectionView() {
        substrateView.addSubview(appearancePartsCollectionView)
        appearancePartsCollectionView.constraints(
            top: personSubstrateView.bottom,
            left: substrateView.left,
            right: substrateView.right,
            height: .equalToConstant(72)
        )
    }
    
    private func configureAppearanceItemsItemsCollectionView() {
        substrateView.addSubview(appearanceItemsCollectionView)
        appearanceItemsCollectionView.constraints(
            top: appearancePartsCollectionView.bottom,
            left: substrateView.left,
            bottom: substrateView.bottom,
            right: substrateView.right
        )
    }
    
    override init(following: Bool = false, enableToClose: Bool = true) {
        super.init(following: following, enableToClose: enableToClose)
        configureAppearanceParts()
        configurePersonView()
        configureAppearancePartsCollectionView()
        configureAppearanceItemsItemsCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
