/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class PartsView: UIView {
    
    var withPerson: Bool!
    var choosenClothesCount = [[Int]]()
    var personSize: CGSize!
    
    var getPartSize: (() -> (CGSize))?
    var getCurrentPart: (() -> (Int))?
    var updateCurrentPart: ((_ part: Int) -> ())?
    
    var partsViewModel: [PartViewModel]? {
        didSet {
            guard let partsViewModel = partsViewModel else { return }
            partsControl.numberOfPages = partsViewModel.count
            updateChoosenClothesCount(with: partsViewModel.count)
            let part = getCurrentPart?() ?? 0
            partsControl.currentPage = part
            collectionView.reloadData()
            collectionView.scrollTo(item: part)
            isUserInteractionEnabled = true
            stopPulseAnimation()
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(PartCollectionViewCell.self, forCellWithReuseIdentifier: "partCell")
        collectionView.backgroundColor = .clear
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
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
    
    private func configureCollectionView() {
        addSubview(collectionView)
        collectionView.constraints(
            top: self.top(Size.padding.small),
            left: self.left,
            bottom: partsControl.top(Size.padding.xSmall),
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubstrateBackground()
        startPulseAnimation()
        configurePartsControl()
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
