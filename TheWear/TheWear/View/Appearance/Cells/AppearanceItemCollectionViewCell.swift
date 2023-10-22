/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class AppearanceItemCollectionViewCell: UICollectionViewCell, UIGestureRecognizerDelegate {
    
    var itemChoosen: ((Int) -> ())?
    
    var choosenBorderView: UIView!
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
    
    func configurePersonViewContainerIfNeeded() {
        guard personViewContainer == nil else { return }
        personViewContainer = UIView()
        personView = UIView()
        contentView.addSubview(personViewContainer)
        personViewContainer.addSubview(personView)
        personViewContainer.constraints(
            top: contentView.top(Size.padding.xxSmall),
            centerX: contentView.centerX,
            width: .equalTo(contentView.width, constant: 2 * Size.padding.medium),
            height: .equalTo(personViewContainer.width, multiplier: 600 / 252)
        )
        personView.constraints(
            centerX: personViewContainer.centerX,
            centerY: personViewContainer.centerY,
            width: .equalToConstant(252),
            height: .equalToConstant(600)
        )
        layoutIfNeeded()
        personView.transform = CGAffineTransform(
            scaleX: personViewContainer.frame.width / 252,
            y: personViewContainer.frame.height / 600
        )
    }
    
    func configurePersonView(with part: AppearancePart, index: Int) {
        personView.subviews.forEach { $0.removeFromSuperview() }
        drawBody()
        if part == .haircut {
            drawHaircut(with: index)
        } else if part == .beard {
            drawBeard(with: index)
        }
    }
    
    private func drawBody() {
        if UD.shared.isMan() {
            personView.addSubview(Man.drawMannequinBody())
        } else {
            personView.addSubview(Woman.drawMannequinBody())
        }
    }
    
    private func drawHaircut(with index: Int) {
        if UD.shared.isMan() {
            personView.addSubview(Man.drawHaircut(Haircut.man.allCases[index]))
        } else {
            personView.addSubview(Woman.drawHaircut(Haircut.woman.allCases[index]))
        }
    }
    
    private func drawBeard(with index: Int) {
        if UD.shared.isMan() {
            personView.addSubview(Man.drawHaircut())
            personView.addSubview(Man.drawBeard(Beard.allCases[index]))
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
        maskView.frame = CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height)
        maskView.backgroundColor = Color.white.primary
        mask = maskView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTapRecognizer()
        configureCell()
        configureMask()
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
