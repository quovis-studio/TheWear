/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class AppearancePartCollectionViewCell: UICollectionViewCell, UIGestureRecognizerDelegate {
    
    var partChoosen: ((Int) -> ())?
    
    private let partLabel: UILabel = {
        let label = UILabel()
        label.textColor = Color.black.quaternary
        label.font = Font.title3
        return label
    }()
    
    private func configurePartLabel() {
        contentView.addSubview(partLabel)
        partLabel.matchSuperview()
    }
    
    @objc private func handleTap() {
        partChoosen?(contentView.tag)
    }
    
    private func configureTapRecognizer() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapRecognizer.delegate = self
        contentView.addGestureRecognizer(tapRecognizer)
    }
    
    func cancelGestureRecognizer() {
        contentView.gestureRecognizers?.forEach { $0.cancel() }
    }
    
    func updatePart(with text: String, current: Bool) {
        partLabel.text = text
        partLabel.textColor = current ? Color.black.primary : Color.black.quaternary
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configureTapRecognizer()
        configurePartLabel()
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
