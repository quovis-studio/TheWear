/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SearchTextField: UITextField {
    
    private var textPadding = UIEdgeInsets(
        top: 0,
        left: Size.padding.medium,
        bottom: 0,
        right: Size.padding.medium
    )
    
    private func configureAppearance() {
        autocorrectionType = .no
        backgroundColor = Color.background.quinary
        layer.cornerCurve = .continuous
        layer.cornerRadius = Size.padding.small
        layer.borderColor = Color.background.senary.cgColor
        layer.borderWidth = Size.system.border
        textColor = Color.label.primary
        font = Font.body
        tintColor = Color.label.primary
    }
    
    private func configurePlaceholder() {
        let attributes = [
            NSAttributedString.Key.foregroundColor: Color.label.quaternary,
            NSAttributedString.Key.font: Font.body
        ]
        attributedPlaceholder = NSAttributedString(
            string: "search_placeholder".localized,
            attributes: attributes
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
        configurePlaceholder()
    }
    
    override func textRect(
        forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(
        forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
