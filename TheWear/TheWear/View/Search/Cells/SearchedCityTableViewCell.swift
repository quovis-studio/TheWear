/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SearchedCityTableViewCell: SearchTableViewCell {
    
    var cityViewModel: CityViewModel! {
        didSet {
            cityLabel.text = cityViewModel.city
            countryLabel.text = cityViewModel.country
        }
    }
    
    weak var delegate: SearchTableViewDelegate?
    
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.textColor = Color.label.primary
        label.font = Font.body
        label.alpha = 1
        label.textAlignment = .left
        return label
    }()
    
    private let countryLabel: UILabel = {
        let label = UILabel()
        label.textColor = Color.label.tertiary
        label.font = Font.footnote1
        label.textAlignment = .left
        label.isExclusiveTouch = true
        label.isUserInteractionEnabled = true
        return label
    }()
    
    @objc private func handleChoose(_ recognizer: UILongPressGestureRecognizer) {
        contentView.handleTapGesture(recognizer) {
            delegate?.chooseSearchedCity(contentView.tag)
        }
    }
    
    override func cancelGestureRecognizer() {
        contentView.gestureRecognizers?.forEach { $0.cancel() }
    }
    
    private func configureCityLabel() {
        contentView.addSubview(cityLabel)
        cityLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: contentView.centerY(-Size.padding.xxxSmall / 2),
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.body)
        )
    }
    
    private func configureCountryLabel() {
        contentView.addSubview(countryLabel)
        countryLabel.constraints(
            top: contentView.centerY(-Size.padding.xxxSmall / 2),
            left: contentView.left(Size.padding.medium),
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.footnote1)
        )
    }
    
    private func configureTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleChoose(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        contentView.addGestureRecognizer(tapRecognizer)
    }
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCityLabel()
        configureCountryLabel()
        configureTapRecognizer()
    }
    
    override func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
