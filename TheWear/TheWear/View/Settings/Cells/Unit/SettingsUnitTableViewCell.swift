/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SettingsUnitTableViewCell: UITableViewCell {
    
    var unit: SettingsUnitItem! {
        didSet {
            nameLabel.text = unit.localizedString
            valueLabel.text = getValueLabelText()
        }
    }
    
    var valueChanged: (() -> ())?
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = Font.body
        label.textColor = Color.black.primary
        label.textAlignment = .left
        return label
    }()
    
    let valueLabel: UILabel = {
        let label = UILabel()
        label.font = Font.body
        label.textColor = WeatherService.shared.currentColor
        label.textAlignment = .right
        label.isUserInteractionEnabled = true
        label.isExclusiveTouch = true
        return label
    }()
    
    private func configureCell() {
        backgroundColor = Color.white.primary
        selectionStyle = .none
        contentView.addSubviews(nameLabel, valueLabel)
    }
    
    private func configureNameLabel() {
        nameLabel.constraints(
            top: contentView.top,
            left: contentView.left(Size.padding.medium),
            bottom: contentView.bottom,
            right: valueLabel.left
        )
    }
    
    private func configureValueLabel() {
        valueLabel.constraints(
            top: contentView.top,
            bottom: contentView.bottom,
            right: contentView.right(Size.padding.medium)
        )
    }
    
    private func configureTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleChange(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        valueLabel.addGestureRecognizer(tapRecognizer)
    }
    
    func cancelGestureRecognizer() {
        valueLabel.gestureRecognizers?.forEach {
            $0.cancel()
        }
    }
    
    @objc private func handleChange(_ recognizer: UILongPressGestureRecognizer) {
        valueLabel.handleTapGesture(recognizer) {
            changeValue()
            valueChanged?()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
        configureValueLabel()
        configureNameLabel()
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
