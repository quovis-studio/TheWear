/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SavedCityTableViewCell: SearchTableViewCell {
    
    var cityViewModel: CityViewModel! {
        didSet {
            cityLabel.text = cityViewModel.city
            countryLabel.text = cityViewModel.country
        }
    }
    
    weak var delegate: SearchTableViewDelegate?
    
    private let deleteImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "delete")
        imageView.tintColor = Color.label.tertiary
        imageView.isExclusiveTouch = true
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.textColor = Color.label.primary
        label.font = Font.body
        label.alpha = 1
        label.textAlignment = .left
        label.isExclusiveTouch = true
        label.isUserInteractionEnabled = true
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
    
    private let cityTapView = UIView()
    
    @objc private func handleChoose(_ recognizer: UILongPressGestureRecognizer) {
        cityTapView.handleTapGesture(recognizer) {
            delegate?.chooseSavedCity(contentView.tag)
        }
    }
    
    @objc private func handleDelete(_ recognizer: UILongPressGestureRecognizer) {
        deleteImageView.handleTapGesture(recognizer) {
            delegate?.deleteSavedCity(contentView.tag)
        }
    }
    
    override func cancelGestureRecognizer() {
        cityTapView.gestureRecognizers?.forEach { $0.cancel() }
        deleteImageView.gestureRecognizers?.forEach { $0.cancel() }
    }
    
    private func configureDeleteImageView() {
        contentView.addSubview(deleteImageView)
        deleteImageView.constraints(
            right: contentView.right(Size.padding.medium),
            centerY: contentView.centerY,
            width: .equalToConstant(Size.icon.small),
            height: .equalToConstant(Size.icon.small)
        )
    }
    
    private func configureCityLabel() {
        contentView.addSubview(cityLabel)
        cityLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: contentView.centerY(-Size.padding.xxxSmall / 2),
            right: deleteImageView.left(Size.padding.medium),
            height: .equalToConstant(Size.font.body)
        )
    }
    
    private func configureCountryLabel() {
        contentView.addSubview(countryLabel)
        countryLabel.constraints(
            top: contentView.centerY(-Size.padding.xxxSmall / 2),
            left: contentView.left(Size.padding.medium),
            right: deleteImageView.left(Size.padding.medium),
            height: .equalToConstant(Size.font.footnote1)
        )
    }
    
    private func configureCityTapView() {
        contentView.addSubview(cityTapView)
        cityTapView.constraints(
            top: contentView.top,
            left: contentView.left,
            bottom: contentView.bottom,
            right: cityLabel.right
        )
    }
    
    private func configureTapGestures() {
        let nameRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleChoose(_:)))
        nameRecognizer.minimumPressDuration = 0
        nameRecognizer.delegate = self
        cityTapView.addGestureRecognizer(nameRecognizer)
        
        let deleteRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleDelete(_:)))
        deleteRecognizer.minimumPressDuration = 0
        deleteRecognizer.delegate = self
        deleteImageView.addGestureRecognizer(deleteRecognizer)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureDeleteImageView()
        configureCityLabel()
        configureCountryLabel()
        configureCityTapView()
        configureTapGestures()
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
