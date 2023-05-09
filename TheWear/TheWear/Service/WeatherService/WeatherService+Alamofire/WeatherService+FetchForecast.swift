/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation
import Alamofire

extension WeatherService {
    
    func fetchForecastWeather(
        for coordinates: Coordinates,
        _ completion: @escaping (
            _ forecastWeather: [ForecastWeatherModel]?,
            _ forecastTimezone: String?) -> Void
    ) {
        let location = getStringLocation(with: coordinates)
        let urlString = getUrlString(with: days, location, getAPIKey())
        guard let url = URL(string: urlString) else {
            completion(nil, nil)
            return
        }
        var request = URLRequest(url: url)
        request.timeoutInterval = 10
        
        AF.request(request).responseDecodable(of: ForecastWeatherResponse.self) { response in
            if response.error != nil {
                completion(nil, nil)
                return
            }
            
            do {
                guard let data = response.data else {
                    completion(nil, nil)
                    return
                }
                let weatherResponse = try JSONDecoder().decode(
                    ForecastWeatherResponse.self,
                    from: data
                )
                guard let weatherResponseData = weatherResponse.data,
                      let timezone = weatherResponse.timezone
                else {
                    completion(nil, nil)
                    return
                }

                guard let datetime = weatherResponseData[0].datetime,
                      let today = CalendarAndLocaleService.shared.getDateToday()
                else {
                    completion(Array(weatherResponseData.prefix(8)), timezone)
                    return
                }
                
                if datetime < today {
                    completion(Array(weatherResponseData.suffix(from: 1).prefix(8)), timezone)
                    return
                } else {
                    completion(Array(weatherResponseData.prefix(8)), timezone)
                    return
                }
            } catch {
                completion(nil, nil)
                return
            }
        }
    }
    
}
