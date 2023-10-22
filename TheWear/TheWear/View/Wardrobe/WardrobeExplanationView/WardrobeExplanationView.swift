/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class WardrobeExplanationView: ModalView {
    
    var openWardrobeView: (() -> ())?
    
    var outCounter = 0
    var inCounter = 0
    var headressIsOnPerson = false
    var orderOfClothes = [[Int]]()
    
    let manChangeClothes = [
        // 1 look
        [ClothesItem(name: Clothes.man.accessory.baseballCap.rawValue, color: .black),
         ClothesItem(name: Clothes.man.top.longsleeve.rawValue, color: .black),
         ClothesItem(name: Clothes.man.bottom.shorts.rawValue, color: .beige),
         ClothesItem(name: nil, color: nil)],
        
        // 2 look
        [ClothesItem(name: nil, color: nil),
         ClothesItem(name: Clothes.man.top.shirt.rawValue, color: .pink),
         ClothesItem(name: Clothes.man.bottom.regularPants.rawValue, color: .lightBlue),
         ClothesItem(name: Clothes.man.shoes.loafers.rawValue, color: .black)],
        
        // 3 look
        [ClothesItem(name: nil, color: nil),
         ClothesItem(name: Clothes.man.top.topTankJewel.rawValue, color: .whiteForWardrobe),
         ClothesItem(name: Clothes.man.bottom.shorts.rawValue, color: .blue),
         ClothesItem(name: Clothes.man.shoes.slippers.rawValue, color: .red)],
        
        // 4 look
        [ClothesItem(name: nil, color: nil),
         ClothesItem(name: Clothes.man.top.tShirtOversize.rawValue, color: .orange),
         ClothesItem(name: Clothes.man.bottom.widePants.rawValue, color: .coral),
         ClothesItem(name: nil, color: nil)],
        
        // 5 look
        [ClothesItem(name: Clothes.man.accessory.baseballCap.rawValue, color: .black),
         ClothesItem(name: Clothes.man.top.hoodie.rawValue, color: .khaki),
         ClothesItem(name: Clothes.man.bottom.regularPants.rawValue, color: .khaki),
         ClothesItem(name: Clothes.man.shoes.sneakers.rawValue, color: .whiteForWardrobe)]
    ]
    
    let womanChangeClothes = [
        // 1 look
        [ClothesItem(name: nil, color: nil),
         ClothesItem(name: Clothes.woman.top.blouse.rawValue, color: .red),
         ClothesItem(name: Clothes.woman.bottom.longSkirt.rawValue, color: .black),
         ClothesItem(name: Clothes.woman.shoes.low.rawValue, color: .black)],
        
        // 2 look
        [ClothesItem(name: nil, color: nil),
         ClothesItem(name: Clothes.woman.top.topTankSquare.rawValue, color: .whiteForWardrobe),
         ClothesItem(name: Clothes.woman.bottom.widePants.rawValue, color: .beige),
         ClothesItem(name: Clothes.woman.shoes.slippers.rawValue, color: .khaki)],
        
        // 3 look
        [ClothesItem(name: nil, color: nil),
         ClothesItem(name: Clothes.woman.top.shirt.rawValue, color: .pink),
         ClothesItem(name: Clothes.woman.bottom.regularPants.rawValue, color: .lightBlue),
         ClothesItem(name: Clothes.woman.shoes.low.rawValue, color: .black)],
        
        // 4 look
        [ClothesItem(name: Clothes.woman.accessory.baseballCap.rawValue, color: .black),
         ClothesItem(name: Clothes.woman.top.tShirt.rawValue, color: .whiteForWardrobe),
         ClothesItem(name: Clothes.woman.bottom.pleatedSkirt.rawValue, color: .black),
         ClothesItem(name: Clothes.woman.shoes.gym.rawValue, color: .whiteForWardrobe)],
        
        // 5 look
        [ClothesItem(name: nil, color: nil),
         ClothesItem(name: nil, color: nil),
         ClothesItem(name: Clothes.woman.bottom.shortShorts.rawValue, color: .blue),
         ClothesItem(name: Clothes.woman.shoes.slates.rawValue, color: .orange)]
    ]
    
    let headChange = UIView()
    let topChange = UIView()
    let bottomChange = UIView()
    let shoesChange = UIView()
    
    let headPointerView = UIView()
    let topPointerView = UIView()
    let bottomPointerView = UIView()
    let shoesPointerView = UIView()
    
    let personViewContainer = UIView()
    let personView = UIView()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "explanation_title".localized
        label.font = Font.body
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textColor = Color.label.primary
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "explanation_text".localized
        label.font = Font.footnote1
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textColor = Color.label.primary
        return label
    }()
    
    private let button: UILabel = {
        let label = UILabel()
        label.text = "OK"
        label.font = Font.subhead
        label.textAlignment = .center
        label.layer.cornerRadius = Size.padding.small
        label.layer.cornerCurve = .continuous
        label.clipsToBounds = true
        label.textColor = Color.white.primary
        label.backgroundColor = WeatherService.shared.currentColor
        return label
    }()
    
    private func configureTitleLabel() {
        substrateView.addSubview(titleLabel)
        titleLabel.constraints(
            left: substrateView.left(Size.padding.medium),
            bottom: descriptionLabel.top(Size.padding.xxxSmall),
            right: substrateView.right(Size.padding.medium)
        )
    }
    
    private func configureDescriptionLabel() {
        substrateView.addSubview(descriptionLabel)
        descriptionLabel.constraints(
            left: substrateView.left(Size.padding.medium),
            bottom: button.top(Size.padding.small),
            right: substrateView.right(Size.padding.medium)
        )
    }
    
    private func configureButton() {
        substrateView.addSubview(button)
        button.addTapGesture(self, #selector(handleButtonTap(_:)))
        var safeAreaInset: CGFloat = 0.0
        if UIDevice.current.userInterfaceIdiom == .phone {
            safeAreaInset = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0.0
        }
        button.constraints(
            bottom: substrateView.bottom(Size.padding.small + safeAreaInset),
            centerX: substrateView.centerX,
            width: .equalTo(substrateView.width, constant: -2 * Size.padding.medium),
            height: .equalToConstant(Size.button.large)
        )
    }
    
    @objc private func handleButtonTap(_ recognizer: UILongPressGestureRecognizer) {
        button.handleTapGesture(recognizer) {
            UD.shared.save(Key.wardrobeExplained, true)
            close() { [weak self] in self?.openWardrobeView?() }
        }
    }
    
    override init(following: Bool = false, enableToClose: Bool = true) {
        super.init(following: following, enableToClose: enableToClose)
        configureButton()
        configureDescriptionLabel()
        configureTitleLabel()
        configurePerson()
        configureChange()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
