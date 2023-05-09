/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension ClothesItemCollectionViewCell {
    
    func configurePersonView(
        with type: ClothesType,
        clothesName: String,
        clothesIndex: Int,
        currentColor: Int?
    ) {
        configurePersonViewContainer(with: type, clothesName: clothesName)
        configureClothes(with: type, clothesName: clothesName, clothesIndex: clothesIndex, currentColor: currentColor)
    }
    
    func configurePersonViewContainer(with type: ClothesType, clothesName: String) {
        if personViewContainer != nil {
            personViewContainer.removeFromSuperview()
            personViewContainer = nil
        }
        personViewContainer = UIView()
        personView = UIView()
        contentView.insertSubview(personViewContainer, at: 0)
        personViewContainer.addSubview(personView)

        switch type {
        case .outerwear, .top:
            personViewContainer.constraints(
                top: contentView.top(Size.padding.small),
                centerX: contentView.centerX,
                width: .equalTo(contentView.width, constant: -2 * (Size.padding.xLarge + Size.padding.xxxSmall)),
                height: .equalTo(personViewContainer.width, multiplier: 600 / 252)
            )
            
        case .bottom:
            personViewContainer.constraints(
                bottom: contentView.bottom(Size.padding.medium),
                centerX: contentView.centerX,
                width: .equalTo(contentView.width, constant: -2 * Size.padding.xLarge),
                height: .equalTo(personViewContainer.width, multiplier: 600 / 252)
            )
            
        case .shoes:
            personViewContainer.constraints(
                bottom: contentView.bottom(Size.padding.medium),
                centerX: contentView.centerX(-Size.padding.medium),
                width: .equalTo(contentView.width),
                height: .equalTo(personViewContainer.width, multiplier: 600 / 252)
            )
            
        case .accessories:
            if clothesName == Clothes.man.accessory.gloves.rawValue {
                personViewContainer.constraints(
                    centerX: contentView.centerX,
                    centerY: contentView.centerY,
                    width: .equalTo(contentView.width, constant: -2 * Size.padding.medium),
                    height: .equalTo(personViewContainer.width, multiplier: 600 / 252)
                )
            } else {
                personViewContainer.constraints(
                    top: contentView.top,
                    centerX: contentView.centerX,
                    width: .equalTo(contentView.width, constant: 2 * Size.padding.medium),
                    height: .equalTo(personViewContainer.width, multiplier: 600 / 252)
                )
            }
        }
        
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
    
    func configureClothes(
        with type: ClothesType,
        clothesName: String,
        clothesIndex: Int,
        currentColor: Int?
    ) {
        personView.subviews.forEach { $0.removeFromSuperview() }
        
        switch type {
        case .outerwear:
            if UD.shared.isMan() {
                personView.addSubview(Man.drawBody(false))
                personView.addSubview(Man.drawBottom(name: .regularPants, color: .blue))
                let name = Clothes.man.top.allOuterwearCases[clothesIndex]
                let color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    color = clothesName == Clothes.man.top.coat.rawValue ? Color.clothes.black : Color.clothes.white
                }
                personView.addSubview(Man.drawTop(name: name, color: color, rain: false))
                personView.addSubview(Man.drawHaircut())
                personView.addSubview(Man.drawBeard())
                
            } else {
                personView.addSubview(Woman.drawBody(false))
                personView.addSubview(Woman.drawBottom(name: .regularPants, color: .blue))
                let name = Clothes.woman.top.allOuterwearCases[clothesIndex]
                let color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    color = clothesName == Clothes.woman.top.coat.rawValue ? Color.clothes.black : Color.clothes.white
                }
                personView.addSubview(Woman.drawTop(name: name, color: color, rain: false))
                personView.addSubview(Woman.drawHaircut())
            }
            
        case .top:
            if UD.shared.isMan() {
                personView.addSubview(Man.drawBody(false))
                personView.addSubview(Man.drawBottom(name: .regularPants, color: .blue))
                let name = Clothes.man.top.allTopCases[clothesIndex]
                let color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    if clothesName == Clothes.man.top.topTankJewel.rawValue ||
                       clothesName == Clothes.man.top.shirt.rawValue {
                        color = .white
                    } else {
                        color = .red
                    }
                }
                personView.addSubview(Man.drawTop(name: name, color: color, rain: false))
                personView.addSubview(Man.drawHaircut())
                personView.addSubview(Man.drawBeard())
                
            } else {
                personView.addSubview(Woman.drawBody(false))
                if clothesName != Clothes.woman.top.dress.rawValue {
                    personView.addSubview(Woman.drawBottom(name: .regularPants, color: .blue))
                }
                let name = Clothes.woman.top.allTopCases[clothesIndex]
                let color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    if clothesName == Clothes.woman.top.topTankJewel.rawValue ||
                       clothesName == Clothes.woman.top.topTankSquare.rawValue ||
                       clothesName == Clothes.woman.top.shirt.rawValue {
                        color = .white
                    } else {
                        color = .red
                    }
                }
                personView.addSubview(Woman.drawTop(name: name, color: color, rain: false))
                personView.addSubview(Woman.drawHaircut())
            }
            
        case .bottom:
            if UD.shared.isMan() {
                personView.addSubview(Man.drawBody(false))
                let name = Clothes.man.bottom.allCases[clothesIndex]
                let color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    color = .blue
                }
                personView.addSubview(Man.drawBottom(name: name, color: color))
                personView.addSubview(Man.drawTop(name: .tShirt, color: .red, rain: false))
                personView.addSubview(Man.drawShoes(name: .gym, color: .white))
                personView.addSubview(Man.drawHaircut())
                personView.addSubview(Man.drawBeard())
                
            } else {
                personView.addSubview(Woman.drawBody(false))
                let name = Clothes.woman.bottom.allCases[clothesIndex]
                let color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    if clothesName == Clothes.woman.bottom.shortSkirt.rawValue ||
                       clothesName == Clothes.woman.bottom.longSkirt.rawValue ||
                       clothesName == Clothes.woman.bottom.pleatedSkirt.rawValue {
                        color = .red
                    } else {
                        color = .blue
                    }
                }
                personView.addSubview(Woman.drawBottom(name: name, color: color))
                personView.addSubview(Woman.drawTop(name: .tShirt, color: .red, rain: false))
                personView.addSubview(Woman.drawShoes(name: .gym, color: .white))
                personView.addSubview(Woman.drawHaircut())
            }
            
        case .shoes:
            if UD.shared.isMan() {
                personView.addSubview(Man.drawBody(false))
                personView.addSubview(Man.drawBottom(name: .tightPants, color: .blue))
                let name = Clothes.man.shoes.allCases[clothesIndex]
                var color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    if clothesName == Clothes.man.shoes.gym.rawValue ||
                       clothesName == Clothes.man.shoes.sneakers.rawValue {
                        color = .white
                    } else if clothesName == Clothes.man.shoes.loafers.rawValue ||
                              clothesName == Clothes.man.shoes.boots.rawValue {
                        color = .black
                    } else {
                        color = .red
                    }
                }
                personView.addSubview(Man.drawShoes(name: name, color: color))
                personView.addSubview(Man.drawHaircut())
                personView.addSubview(Man.drawBeard())
                
            } else {
                personView.addSubview(Woman.drawBody(false))
                personView.addSubview(Woman.drawBottom(name: .tightPants, color: .blue))
                let name = Clothes.woman.shoes.allCases[clothesIndex]
                var color: Color.clothes!
                if let currentColor = currentColor {
                    color = Color.clothes.allCases[currentColor]
                } else {
                    if clothesName == Clothes.woman.shoes.gym.rawValue ||
                       clothesName == Clothes.woman.shoes.sneakers.rawValue {
                        color = .white
                    } else if clothesName == Clothes.woman.shoes.low.rawValue ||
                              clothesName == Clothes.woman.shoes.boots.rawValue {
                        color = .black
                    } else {
                        color = .red
                    }
                }
                personView.addSubview(Woman.drawShoes(name: name, color: color))
                personView.addSubview(Woman.drawHaircut())
            }
            
        case .accessories:
            if UD.shared.isMan() {
                if clothesName == Clothes.man.accessory.umbrella.rawValue {
                    var color: Color.clothes!
                    if let currentColor = currentColor {
                        color = Color.clothes.allCases[currentColor]
                    } else {
                        color = .blue
                    }
                    personView.addSubview(Man.drawBody(true))
                    personView.addSubview(Man.drawTop(name: .tShirt, color: .red, rain: true))
                    personView.addSubview(Man.drawUmbrellaBottom(color: color))
                    personView.addSubview(Man.drawHaircut())
                    personView.addSubview(Man.drawBeard())
                    personView.addSubview(Man.drawUmbrellaTop(color: color))
                    
                } else if clothesName == Clothes.man.accessory.gloves.rawValue {
                    var color: Color.clothes!
                    if let currentColor = currentColor {
                        color = Color.clothes.allCases[currentColor]
                    } else {
                        color = .black
                    }
                    personView.addSubview(Man.drawBody(false))
                    personView.addSubview(Man.drawBottom(name: .regularPants, color: .blue))
                    personView.addSubview(Man.drawGloves(color: color, rain: false))
                    personView.addSubview(Man.drawTop(name: .downJacketWithoutCape, color: .white, rain: false))
                    
                } else {
                    personView.addSubview(Man.drawBody(false))
                    let name = Clothes.man.accessory.allCases[clothesIndex]
                    var color: Color.clothes!
                    if name == .warmScarf {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .blue
                        }
                        personView.addSubview(Man.drawTop(name: .downJacketWithCape, color: .white, rain: false))
                        personView.addSubview(Man.drawWarmScarf(color: color))
                        personView.addSubview(Man.drawBeanie(color: .black, true))
                        
                    } else if name == .lightScarf {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .blue
                        }
                        personView.addSubview(Man.drawTop(name: .downJacketWithCape, color: .white, rain: false))
                        personView.addSubview(Man.drawLightScarf(color: color))
                        personView.addSubview(Man.drawBeanie(color: .black, true))
                        
                    } else if name == .beanie {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .black
                        }
                        personView.addSubview(Man.drawTop(name: .downJacketWithCape, color: .white, rain: false))
                        personView.addSubview(Man.drawBeanie(color: color, true))
                        
                    } else if name == .baseballCap {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .black
                        }
                        personView.addSubview(Man.drawTop(name: .tShirt, color: .red, rain: false))
                        personView.addSubview(Man.drawBaseballCap(color: color))
                    }
                }
                
            } else {
                if clothesName == Clothes.woman.accessory.umbrella.rawValue {
                    var color: Color.clothes!
                    if let currentColor = currentColor {
                        color = Color.clothes.allCases[currentColor]
                    } else {
                        color = .blue
                    }
                    personView.addSubview(Woman.drawBody(true))
                    personView.addSubview(Woman.drawTop(name: .tShirt, color: .red, rain: true))
                    personView.addSubview(Woman.drawUmbrellaBottom(color: color))
                    personView.addSubview(Woman.drawHaircut())
                    personView.addSubview(Woman.drawUmbrellaTop(color: color))
                    
                } else if clothesName == Clothes.man.accessory.gloves.rawValue {
                    var color: Color.clothes!
                    if let currentColor = currentColor {
                        color = Color.clothes.allCases[currentColor]
                    } else {
                        color = .black
                    }
                    personView.addSubview(Woman.drawBody(false))
                    personView.addSubview(Woman.drawBottom(name: .regularPants, color: .blue))
                    personView.addSubview(Woman.drawGloves(color: color, rain: false))
                    personView.addSubview(Woman.drawTop(name: .downJacketWithoutCape, color: .white, rain: false))
                    
                } else {
                    personView.addSubview(Woman.drawBody(false))
                    let name = Clothes.woman.accessory.allCases[clothesIndex]
                    var color: Color.clothes!
                    if name == .warmScarf {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .blue
                        }
                        personView.addSubview(Woman.drawTop(name: .downJacketWithCape, color: .white, rain: false))
                        personView.addSubview(Woman.drawWarmScarf(color: color))
                        personView.addSubview(Woman.drawBeanie(color: .black, true))
                        
                    } else if name == .lightScarf {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .blue
                        }
                        personView.addSubview(Woman.drawTop(name: .downJacketWithCape, color: .white, rain: false))
                        personView.addSubview(Woman.drawLightScarf(color: color))
                        personView.addSubview(Woman.drawBeanie(color: .black, true))
                        
                    } else if name == .beanie {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .black
                        }
                        personView.addSubview(Woman.drawTop(name: .downJacketWithCape, color: .white, rain: false))
                        personView.addSubview(Woman.drawBeanie(color: color, true))
                        
                    } else if name == .baseballCap {
                        if let currentColor = currentColor {
                            color = Color.clothes.allCases[currentColor]
                        } else {
                            color = .black
                        }
                        personView.addSubview(Woman.drawTop(name: .tShirt, color: .red, rain: false))
                        personView.addSubview(Woman.drawBaseballCap(color: color))
                    }
                }
                
            }
        }
        
    }
    
}
