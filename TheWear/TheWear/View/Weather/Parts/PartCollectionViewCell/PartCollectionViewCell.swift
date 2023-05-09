/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class PartCollectionViewCell: UICollectionViewCell {
    
    var choosenClothesCountForPart = [Int](repeating: 0, count: 7)
    var umbrellaCount = 0
    var headdressCount = 0
    var scarfCount = 0
    var glovesCount = 0
    var topCount = 0
    var bottomCount = 0
    var shoesCount = 0
    
    var getWithPerson: (() -> (Bool))?
    var getPersonSize: (() -> (CGSize?))?
    var getChoosenClothesCountForPart: (() -> ([Int]))?
    var updateChoosenClothesCountForPart: (([Int]) -> ())?
    
    var partViewModel: PartViewModel? {
        didSet {
            guard let partViewModel = partViewModel else { return }
            partLabel.text = partViewModel.part
            descriptionLabel.text = partViewModel.description
            conditionLabel.text = partViewModel.condition
            feelsLikeLabel.text = UD.shared.isCelsius() ? partViewModel.feelsLikeTempC : partViewModel.feelsLikeTempF
            temperatureLabel.text = UD.shared.isCelsius() ? partViewModel.tempC : partViewModel.tempF
            separatorView.alpha = (getWithPerson?() ?? false) ? 0 : 1
            descriptionLabel.alpha = (getWithPerson?() ?? false) ? 0 : 1
            configurePersonViewIfNeeded(with: partViewModel)
        }
    }
    
    var topClothes: [ClothesItem]!
    var bottomClothes: [ClothesItem]!
    var shoes: [ClothesItem]!
    var accessories: [ClothesItem]!
    
    var temperatureBottomConstraintWithPerson: NSLayoutConstraint!
    var temperatureBottomConstraintWithoutPerson: NSLayoutConstraint!
    
    var bodyView: UIView!
    var haircutViews: [UIView]!
    var beardView: UIView!
    var topClothesViews: [ClothesView]!
    var bottomClothesViews: [ClothesView]!
    var shoesViews: [ClothesView]!
    var umbrellaTopViews: [ClothesView]!
    var umbrellaBottomViews: [ClothesView]!
    var headdressViews: [ClothesView]!
    var scarfViews: [ClothesView]!
    var glovesViews: [ClothesView]!
    var rainGlovesViews: [ClothesView]!
    
    let umbrellaChangeView = UIView()
    let headdressChangeView = UIView()
    let leftGloveChangeView = UIView()
    let rightGloveChangeView = UIView()
    let rainGloveChangeView = UIView()
    let scarfChangeView = UIView()
    let topChangeView = UIView()
    let bottomChangeView = UIView()
    let shoesChangeView = UIView()
    
    let partLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.subhead
        label.textColor = Color.white.tertiary
        label.textAlignment = .left
        return label
    }()
    
    var personViewContainer: UIView!
    var personView: UIView!
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.footnote
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textColor = Color.white.primary
        label.textAlignment = .left
        return label
    }()
    
    private let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.white.quaternary
        return view
    }()
    
    let conditionLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.footnote
        label.textColor = Color.white.primary
        label.textAlignment = .left
        return label
    }()
    
    private let feelsLikeLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.footnote
        label.textColor = Color.white.primary
        label.textAlignment = .left
        return label
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.title1
        label.textColor = Color.white.primary
        label.textAlignment = .left
        return label
    }()
    
    private func configurePartLabel() {
        contentView.addSubview(partLabel)
        partLabel.constraints(
            top: contentView.top,
            left: contentView.left(Size.padding.medium),
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.subhead)
        )
    }
    
    private func configureDescriptionLabel() {
        contentView.addSubview(descriptionLabel)
        descriptionLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: contentView.bottom,
            right: contentView.right(Size.padding.medium)
        )
    }
    
    private func configureSeparatorView() {
        contentView.addSubview(separatorView)
        separatorView.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: descriptionLabel.top(Size.padding.xSmall),
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.system.separator)
        )
    }
    
    private func configureConditionLabel() {
        contentView.addSubview(conditionLabel)
        conditionLabel.constraints(
            left: contentView.left(Size.padding.medium),
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.footnote)
        )
        temperatureBottomConstraintWithPerson = conditionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        temperatureBottomConstraintWithoutPerson = conditionLabel.bottomAnchor.constraint(equalTo: separatorView.topAnchor, constant: -Size.padding.xSmall)
        if UD.shared.retrieve(Key.withPerson) == true {
            temperatureBottomConstraintWithPerson.isActive = true
        } else {
            temperatureBottomConstraintWithoutPerson.isActive = true
        }
    }
    
    private func configureFeelsLikeLabel() {
        contentView.addSubview(feelsLikeLabel)
        feelsLikeLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: conditionLabel.top,
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.footnote)
        )
    }
    
    private func configureTemperatureLabel() {
        contentView.addSubview(temperatureLabel)
        temperatureLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: feelsLikeLabel.top,
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.title1)
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configurePartLabel()
        configureDescriptionLabel()
        configureSeparatorView()
        configureConditionLabel()
        configureFeelsLikeLabel()
        configureTemperatureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
