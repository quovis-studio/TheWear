/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension PartsContainer {

    mutating func prepareParts(
        _ currentWeatherContainer: CurrentWeatherContainer,
        _ hoursWeatherData: [HourWeatherModel],
        _ forecastWeatherData: [ForecastWeatherModel],
        _ timezone: String
    ) {
        var partsViewModel = [PartViewModel]()
        var unitsViewModel = [UnitViewModel]()
        
        let parts = getParts(with: forecastWeatherData[0], timezone: timezone)
        let dayParts = parts.dayParts
        let times = parts.times

        var unitParts = [[UnitPartViewModel]](
            repeating: [UnitPartViewModel](),
            count: Unit.allCases.count
        )
        
        let firstHour = getFirstHour(with: hoursWeatherData[0].timestamp_local)
        for (index, part) in dayParts.enumerated() {
            let middleHour = getHourIndex(
                times: times,
                dayPartsCount: dayParts.count,
                index: index,
                firstHour: firstHour
            )
            
            guard hoursWeatherData.count >= middleHour else { break }
            
            for (unitIndex, unit) in Unit.allCases.enumerated() {
                unitParts[unitIndex].append(
                    getUnitPartViewModel(
                        currentWeatherContainer,
                        hoursWeatherData[middleHour],
                        part,
                        unit))
            }
            
            if part == DayPart.now.localizedString {
                partsViewModel.append(
                    PartViewModel(
                        part: part,
                        tempC: currentWeatherContainer.tempC,
                        tempF: currentWeatherContainer.tempF,
                        feelsLikeTempC: currentWeatherContainer.feelsLikeTempC,
                        feelsLikeTempF: currentWeatherContainer.feelsLikeTempF,
                        condition: currentWeatherContainer.condition,
                        description: currentWeatherContainer.description,
                        colorCode: changeCodeIfNeeded(
                            code: currentWeatherContainer.colorCode,
                            timeZone: timezone,
                            forecastForDay: forecastWeatherData[0]),
                        rain: currentWeatherContainer.rain,
                        topClothes: currentWeatherContainer.topClothes,
                        bottomClothes: currentWeatherContainer.bottomClothes,
                        shoes: currentWeatherContainer.shoes,
                        accessories: currentWeatherContainer.accessories
                    )
                )
            } else {
                let clothes = prepareClothes(with: hoursWeatherData[middleHour].app_temp)
                partsViewModel.append(
                    PartViewModel(
                        part: part,
                        tempC: prepareTemperature(with: hoursWeatherData[middleHour].temp),
                        tempF: prepareTemperature(with: hoursWeatherData[middleHour].temp, fahrenheit: true),
                        feelsLikeTempC: prepareFeelsLike(with: hoursWeatherData[middleHour].app_temp),
                        feelsLikeTempF: prepareFeelsLike(with: hoursWeatherData[middleHour].app_temp, fahrenheit: true),
                        condition: prepareCondition(with: hoursWeatherData[middleHour].weather),
                        description: prepareDescription(with: hoursWeatherData[middleHour].app_temp),
                        colorCode: prepareColorCode(with: hoursWeatherData[middleHour].weather),
                        rain: prepareRain(with: hoursWeatherData[middleHour].weather),
                        topClothes: clothes.top,
                        bottomClothes: clothes.bottom,
                        shoes: clothes.shoes,
                        accessories: clothes.accessories
                    )
                )
            }
        }
        
        for (unitIndex, unit) in Unit.allCases.enumerated() {
            unitsViewModel.append(UnitViewModel(unitName: unit.localizedString, unitParts: unitParts[unitIndex]))
        }

        self.partsViewModel = partsViewModel
        self.unitsViewModel = unitsViewModel
    }
    
}
