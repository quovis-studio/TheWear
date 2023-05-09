/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation
import Alamofire

class SearchService {
    
    static let shared = SearchService()
    private let request = "https://api.geoapify.com/v1/geocode/autocomplete?text="
    private let type = "&type=city"
    
    func fetchAutocompleteCities(text: String, _ completion: @escaping (_ cities: [CityViewModel]?) -> Void) {
        let lang = getLang()
        let urlString = getUrlString(with: request, text, getAPIKey(), lang, type)
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        var request = URLRequest(url: url)
        request.timeoutInterval = 10
        
        AF.request(request).responseDecodable(of: FeaturesModel.self) { response in
            do {
                guard let data = response.data else {
                    completion(nil)
                    return
                }
                let featuresModel = try JSONDecoder().decode(
                    FeaturesModel.self,
                    from: data
                )
                guard let features = featuresModel.features else {
                    completion(nil)
                    return
                }
                let citiesWithPossibleDuplicates = features
                    .filter {$0.properties != nil}
                    .filter {$0.properties!.city != nil}
                    .filter {$0.properties!.country != nil}
                    .filter {$0.properties!.lon != nil}
                    .filter {$0.properties!.lat != nil}
                    .map { CityViewModel($0.properties!) }
                
                var cities = [CityViewModel]()
                citiesWithPossibleDuplicates.forEach {
                    if !cities.contains($0) {
                        cities.append($0)
                    }
                }
                completion(cities)
                
            } catch {
                completion(nil)
            }
        }
    }
    
    private func getLang() -> String {
        let languageCode = Locale.autoupdatingCurrent.languageCode ?? "en"
        let language = (languageCode == "ru") ? "ru" : "en"
        return "&lang=" + language
    }
    
    private func getUrlString(with components: String...) -> String {
        var urlString = ""
        components.forEach {urlString += $0}
        urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        urlString = urlString.folding(options: .diacriticInsensitive, locale: .current)
        return urlString
    }
    
    private func getAPIKey() -> String {
        if let apiKey = Bundle.main.infoDictionary?["SEARCH_API_KEY"] as? String {
            return "&apiKey=" + apiKey
        } else {
            return ""
        }
    }
    
    private init() {  }
    
}
