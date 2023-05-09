/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class AppearanceColorCollectionViewCell: UICollectionViewCell, UIGestureRecognizerDelegate {
    
    var colorChoosen: ((Int) -> ())?
    
    var choosenBorderView: UIView!
    
    func updateColor(with color: UIColor, choosen: Bool) {
        backgroundColor = color
        if choosen {
            if choosenBorderView == nil {
                choosenBorderView = UIView()
                contentView.addSubview(choosenBorderView)
                choosenBorderView.matchSuperview(
                    offset: .init(
                        top: Size.padding.xxxSmall,
                        left: Size.padding.xxxSmall,
                        bottom: Size.padding.xxxSmall,
                        right: Size.padding.xxxSmall
                    )
                )
                choosenBorderView.layer.cornerCurve = .continuous
                choosenBorderView.layer.cornerRadius = Size.padding.small
                choosenBorderView.layer.borderColor = Color.white.primary.cgColor
                choosenBorderView.layer.borderWidth = Size.padding.xxxSmall
                choosenBorderView.frame = choosenBorderView.frame.insetBy(
                    dx: -Size.padding.xxxSmall,
                    dy: -Size.padding.xxxSmall
                )
            }
            
        } else {
            if choosenBorderView != nil {
                choosenBorderView.removeFromSuperview()
                choosenBorderView = nil
            }
        }
    }
    
    @objc private func handleTap() {
        colorChoosen?(contentView.tag)
    }
    
    private func configureTapRecognizer() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapRecognizer.delegate = self
        contentView.addGestureRecognizer(tapRecognizer)
    }
    
    func cancelGestureRecognizer() {
        contentView.gestureRecognizers?.forEach { $0.cancel() }
    }
    
    private func configureCell() {
        layer.cornerCurve = .continuous
        layer.cornerRadius = Size.padding.medium
        layer.borderColor = Color.white.substrate.cgColor
        layer.borderWidth = Size.system.border
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
        configureTapRecognizer()
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
