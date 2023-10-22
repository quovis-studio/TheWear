/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class GeolocationTableViewCell: SearchTableViewCell {
    
    weak var delegate: SearchTableViewDelegate?
    
    private let geoImageView = UIImageView(image: UIImage(named: "geo"))
    
    private let geoLabel: UILabel = {
        let label = UILabel()
        label.textColor = Color.label.primary
        label.font = Font.body
        label.alpha = 1
        label.textAlignment = .left
        label.text = "my_geo".localized
        return label
    }()
    
    @objc private func handleTap(_ recognizer: UILongPressGestureRecognizer) {
        contentView.handleTapGesture(recognizer) {
            delegate?.chooseGeolocation()
        }
    }
    
    override func cancelGestureRecognizer() {
        contentView.gestureRecognizers?.forEach { $0.cancel() }
    }
    
    private func configureGeoImageView() {
        geoImageView.tintColor = Color.label.primary
        contentView.addSubview(geoImageView)
        geoImageView.constraints(
            left: contentView.left(Size.padding.medium),
            centerY: contentView.centerY,
            width: .equalToConstant(Size.icon.small),
            height: .equalToConstant(Size.icon.small)
        )
    }
    
    private func configureGeoLabel() {
        contentView.addSubview(geoLabel)
        geoLabel.constraints(
            top: contentView.top,
            left: geoImageView.right(Size.padding.xxxSmall),
            bottom: contentView.bottom,
            right: contentView.right(Size.padding.medium)
        )
    }
    
    private func configureTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        contentView.addGestureRecognizer(tapRecognizer)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureGeoImageView()
        configureGeoLabel()
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
