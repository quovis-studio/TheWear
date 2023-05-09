/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation
import Alamofire

extension WeatherService {
    
    func fetchCurrentWeather(
        for coordinates: Coordinates,
        _ completion: @escaping (CurrentWeatherModel?) -> Void
    ) {
        let location = getStringLocation(with: coordinates)
        let urlString = getUrlString(with: current, location, getAPIKey())
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        var request = URLRequest(url: url)
        request.timeoutInterval = 10
        
        AF.request(request).responseDecodable(of: CurrentWeatherResponse.self) { response in
            if response.error != nil {
                completion(nil)
                return
            }
            
            do {
                guard let data = response.data else {
                    completion(nil)
                    return
                }
                let weatherResponse = try JSONDecoder().decode(
                    CurrentWeatherResponse.self,
                    from: data
                )
                guard let weatherResponseData = weatherResponse.data else {
                    completion(nil)
                    return
                }
                completion(weatherResponseData[0])
                return
                
            } catch {
                completion(nil)
                return
            }
        }
    }
    
}
