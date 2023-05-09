/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class ClothesTypeCollectionViewCell: UICollectionViewCell, UIGestureRecognizerDelegate {
    
    var typeChoosen: ((Int) -> ())?
    
    private let typeLabel: UILabel = {
        let label = UILabel()
        label.textColor = Color.black.quaternary
        label.font = Font.title3
        return label
    }()
    
    private func configureTypeLabel() {
        contentView.addSubview(typeLabel)
        typeLabel.matchSuperview()
    }
    
    @objc private func handleTap() {
        typeChoosen?(contentView.tag)
    }
    
    private func configureTapRecognizer() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapRecognizer.delegate = self
        contentView.addGestureRecognizer(tapRecognizer)
    }
    
    func cancelGestureRecognizer() {
        contentView.gestureRecognizers?.forEach { $0.cancel() }
    }
    
    func updateType(with text: String, current: Bool) {
        typeLabel.text = text
        typeLabel.textColor = current ? Color.black.primary : Color.black.quaternary
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configureTapRecognizer()
        configureTypeLabel()
    }
    
    func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
