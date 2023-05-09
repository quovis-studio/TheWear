/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SettingsSupportTableViewCell: UITableViewCell {
    
    var support: SettingsSupportItem! {
        didSet {
            nameLabel.text = support.localizedString
        }
    }
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = Font.body
        label.textColor = Color.black.primary
        label.isUserInteractionEnabled = true
        label.isExclusiveTouch = true
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .left
        return label
    }()
    
    private func configureCell() {
        backgroundColor = Color.white.primary
        selectionStyle = .none
    }
    
    private func configureNameLabel() {
        contentView.addSubview(nameLabel)
        nameLabel.matchSuperview(
            offset: .init(left: Size.padding.medium, right: Size.padding.medium)
        )
    }
    
    func cancelGestureRecognizer() {
        nameLabel.gestureRecognizers?.forEach {
            $0.cancel()
        }
    }
    
    private func configureTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleChoose(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        nameLabel.addGestureRecognizer(tapRecognizer)
    }
    
    @objc private func handleChoose(_ recognizer: UILongPressGestureRecognizer) {
        nameLabel.handleTapGesture(recognizer) {
            chooseSupport(with: support)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
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
