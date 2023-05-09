/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

struct CurrentWeatherContainer {

    var tempC = ""
    var tempF = ""
    var feelsLikeTempC = ""
    var feelsLikeTempF = ""
    var windSpeedKM = ""
    var windSpeedMS = ""
    var pressureHPA = ""
    var pressureMMHG = ""
    var uv = ""
    var uvDescription = ""
    var humidity = ""
    var visibilityKM = ""
    var visibilityMiles = ""
    var precipitation = ""
    var condition = ""
    var description = ""
    var descriptionShort = ""
    var colorCode = ""
    var topClothes = [ClothesItem]()
    var bottomClothes = [ClothesItem]()
    var shoes = [ClothesItem]()
    var accessories = [ClothesItem]()
    var rain = false
    
    init(_ data: CurrentWeatherModel) {
        prepareTemperature(with: data.temp)
        prepareFeelsLike(with: data.app_temp)
        prepareWindSpeed(with: data.wind_spd)
        preparePressure(with: data.pres)
        prepareUV(with: data.uv)
        prepareHumidity(with: data.rh)
        prepareVisibility(with: data.vis)
        preparePrecipitation(with: data.precip)
        prepareCondition(with: data.weather)
        prepareDescription(with: data.app_temp)
        prepareColorCode(with: data.weather)
        prepareClothes(with: data.app_temp)
        prepareRain(with: data.weather)
    }
    
}
