/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class ClothesItemCollectionViewCell: UICollectionViewCell, UIGestureRecognizerDelegate {
    
    var itemChoosen: ((Int) -> ())?
    var clothesType: ClothesType!
    
    var choosenBorderView: UIView!
    var addedImageView: UIImageView!
    var personViewContainer: UIView!
    var personView: UIView!
    
    func choosen(_ choosen: Bool) {
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
    
    func added(_ added: Bool) {
        if added {
            if addedImageView == nil {
                addedImageView = UIImageView(image: UIImage(named: "check"))
                addedImageView.tintColor = Color.white.primary
                contentView.addSubview(addedImageView)
                addedImageView.constraints(
                    top: contentView.top(Size.padding.xSmall),
                    left: contentView.left(Size.padding.xSmall),
                    width: .equalToConstant(Size.icon.xMedium),
                    height: .equalToConstant(Size.icon.xMedium)
                )
            }
        } else {
            if addedImageView != nil {
                addedImageView.removeFromSuperview()
                addedImageView = nil
            }
        }
    }
    
    @objc private func handleTap() {
        itemChoosen?(contentView.tag)
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
        backgroundColor = Color.background.quinary
        layer.cornerCurve = .continuous
        layer.cornerRadius = Size.padding.medium
        layer.borderColor = Color.background.senary.cgColor
        layer.borderWidth = Size.system.border
    }
    
    private func configureMask() {
        let maskView = UIView()
        maskView.layer.cornerCurve = .continuous
        maskView.layer.cornerRadius = Size.padding.medium
        maskView.frame = contentView.frame
        maskView.backgroundColor = Color.white.primary
        contentView.mask = maskView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
        configureMask()
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
