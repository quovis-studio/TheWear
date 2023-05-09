/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let vc = ViewController()
        window.rootViewController = vc
        self.window = window
        window.makeKeyAndVisible()
        NetworkService.shared.start()
        UD.shared.save(Key.timeBeforeBackground, TimeInterval(exactly: 0.0))
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        AnalyticsService.shared.sendEvent(.appClosed)
        NetworkService.shared.stop()
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        NetworkService.shared.start()
        WeatherService.shared.fetchWeatherAfterBackgroundIfNeeded()
        CalendarAndLocaleService.shared.updateTimePreference()
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        NetworkService.shared.start()
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        AnalyticsService.shared.sendEvent(.appInBackground)
        BackgroundFetchService.shared.submit()
        NetworkService.shared.stop()
    }
    
}
