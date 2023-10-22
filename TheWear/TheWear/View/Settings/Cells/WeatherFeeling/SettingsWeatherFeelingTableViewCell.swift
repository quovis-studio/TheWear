/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SettingsWeatherFeelingTableViewCell: UITableViewCell {
    
    var pathViewLeadingConstraint: NSLayoutConstraint!
    var pathViewTrailingConstraint: NSLayoutConstraint!
    
    var currentValue: Float = UD.shared.retrieve(Key.tempFeeling) ?? 0.0
    
    var allowToPan: ((Bool) -> ())?
    
    private lazy var sliderView: UISlider = {
        let slider = UISlider()
        slider.tintColor = WeatherService.shared.currentColor
        slider.maximumTrackTintColor = .clear
        slider.minimumTrackTintColor = .clear
        slider.minimumValue = Float(WeatherFeeling.muchColder.value)
        slider.maximumValue = Float(WeatherFeeling.muchHotter.value)
        slider.value = currentValue
        slider.addTarget(self, action: #selector(beginValueChanging), for: .touchDown)
        slider.addTarget(self, action: #selector(endValueChanging(_:)), for: [.touchUpInside, .touchUpOutside])
        slider.addTarget(self, action: #selector(handleValueChanged(_:)), for: .valueChanged)
        return slider
    }()
    
    private let trackView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 2
        view.layer.cornerCurve = .continuous
        view.backgroundColor = Color.background.quinarySolid
        return view
    }()
    
    private let pathView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 2
        view.layer.cornerCurve = .continuous
        view.backgroundColor = WeatherService.shared.currentColor
        return view
    }()
    
    private let colderNotchView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.background.quinarySolid
        view.layer.cornerRadius = 2
        view.layer.cornerCurve = .continuous
        return view
    }()
    
    internal let lessColderNotchView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.background.quinarySolid
        view.layer.cornerRadius = 2
        view.layer.cornerCurve = .continuous
        return view
    }()
    
    private let asIsNotchView: UIView = {
        let view = UIView()
        view.backgroundColor = WeatherService.shared.currentColor
        view.layer.cornerRadius = 2
        view.layer.cornerCurve = .continuous
        return view
    }()
    
    internal let lessHotterNotchView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.background.quinarySolid
        view.layer.cornerRadius = 2
        view.layer.cornerCurve = .continuous
        return view
    }()
    
    private let hotterNotchView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.background.quinarySolid
        view.layer.cornerRadius = 2
        view.layer.cornerCurve = .continuous
        return view
    }()
    
    private let labelsView = UIView()
    
    private let hotterLabel: UILabel = {
        let label = UILabel()
        label.font = Font.callout
        label.textColor = Color.label.primary
        label.textAlignment = .right
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "hotter".localized
        return label
    }()
    
    private let colderLabel: UILabel = {
        let label = UILabel()
        label.font = Font.callout
        label.textColor = Color.label.primary
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "colder".localized
        return label
    }()
    
    private let explanationLabel: UILabel = {
        let label = UILabel()
        label.textColor = Color.label.tertiary
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = Font.footnote1
        label.text = "weather_feeling_description".localized
        return label
    }()
    
    private func configureCell() {
        backgroundColor = Color.background.primary
        selectionStyle = .none
    }
    
    private func configureSliderView() {
        configureSliderSubviews()
        sliderView.constraints(
            top: contentView.top(Size.padding.small),
            left: contentView.left(Size.padding.xLarge),
            right: contentView.right(Size.padding.xLarge)
        )
        configureTrackView()
        configureNotches()
        configurePathViewConstraints()
    }
    
    private func configureSliderSubviews() {
        contentView.addSubviews(
            trackView,
            colderNotchView,
            lessColderNotchView,
            asIsNotchView,
            lessHotterNotchView,
            hotterNotchView,
            pathView,
            sliderView
        )
    }
    
    private func configureTrackView() {
        trackView.constraints(
            left: sliderView.left(Size.padding.xSmall),
            right: sliderView.right(Size.padding.xSmall),
            centerY: sliderView.centerY,
            height: .equalToConstant(4)
        )
    }
    
    private func configurePathViewConstraints() {
        pathView.constraints(
            centerY: trackView.centerY,
            height: .equalToConstant(4)
        )
        pathViewLeadingConstraint = pathView.leadingAnchor.constraint(equalTo: trackView.leadingAnchor)
        pathViewTrailingConstraint = pathView.trailingAnchor.constraint(equalTo: trackView.trailingAnchor)
        pathViewLeadingConstraint.isActive = true
        pathViewTrailingConstraint.isActive = true
        layoutIfNeeded()
    }
    
    private func configureNotches() {
        colderNotchView.constraints(
            left: trackView.left,
            centerY: trackView.centerY,
            width: .equalToConstant(4),
            height: .equalToConstant(12)
        )
        asIsNotchView.constraints(
            centerX: trackView.centerX,
            centerY: trackView.centerY,
            width: .equalToConstant(4),
            height: .equalToConstant(12)
        )
        hotterNotchView.constraints(
            right: trackView.right,
            centerY: trackView.centerY,
            width: .equalToConstant(4),
            height: .equalToConstant(12)
        )
        configureLessNotches()
    }
    
    private func configureLessNotches() {
        let lessColderSubstrateView = UIView()
        contentView.addSubview(lessColderSubstrateView)
        lessColderSubstrateView.constraints(
            left: trackView.left,
            right: trackView.centerX,
            centerY: trackView.centerY
        )
        lessColderNotchView.center(
            in: lessColderSubstrateView,
            width: .equalToConstant(4),
            height: .equalToConstant(12)
        )
        
        let lessHotterSubstrateView = UIView()
        contentView.addSubview(lessHotterSubstrateView)
        lessHotterSubstrateView.constraints(
            left: trackView.centerX,
            right: trackView.right,
            centerY: trackView.centerY
        )
        lessHotterNotchView.center(
            in: lessHotterSubstrateView,
            width: .equalToConstant(4),
            height: .equalToConstant(12)
        )
    }
    
    private func configureLabels() {
        contentView.addSubview(labelsView)
        labelsView.constraints(
            top: sliderView.bottom(Size.padding.xxSmall),
            left: contentView.left(Size.padding.medium),
            right: contentView.right(Size.padding.medium)
        )
        
        labelsView.addSubviews(colderLabel, hotterLabel)
        colderLabel.constraints(
            top: labelsView.top,
            left: labelsView.left,
            right: labelsView.centerX(Size.padding.large)
        )
        hotterLabel.constraints(
            top: labelsView.top,
            left: labelsView.centerX(Size.padding.large),
            right: labelsView.right
        )
        
        if "colder".localized.count > "hotter".localized.count {
            hotterLabel.constraints(bottom: labelsView.bottom)
        } else {
            colderLabel.constraints(bottom: labelsView.bottom)
        }
    }
    
    private func configureExplanationLabel() {
        contentView.addSubview(explanationLabel)
        explanationLabel.constraints(
            top: labelsView.bottom(Size.padding.small),
            left: contentView.left(Size.padding.medium),
            bottom: contentView.bottom,
            right: contentView.right(Size.padding.medium)
        )
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
        configureSliderView()
        configureLabels()
        configureExplanationLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
