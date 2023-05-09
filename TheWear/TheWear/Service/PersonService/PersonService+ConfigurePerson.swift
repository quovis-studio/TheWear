/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension PersonService {
    
    func configureBody(with rain: Bool) -> UIView {
        if UD.shared.isMan() {
            return Man.drawBody(rain)
        } else {
            return Woman.drawBody(rain)
        }
    }
    
    func configureBeard() -> UIView {
        if UD.shared.isMan() {
            return Man.drawBeard()
        } else {
            return UIView()
        }
    }
    
    func configureTopClothes(with topClothes: [ClothesItem], rain: Bool) -> [ClothesView] {
        var topClothesViews = [ClothesView]()
        var hasNotDefaultTop = false
        
        for top in topClothes {
            if !top.byDefault {
                hasNotDefaultTop = true
                break
            }
        }
        for top in topClothes {
            if hasNotDefaultTop {
                if !top.byDefault {
                    if UD.shared.isMan() {
                        guard let name = Clothes.man.top(rawValue: top.name!) else { continue }
                        topClothesViews.append(Man.drawTop(name: name, color: top.color, rain: rain))
                    } else {
                        guard let name = Clothes.woman.top(rawValue: top.name!) else { continue }
                        topClothesViews.append(Woman.drawTop(name: name, color: top.color, rain: rain))
                    }
                }
            } else {
                if top.byDefault {
                    if UD.shared.isMan() {
                        guard let name = Clothes.man.top(rawValue: top.name!) else { continue }
                        topClothesViews.append(Man.drawTop(name: name, color: top.color, rain: rain))
                    } else {
                        guard let name = Clothes.woman.top(rawValue: top.name!) else { continue }
                        topClothesViews.append(Woman.drawTop(name: name, color: top.color, rain: rain))
                    }
                }
            }
        }
        return topClothesViews
    }
    
    func configureBottomClothes(with bottomClothes: [ClothesItem]) -> [ClothesView] {
        var bottomClothesViews = [ClothesView]()
        var hasNotDefaultBottom = false
        for bottom in bottomClothes {
            if !bottom.byDefault {
                hasNotDefaultBottom = true
                break
            }
        }
        for bottom in bottomClothes {
            if hasNotDefaultBottom {
                if !bottom.byDefault {
                    if UD.shared.isMan() {
                        guard let name = Clothes.man.bottom(rawValue: bottom.name!) else { continue }
                        bottomClothesViews.append(Man.drawBottom(name: name, color: bottom.color))
                    } else {
                        guard let name = Clothes.woman.bottom(rawValue: bottom.name!) else { continue }
                        bottomClothesViews.append(Woman.drawBottom(name: name, color: bottom.color))
                    }
                }
            } else {
                if bottom.byDefault {
                    if UD.shared.isMan() {
                        guard let name = Clothes.man.bottom(rawValue: bottom.name!) else { continue }
                        bottomClothesViews.append(Man.drawBottom(name: name, color: bottom.color))
                    } else {
                        guard let name = Clothes.woman.bottom(rawValue: bottom.name!) else { continue }
                        bottomClothesViews.append(Woman.drawBottom(name: name, color: bottom.color))
                    }
                }
            }
        }
        return bottomClothesViews
    }
    
    func configureShoes(with shoes: [ClothesItem]) -> [ClothesView] {
        var shoesViews = [ClothesView]()
        var hasNotDefaultShoes = false
        for shoe in shoes {
            if !shoe.byDefault {
                hasNotDefaultShoes = true
                break
            }
        }
        for shoe in shoes {
            if hasNotDefaultShoes {
                if !shoe.byDefault {
                    if UD.shared.isMan() {
                        if shoe.name != Clothes.woman.shoes.low.rawValue {
                            guard let name = Clothes.man.shoes(rawValue: shoe.name!) else { continue }
                            shoesViews.append(Man.drawShoes(name: name, color: shoe.color))
                        }
                    } else {
                        if shoe.name != Clothes.man.shoes.loafers.rawValue {
                            guard let name = Clothes.woman.shoes(rawValue: shoe.name!) else { continue }
                            shoesViews.append(Woman.drawShoes(name: name, color: shoe.color))
                        }
                    }
                }
            } else {
                if shoe.byDefault {
                    if UD.shared.isMan() {
                        if shoe.name != Clothes.woman.shoes.low.rawValue {
                            guard let name = Clothes.man.shoes(rawValue: shoe.name!) else { continue }
                            shoesViews.append(Man.drawShoes(name: name, color: shoe.color))
                        }
                    } else {
                        if shoe.name != Clothes.man.shoes.loafers.rawValue {
                            guard let name = Clothes.woman.shoes(rawValue: shoe.name!) else { continue }
                            shoesViews.append(Woman.drawShoes(name: name, color: shoe.color))
                        }
                    }
                }
            }
        }
        return shoesViews
    }
    
    func configureAccessoriesViews(
        with accessories: [ClothesItem],
        rain: Bool
    ) -> (
        glovesViews: [ClothesView],
        rainGlovesViews: [ClothesView],
        haircutViews: [UIView],
        headdressViews: [ClothesView],
        scarfViews: [ClothesView],
        umbrellaTopViews: [ClothesView],
        umbrellaBottomViews: [ClothesView]
    ) {
        let hasNotDefaultGloves = checkHasNotDefaultGloves(with: accessories)
        let hasNotDefaultBeanie = checkHasNotDefaultBeanie(with: accessories)
        let hasNotDefaultWarmScarf = checkHasNotDefaultWarmScarf(with: accessories)
        let hasNotDefaultLightScarf = checkHasNotDefaultLightScarf(with: accessories)
        let hasNotDefaultBaseballCap = checkHasNotDefaultBaseballCap(with: accessories)
        let hasNotDefaultUmbrella = checkHasNotDefaultUmbrella(with: accessories)
        
        var glovesViews = [ClothesView]()
        var rainGlovesViews = [ClothesView]()
        var haircutViews = [UIView]()
        var headdressViews = [ClothesView]()
        var scarfViews = [ClothesView]()
        var umbrellaTopViews = [ClothesView]()
        var umbrellaBottomViews = [ClothesView]()
        
        for accessory in accessories {
            
            // Gloves
            if accessory.name == Clothes.man.accessory.gloves.rawValue {
                if hasNotDefaultGloves {
                    if !accessory.byDefault {
                        if UD.shared.isMan() {
                            glovesViews.append(Man.drawGloves(color: accessory.color, rain: rain))
                            if rain {
                                rainGlovesViews.append(Man.drawRainGlove(color: accessory.color, rain: rain))
                            } else {
                                rainGlovesViews.append(ClothesView())
                            }
                        } else {
                            glovesViews.append(Woman.drawGloves(color: accessory.color, rain: rain))
                            if rain {
                                rainGlovesViews.append(Woman.drawRainGlove(color: accessory.color, rain: rain))
                            } else {
                                rainGlovesViews.append(ClothesView())
                            }
                        }
                    }
                } else {
                    if accessory.byDefault {
                        if UD.shared.isMan() {
                            glovesViews.append(Man.drawGloves(color: accessory.color, rain: rain))
                            if rain {
                                rainGlovesViews.append(Man.drawRainGlove(color: accessory.color, rain: rain))
                            } else {
                                rainGlovesViews.append(ClothesView())
                            }
                        } else {
                            glovesViews.append(Woman.drawGloves(color: accessory.color, rain: rain))
                            if rain {
                                rainGlovesViews.append(Woman.drawRainGlove(color: accessory.color, rain: rain))
                            } else {
                                rainGlovesViews.append(ClothesView())
                            }
                        }
                    }
                }
                
            // Beanie
            } else if accessory.name == Clothes.man.accessory.beanie.rawValue {
                if hasNotDefaultBeanie {
                    if !accessory.byDefault {
                        if accessories.contains(where: {
                            $0.name == Clothes.man.accessory.warmScarf.rawValue || $0.name == Clothes.man.accessory.lightScarf.rawValue
                        }) {
                            if UD.shared.isMan() {
                                headdressViews.append(Man.drawBeanie(color: accessory.color, false))
                                haircutViews.append(Man.drawNoHaircut())
                            } else {
                                headdressViews.append(Woman.drawBeanie(color: accessory.color, false))
                                haircutViews.append(Woman.drawNoHaircut())
                            }
                        } else {
                            if UD.shared.isMan() {
                                headdressViews.append(Man.drawBeanie(color: accessory.color, true))
                                haircutViews.append(Man.drawNoHaircut())
                            } else {
                                headdressViews.append(Woman.drawBeanie(color: accessory.color, true))
                                haircutViews.append(Woman.drawNoHaircut())
                            }
                        }
                    }
                } else {
                    if accessory.byDefault {
                        if accessories.contains(where: {
                            $0.name == Clothes.man.accessory.warmScarf.rawValue || $0.name == Clothes.man.accessory.lightScarf.rawValue
                        }) {
                            if UD.shared.isMan() {
                                headdressViews.append(Man.drawBeanie(color: accessory.color, false))
                                haircutViews.append(Man.drawNoHaircut())
                            } else {
                                headdressViews.append(Woman.drawBeanie(color: accessory.color, false))
                                haircutViews.append(Woman.drawNoHaircut())
                            }
                        } else {
                            if UD.shared.isMan() {
                                headdressViews.append(Man.drawBeanie(color: accessory.color, true))
                                haircutViews.append(Man.drawNoHaircut())
                            } else {
                                headdressViews.append(Woman.drawBeanie(color: accessory.color, true))
                                haircutViews.append(Woman.drawNoHaircut())
                            }
                        }
                    }
                }
            
            // No headdress
            } else if accessory.name == AllClothes.noHeaddress.rawValue {
                if UD.shared.isMan() {
                    headdressViews.append(Man.drawNoHeaddress())
                    haircutViews.append(Man.drawHaircut())
                } else {
                    headdressViews.append(Woman.drawNoHeaddress())
                    haircutViews.append(Woman.drawHaircut())
                }
                
            // Warm scarf
            } else if accessory.name == Clothes.man.accessory.warmScarf.rawValue {
                if hasNotDefaultWarmScarf {
                    if !accessory.byDefault {
                        if UD.shared.isMan() {
                            scarfViews.append(Man.drawWarmScarf(color: accessory.color))
                        } else {
                            scarfViews.append(Woman.drawWarmScarf(color: accessory.color))
                        }
                    }
                } else {
                    if accessory.byDefault {
                        if UD.shared.isMan() {
                            scarfViews.append(Man.drawWarmScarf(color: accessory.color))
                        } else {
                            scarfViews.append(Woman.drawWarmScarf(color: accessory.color))
                        }
                    }
                    
                }
                
            // Light scarf
            } else if accessory.name == Clothes.man.accessory.lightScarf.rawValue {
                if hasNotDefaultLightScarf {
                    if !accessory.byDefault {
                        if UD.shared.isMan() {
                            scarfViews.append(Man.drawLightScarf(color: accessory.color))
                        } else {
                            scarfViews.append(Woman.drawLightScarf(color: accessory.color))
                        }
                    }
                } else {
                    if accessory.byDefault {
                        if UD.shared.isMan() {
                            scarfViews.append(Man.drawLightScarf(color: accessory.color))
                        } else {
                            scarfViews.append(Woman.drawLightScarf(color: accessory.color))
                        }
                    }
                }
            
            // Baseball cap
            } else if accessory.name == Clothes.man.accessory.baseballCap.rawValue {
                if hasNotDefaultBaseballCap {
                    if !accessory.byDefault {
                        if UD.shared.isMan() {
                            headdressViews.append(Man.drawBaseballCap(color: accessory.color))
                            haircutViews.append(Man.drawNoHaircut())
                        } else {
                            headdressViews.append(Woman.drawBaseballCap(color: accessory.color))
                            haircutViews.append(Woman.drawNoHaircut())
                        }
                    }
                } else {
                    if accessory.byDefault {
                        if UD.shared.isMan() {
                            headdressViews.append(Man.drawBaseballCap(color: accessory.color))
                            haircutViews.append(Man.drawNoHaircut())
                        } else {
                            headdressViews.append(Woman.drawBaseballCap(color: accessory.color))
                            haircutViews.append(Woman.drawNoHaircut())
                        }
                    }
                }
            }
            
            if rain {
                for umbrella in accessories {
                    if umbrella.name == AllClothes.umbrella.rawValue {
                        if hasNotDefaultUmbrella {
                            if !umbrella.byDefault {
                                if UD.shared.isMan() {
                                    umbrellaTopViews.append(Man.drawUmbrellaTop(color: umbrella.color))
                                    umbrellaBottomViews.append(Man.drawUmbrellaBottom(color: umbrella.color))
                                } else {
                                    umbrellaTopViews.append(Woman.drawUmbrellaTop(color: umbrella.color))
                                    umbrellaBottomViews.append(Woman.drawUmbrellaBottom(color: umbrella.color))
                                }
                            }
                        } else {
                            if umbrella.byDefault {
                                if UD.shared.isMan() {
                                    umbrellaTopViews.append(Man.drawUmbrellaTop(color: umbrella.color))
                                    umbrellaBottomViews.append(Man.drawUmbrellaBottom(color: umbrella.color))
                                } else {
                                    umbrellaTopViews.append(Woman.drawUmbrellaTop(color: umbrella.color))
                                    umbrellaBottomViews.append(Woman.drawUmbrellaBottom(color: umbrella.color))
                                }
                            }
                        }
                    }
                }
            }

        }
        
        return (
            glovesViews: glovesViews,
            rainGlovesViews: rainGlovesViews,
            haircutViews: haircutViews,
            headdressViews: headdressViews,
            scarfViews: scarfViews,
            umbrellaTopViews: umbrellaTopViews,
            umbrellaBottomViews: umbrellaBottomViews
        )
    }
    
    private func checkHasNotDefaultGloves(with accessories: [ClothesItem]) -> Bool {
        var hasDefault = false
        for accessory in accessories {
            if accessory.name == Clothes.man.accessory.gloves.rawValue {
                if !accessory.byDefault {
                    hasDefault = true
                    break
                }
            }
        }
        return hasDefault
    }
    
    private func checkHasNotDefaultBeanie(with accessories: [ClothesItem]) -> Bool {
        var hasDefault = false
        for accessory in accessories {
            if accessory.name == Clothes.man.accessory.beanie.rawValue {
                if !accessory.byDefault {
                    hasDefault = true
                    break
                }
            }
        }
        return hasDefault
    }
    
    private func checkHasNotDefaultWarmScarf(with accessories: [ClothesItem]) -> Bool {
        var hasDefault = false
        for accessory in accessories {
            if accessory.name == Clothes.man.accessory.warmScarf.rawValue {
                if !accessory.byDefault {
                    hasDefault = true
                    break
                }
            }
        }
        return hasDefault
    }
    
    private func checkHasNotDefaultLightScarf(with accessories: [ClothesItem]) -> Bool {
        var hasDefault = false
        for accessory in accessories {
            if accessory.name == Clothes.man.accessory.lightScarf.rawValue {
                if !accessory.byDefault {
                    hasDefault = true
                    break
                }
            }
        }
        return hasDefault
    }
    
    private func checkHasNotDefaultBaseballCap(with accessories: [ClothesItem]) -> Bool {
        var hasDefault = false
        for accessory in accessories {
            if accessory.name == Clothes.man.accessory.baseballCap.rawValue {
                if !accessory.byDefault {
                    hasDefault = true
                    break
                }
            }
        }
        return hasDefault
    }
    
    private func checkHasNotDefaultUmbrella(with accessories: [ClothesItem]) -> Bool {
        var hasDefault = false
        for accessory in accessories {
            if accessory.name == Clothes.man.accessory.umbrella.rawValue {
                if !accessory.byDefault {
                    hasDefault = true
                    break
                }
            }
        }
        return hasDefault
    }
    
}
