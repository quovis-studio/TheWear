/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

extension NotificationService {
    
    func getRainFactor(
        firstHour: Int,
        dayToUse: [HourWeatherModel],
        dayOffset: Int
    ) -> (night: Int, morning: Int, day: Int, evening: Int) {
        let dayToUseHoursCount = dayToUse.count
        var night = 0, morning = 0, day = 0, evening = 0
        
        if firstHour < 6 {
            // Кусок ночи в часах есть и все остальные части дня тоже
            night = (dayToUse[0...(dayToUseHoursCount <= 5 ? dayToUseHoursCount : 5 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 5 ? dayToUseHoursCount : 5 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 5 ? dayToUseHoursCount : 5 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            morning = (dayToUse[6 - firstHour...(dayToUseHoursCount <= 11 ? dayToUseHoursCount - 1  : 11 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[6 - firstHour...(dayToUseHoursCount <= 11 ? dayToUseHoursCount - 1 : 11 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[6 - firstHour...(dayToUseHoursCount <= 11 ? dayToUseHoursCount - 1 : 11 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            day = (dayToUse[12 - firstHour...(dayToUseHoursCount <= 18 ? dayToUseHoursCount - 1 : 18 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[12 - firstHour...(dayToUseHoursCount <= 18 ? dayToUseHoursCount - 1 : 18 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[12 - firstHour...(dayToUseHoursCount <= 18 - firstHour ? dayToUseHoursCount - 1 : 18 - firstHour )].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            evening = (dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
        } else if firstHour >= 6 && firstHour < 12 {
            // Уже утро, остается день, вечер и часть утра
            morning = (dayToUse[0...(dayToUseHoursCount <= 11 ? dayToUseHoursCount - 1  : 11 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 11 ? dayToUseHoursCount - 1 : 11 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 11 ? dayToUseHoursCount - 1 : 11 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            day = (dayToUse[12 - firstHour...(dayToUseHoursCount <= 18 ? dayToUseHoursCount - 1 : 18 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[12 - firstHour...(dayToUseHoursCount <= 18 ? dayToUseHoursCount - 1 : 18 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[12 - firstHour...(dayToUseHoursCount <= 18 - firstHour ? dayToUseHoursCount - 1 : 18 - firstHour )].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            evening = (dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
        } else if firstHour >= 12 && firstHour < 19 {
            // Уже день, остается часть дня и вечер
            day = (dayToUse[0...(dayToUseHoursCount <= 18 ? dayToUseHoursCount - 1 : 18 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 18 ? dayToUseHoursCount - 1 : 18 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 18 - firstHour ? dayToUseHoursCount - 1 : 18 - firstHour )].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            evening = (dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[19 - firstHour...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
        } else if firstHour >= 19 {
            // Уже вечер, берем только его
            evening = (dayToUse[0...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...(dayToUseHoursCount <= 23 ? dayToUseHoursCount - 1 : 23 - firstHour)].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
        } else {
            // если следующий день и все 24 часа есть
            morning = (dayToUse[6...11].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[6...11].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[6...11].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            day = (dayToUse[12...18].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[12...18].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[12...18].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            evening = (dayToUse[19...23].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[19...23].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[19...23].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
            night = (dayToUse[0...5].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("r") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...5].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("d") ? 1 : 0
            }.reduce(0, +) + dayToUse[0...5].map {
                ($0.weather?.icon?.prefix(1) ?? "0").contains("t") ? 1 : 0
            }.reduce(0, +)) > 0 ? 1 : 0
            
        }
        
        return (night: night, morning: morning, day: day, evening: evening)
    }
}
