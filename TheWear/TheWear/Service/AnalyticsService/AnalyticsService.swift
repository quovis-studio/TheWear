/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation
import YandexMobileMetrica

class AnalyticsService {
    
    static let shared = AnalyticsService()
    
    func configure() {
        let configuration = YMMYandexMetricaConfiguration.init(apiKey: getAPIKey())
        YMMYandexMetrica.activate(with: configuration!)
    }
    
    private func getAPIKey() -> String {
        if let apiKey = Bundle.main.infoDictionary?["METRICA_API_KEY"] as? String {
            return apiKey
        } else {
            return ""
        }
    }
    
    func sendEvent(_ event: Event) {
        #if DEBUG
        #else
        let parameters: [AnyHashable : Any] = [:]
        YMMYandexMetrica.reportEvent(event.rawValue, parameters: parameters, onFailure: { (error) in
            print("DID FAIL REPORT EVENT: %@", error.localizedDescription)
            return
        })
        print("event \(event) sent")
        #endif
    }
    
    private init() {  }
    
}
