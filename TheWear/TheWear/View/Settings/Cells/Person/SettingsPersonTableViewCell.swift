/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SettingsPersonTableViewCell: UITableViewCell {
        
    var withPersonChanged: ((_ collapse: Bool) -> ())?
    var genderChanged: (() -> ())?
    var appearanceChosen: (() -> ())?
    var wardrobeChosen: (() -> ())?
    
    let personLabel: UILabel = {
        let label = UILabel()
        label.text = "show_person".localized
        label.font = Font.body
        label.textColor = Color.label.primary
        label.textAlignment = .left
        return label
    }()
    
    lazy var personSwitcher: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = Color.label.secondary
        switcher.subviews.first?.subviews.first?.backgroundColor = Color.background.quinarySolid
        switcher.isOn = UD.shared.retrieve(Key.withPerson) ?? false
        switcher.isExclusiveTouch = true
        switcher.addTarget(self, action: #selector(changeSwitcher(_:)), for: .valueChanged)
        return switcher
    }()
    
    let genderNameLabel: UILabel = {
        let label = UILabel()
        label.text = "sex".localized
        label.font = Font.body
        label.textColor = Color.label.primary
        label.textAlignment = .left
        return label
    }()
    
    let genderValueLabel: UILabel = {
        let label = UILabel()
        label.font = Font.body
        label.textColor = Color.label.secondary
        label.textAlignment = .right
        label.isUserInteractionEnabled = true
        label.isExclusiveTouch = true
        if UD.shared.isMan() {
            label.text = Sex.male.localizedString
        } else {
            label.text = Sex.female.localizedString
        }
        return label
    }()
    
    let appearanceLabel: UILabel = {
        let label = UILabel()
        label.text = "appearance".localized
        label.font = Font.body
        label.textColor = Color.label.primary
        label.textAlignment = .left
        label.isUserInteractionEnabled = true
        label.isExclusiveTouch = true
        return label
    }()
    
    let wardrobeLabel: UILabel = {
        let label = UILabel()
        label.text = "wardrobe".localized
        label.font = Font.body
        label.textColor = Color.label.primary
        label.textAlignment = .left
        label.isUserInteractionEnabled = true
        label.isExclusiveTouch = true
        return label
    }()
    
    private func configureCell() {
        backgroundColor = Color.background.primary
        selectionStyle = .none
    }
    
    private func configurePersonViews() {
        contentView.addSubviews(personLabel, personSwitcher)
        personLabel.constraints(
            top: contentView.top,
            left: contentView.left(Size.padding.medium),
            height: .equalToConstant(Size.cell.settings)
        )
        personSwitcher.constraints(
            right: contentView.right(Size.padding.medium),
            centerY: personLabel.centerY
        )
    }
    
    private func configureGenderViews() {
        contentView.addSubviews(genderNameLabel, genderValueLabel)
        genderValueLabel.constraints(
            top: genderNameLabel.top,
            bottom: genderNameLabel.bottom,
            right: contentView.right(Size.padding.medium)
        )
        genderNameLabel.constraints(
            top: personLabel.bottom,
            left: contentView.left(Size.padding.medium),
            right: genderValueLabel.left,
            height: .equalToConstant(Size.cell.settings)
        )
    }
    
    private func configureAppearanceLabel() {
        contentView.addSubview(appearanceLabel)
        appearanceLabel.constraints(
            top: genderNameLabel.bottom,
            left: contentView.left(Size.padding.medium),
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.cell.settings)
        )
    }
    
    private func configureWardrobeLabel() {
        contentView.addSubview(wardrobeLabel)
        wardrobeLabel.constraints(
            top: appearanceLabel.bottom,
            left: contentView.left(Size.padding.medium),
            right: contentView.right(Size.padding.medium),
            height: .equalToConstant(Size.cell.settings)
        )
    }
    
    private func configureHidingPersonViews() {
        [genderNameLabel, genderValueLabel, appearanceLabel, wardrobeLabel].forEach {
            $0.alpha = UD.shared.retrieve(Key.withPerson) == true ? 1 : 0
        }
    }
    
    private func configureGenderTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleGenderChange(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        genderValueLabel.addGestureRecognizer(tapRecognizer)
    }
    
    private func configureAppearanceTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleAppearanceChoose(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        appearanceLabel.addGestureRecognizer(tapRecognizer)
    }
    
    private func configureWardrobeTapRecognizer() {
        let tapRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleWardrobeChoose(_:)))
        tapRecognizer.minimumPressDuration = 0
        tapRecognizer.delegate = self
        wardrobeLabel.addGestureRecognizer(tapRecognizer)
    }
    
    func configureEnterNotification() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updatePersonSwitcherOffColor),
            name: UIApplication.willEnterForegroundNotification,
            object: nil
        )
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
        configurePersonViews()
        configureGenderViews()
        configureAppearanceLabel()
        configureWardrobeLabel()
        configureHidingPersonViews()
        configureGenderTapRecognizer()
        configureAppearanceTapRecognizer()
        configureWardrobeTapRecognizer()
        configureEnterNotification()
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
