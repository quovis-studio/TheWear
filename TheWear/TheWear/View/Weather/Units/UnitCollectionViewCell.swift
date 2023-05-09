/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class UnitPartsCollectionViewCell: UICollectionViewCell {
    
    var unitPartViewModel: UnitPartViewModel? {
        didSet {
            guard let unitPartViewModel = unitPartViewModel else { return }
            partLabel.text = unitPartViewModel.part
            let unit = unitPartViewModel.getCorrectUnit()
            valueLabel.text = unit.value
            measurementLabel.text = unit.measurement
        }
    }
    
    private let partLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.footnote
        label.textColor = Color.white.tertiary
        return label
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.title2
        label.textColor = Color.white.primary
        return label
    }()
    
    private let measurementLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.subhead
        label.textColor = Color.white.primary
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private func configurePartLabel() {
        contentView.addSubview(partLabel)
        partLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: valueLabel.top,
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.footnote)
        )
    }
    
    private func configureValueLabel() {
        contentView.addSubview(valueLabel)
        valueLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: measurementLabel.top,
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.title2)
        )
    }
    
    private func configureMeasurementLabel() {
        contentView.addSubview(measurementLabel)
        measurementLabel.constraints(
            left: contentView.left(Size.padding.medium),
            bottom: contentView.bottom,
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.font.subhead)
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configureMeasurementLabel()
        configureValueLabel()
        configurePartLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
