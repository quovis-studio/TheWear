/*

 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.

*/

import UIKit

class HourCollectionViewCell: UICollectionViewCell {
    
    var hourViewModel: HourViewModel? {
        didSet {
            iconImageView.image = UIImage(named: hourViewModel?.icon ?? "")
            hourLabel.attributedText = CalendarAndLocaleService.shared.isTwelveTimePreference() ? hourViewModel?.hour12 : hourViewModel?.hour24
            dateLabel.text = hourViewModel?.date
            temperatureLabel.text = UD.shared.isCelsius() ? hourViewModel?.tempC : hourViewModel?.tempF
        }
    }
        
    private let hourLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.footnote
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.caption
        label.textColor = Color.white.secondary
        label.textAlignment = .center
        return label
    }()
    
    private let iconImageView = UIImageView()
    
    private let temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = Font.callout
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private func configureHourLabel() {
        contentView.addSubview(hourLabel)
        hourLabel.constraints(
            top: contentView.top,
            left: contentView.left,
            right: contentView.right,
            height: .equalToConstant(Size.font.footnote)
        )
    }
    
    private func configureDateLabel() {
        contentView.addSubview(dateLabel)
        dateLabel.constraints(
            top: hourLabel.bottom,
            left: contentView.left,
            bottom: iconImageView.top(Size.padding.xxxSmall),
            right: contentView.right
        )
    }
    
    private func configureIconImageView() {
        contentView.addSubview(iconImageView)
        iconImageView.centerInSuperview(
            width: .equalToConstant(Size.icon.medium),
            height: .equalToConstant(Size.icon.medium)
        )
    }
    
    private func configureTemperatureLabel() {
        contentView.addSubview(temperatureLabel)
        temperatureLabel.constraints(
            left: contentView.left,
            bottom: contentView.bottom,
            right: contentView.right,
            height: .equalToConstant(Size.font.callout)
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configureHourLabel()
        configureIconImageView()
        configureTemperatureLabel()
        configureDateLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
