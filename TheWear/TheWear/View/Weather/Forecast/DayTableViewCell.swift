/*

 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.

*/

import UIKit

class DayTableViewCell: UITableViewCell {
    
    var forecastDayViewModel: ForecastViewModel? {
        didSet {
            weekdayLabel.text = forecastDayViewModel?.weekday
            iconImageView.image = UIImage(named: forecastDayViewModel?.icon ?? "")
            highTemperatureLabel.text = UD.shared.isCelsius() ? forecastDayViewModel?.highTempC : forecastDayViewModel?.highTempF
            lowTemperatureLabel.text = UD.shared.isCelsius() ? forecastDayViewModel?.lowTempC : forecastDayViewModel?.lowTempF
        }
    }
    
    private var weekdayLabelWidthConstraint: NSLayoutConstraint!
    private var highTemperatureLabelWidthConstraint: NSLayoutConstraint!
    private var lowTemperatureLabelWidthConstraint: NSLayoutConstraint!
    
    private let weekdayLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.callout
        label.textColor = Color.white.primary
        label.textAlignment = .left
        return label
    }()
    
    private let iconImageView = UIImageView()
    private let substrateIconImageView = UIView()
    
    private let highTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.callout
        label.textColor = Color.white.primary
        label.textAlignment = .right
        return label
    }()
    
    private let lowTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.callout
        label.textColor = Color.white.secondary
        label.textAlignment = .right
        return label
    }()
                
    private func configureWeekdayLabel() {
        contentView.addSubview(weekdayLabel)
        weekdayLabel.constraints(
            top: contentView.top,
            left: contentView.left(Size.padding.medium),
            bottom: contentView.bottom
        )
    }
    
    private func configureIconImageView() {
        contentView.addSubview(substrateIconImageView)
        substrateIconImageView.addSubview(iconImageView)
        substrateIconImageView.constraints(
            top: contentView.top,
            left: weekdayLabel.right,
            bottom: contentView.bottom,
            right: highTemperatureLabel.left
        )
        iconImageView.center(
            in: substrateIconImageView,
            width: .equalToConstant(Size.icon.medium),
            height: .equalToConstant(Size.icon.medium)
        )
    }
    
    private func configureHighTemperatureLabel() {
        contentView.addSubview(highTemperatureLabel)
        highTemperatureLabel.constraints(
            top: contentView.top,
            bottom: contentView.bottom,
            right: lowTemperatureLabel.left(Size.padding.xxxSmall)
        )
    }
    
    private func configureLowTemperatureLabel() {
        contentView.addSubview(lowTemperatureLabel)
        lowTemperatureLabel.constraints(
            top: contentView.top,
            bottom: contentView.bottom,
            right: contentView.right(Size.padding.medium)
        )
    }
    
    private func configureLabelConstraints() {
        weekdayLabelWidthConstraint = weekdayLabel.widthAnchor.constraint(equalToConstant: 0)
        highTemperatureLabelWidthConstraint = highTemperatureLabel.widthAnchor.constraint(equalToConstant: 0)
        lowTemperatureLabelWidthConstraint = lowTemperatureLabel.widthAnchor.constraint(equalToConstant: 0)
        [weekdayLabelWidthConstraint,
         highTemperatureLabelWidthConstraint,
         lowTemperatureLabelWidthConstraint
        ].forEach { $0.isActive = true }
    }
    
    func configureLabelWidths(
        _ weekdayWidth: CGFloat,
        _ highTempWidth: CGFloat,
        _ lowTempWidth: CGFloat
    ) {
        weekdayLabelWidthConstraint.constant = weekdayWidth
        highTemperatureLabelWidthConstraint.constant = highTempWidth
        lowTemperatureLabelWidthConstraint.constant = lowTempWidth
        layoutIfNeeded()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        selectionStyle = .none
        configureWeekdayLabel()
        configureLowTemperatureLabel()
        configureHighTemperatureLabel()
        configureIconImageView()
        configureLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
