/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension HoursWeatherContainer {

    mutating func prepareHours(
        _ forecastWeatherData: [ForecastWeatherModel],
        _ hoursWeatherData: [HourWeatherModel],
        _ timezone: String
    ) -> [HourViewModel] {
        // 0. Вспомогательный массив hours
        var hours = [HourViewModel]()
        
        // 1. Рассвет и закат
        var sunrise = WeatherService.shared.getSunstate(
            with: forecastWeatherData[0].sunrise_ts,
            timezone: timezone
        )
        var sunset = WeatherService.shared.getSunstate(
            with: forecastWeatherData[0].sunset_ts,
            timezone: timezone
        )
        
        // 2. Упаковать часы в массив, добавляя по пути рассвет и закат
        var dayIndex = 0
        for (index, hour) in hoursWeatherData.enumerated() {
            
            let date = getDate(
                from: hour.timestamp_local,
                timezone: timezone
            )
            let hourDouble = getHourComponent(from: hour.timestamp_local)
            var icon = getIcon(from: hour.weather)
            icon = changeIconIfNeeded(
                icon: icon,
                hourDouble: hourDouble,
                sunrise: sunrise,
                sunset: sunset
            )
            let tempC = getTemperature(with: hour.temp, celsius: true)
            let tempF = getTemperature(with: hour.temp, celsius: false)
            
            // 2.1 Добавляем час
            hours.append(HourViewModel(
                hour12: getStringFor12HourSystem(for: hourDouble),
                hour24: getStringFor24HourSystem(for: hourDouble),
                icon: icon,
                tempC: tempC,
                tempF: tempF,
                date: Int(hourDouble) == 0 ? date : "")
            )
            
            // 2.2 Учитываем рассвет или закат
            if hourDouble == 0 && index != 0 {
                dayIndex += 1
                sunrise = WeatherService.shared.getSunstate(
                    with: forecastWeatherData[dayIndex].sunrise_ts,
                    timezone: timezone)
                sunset = WeatherService.shared.getSunstate(
                    with: forecastWeatherData[dayIndex].sunset_ts,
                    timezone: timezone)
            }
            if Int(hourDouble) == sunrise[0] {
                
                let hourViewModel = HourViewModel(
                    hour12: getSunstateFor12HourSystem(with: sunrise),
                    hour24: getSunstateFor24HourSystem(with: sunrise),
                    icon: "sunrise",
                    tempC: "sunrise".localized,
                    tempF: "sunrise".localized,
                    date: ""
                )
                
                if sunrise[1] == 0 {
                    hours.insert(hourViewModel, at: hours.count - 1)
                } else {
                    hours.append(hourViewModel)
                }
                
            } else if Int(hourDouble) == sunset[0] {
                
                let hourViewModel = HourViewModel(
                    hour12: getSunstateFor12HourSystem(with: sunset),
                    hour24: getSunstateFor24HourSystem(with: sunset),
                    icon: "sunset",
                    tempC: "sunset".localized,
                    tempF: "sunset".localized,
                    date: ""
                )
                
                if sunset[1] == 0 {
                    hours.insert(hourViewModel, at: hours.count - 1)
                } else {
                    hours.append(hourViewModel)
                }
            }
        }
        
        // 3. Проверить, не пропущен ли рассвет/закат, если сейчас сейчас его время.
        let missingCheck = checkForMissingSunsetSunrise(
            timestamp: hoursWeatherData[0].timestamp_local,
            sunrise: WeatherService.shared.getSunstate(
                with: forecastWeatherData[0].sunrise_ts,
                timezone: timezone),
            sunset: WeatherService.shared.getSunstate(
                with: forecastWeatherData[0].sunset_ts,
                timezone: timezone),
            timezone: timezone
        )
        
        // 3.1 Вставить закат рассвет, если нужно
        if let sunstate = missingCheck.hour {
            hours.insert(sunstate, at: missingCheck.index)
        }
        
        //4. Проверить, нет ли лишних часов/рассветов/закатов в самом начале
        return self.checkForExtraHour(h: hours, timezone: timezone)
    }
    
    mutating func checkForExtraHour(
        h: [HourViewModel],
        timezone: String
    ) -> [HourViewModel] {
        var calendar = CalendarAndLocaleService.shared.calendarGregorian
        calendar.timeZone = TimeZone(identifier: timezone) ?? TimeZone.autoupdatingCurrent
        let currentHour = Double(calendar.component(.hour, from: Date()))
        if (Int(currentHour) > (Int(h[0].hour24.string) ?? 24) && Int(currentHour) != 23) { return Array(h[1...]) }
        return h
    }
    
}
