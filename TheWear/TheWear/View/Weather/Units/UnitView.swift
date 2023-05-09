/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class UnitView: UIView {
    
    var getCurrentPart: (() -> (Int))?
    
    var unitViewModel: UnitViewModel? {
        didSet {
            guard let unitViewModel = unitViewModel else { return }
            nameLabel.text = unitViewModel.unitName
            partsControl.numberOfPages = unitViewModel.unitParts.count
            let part = getCurrentPart?() ?? 0
            partsControl.currentPage = part
            collectionView.reloadData()
            collectionView.scrollTo(item: part)
            stopPulseAnimation()
            isUserInteractionEnabled = true
        }
    }
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.footnote
        label.textColor = Color.white.secondary
        return label
    }()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UnitPartCollectionViewCell.self, forCellWithReuseIdentifier: "unitCell")
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true
        return collectionView
    }()
    
    let partsControl: UIPageControl = {
        let control = UIPageControl()
        control.numberOfPages = 0
        control.currentPage = 0
        control.isUserInteractionEnabled = false
        control.pageIndicatorTintColor = Color.white.quaternary
        control.currentPageIndicatorTintColor = Color.white.primary
        return control
    }()
    
    private func configureNameLabel() {
        addSubview(nameLabel)
        nameLabel.constraints(
            top: self.top(Size.padding.small),
            left: self.left(Size.padding.medium),
            right: self.right(Size.padding.medium),
            height: .equalToConstant(Size.font.footnote)
        )
    }
    
    private func configureCollectionView() {
        addSubview(collectionView)
        collectionView.constraints(
            top: nameLabel.bottom(Size.padding.xxSmall),
            left: self.left,
            bottom: partsControl.top,
            right: self.right
        )
    }
    
    private func configurePartsControl() {
        addSubview(partsControl)
        partsControl.constraints(
            left: self.left,
            bottom: self.bottom(Size.padding.xxxSmall),
            right: self.right,
            height: .equalToConstant(Size.system.pageControl)
        )
    }
    
    func updateCurrentPart(with part: Int) {
        partsControl.currentPage = part
        collectionView.scrollTo(item: part, true)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubstrateBackground()
        startPulseAnimation()
        configureNameLabel()
        configurePartsControl()
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
