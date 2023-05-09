/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class HoursView: UIView {
    
    var hoursViewModel: [HourViewModel]? {
        didSet {
            guard hoursViewModel != nil else { return }
            collectionView.reloadData()
            collectionView.scrollToBeginning()
            stopPulseAnimation()
        }
    }
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HourCollectionViewCell.self, forCellWithReuseIdentifier: "hourCell")
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = .init(top: 0, left: Size.padding.xxxSmall, bottom: 0, right: Size.padding.xxxSmall)
        return collectionView
    }()
    
    private func configureCollectionView() {
        addSubview(collectionView)
        collectionView.matchSuperview(
            offset: .init(top: Size.padding.small, bottom: Size.padding.small)
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubstrateBackground()
        startPulseAnimation()
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
