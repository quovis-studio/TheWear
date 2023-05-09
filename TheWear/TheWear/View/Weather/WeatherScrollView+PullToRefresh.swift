/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WeatherView {
    
    private func configurePullToRefreshObserver() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(endPullToRefresh),
            name: UIScene.willDeactivateNotification,
            object: nil
        )
    }
    
    private func removePullToRefreshObserver() {
        NotificationCenter.default.removeObserver(
            self,
            name: UIScene.willDeactivateNotification,
            object: nil
        )
    }
    
    @objc func beginPullToRefresh() {
        isUserInteractionEnabled = false
        scrollView.refreshControl?.beginRefreshing()
        configurePullToRefreshObserver()
        weatherFetchDelegate?.pullToRefreshFetchWeather()
        AnalyticsService.shared.sendEvent(.pullToRefresh)
    }
    
    func beginAutoPullToRefresh() {
        isUserInteractionEnabled = false
        scrollView.refreshControl?.beginRefreshing()
        configurePullToRefreshObserver()
        let offset = CGPoint(x: 0, y: getInitialOffset() - Size.padding.xxLarge)
        scrollView.setContentOffset(offset, animated: true)
    }
    
    @objc func endPullToRefresh() {
        isUserInteractionEnabled = true
        scrollView.refreshControl?.endRefreshing()
        removePullToRefreshObserver()
        let offset = CGPoint(x: 0, y: getInitialOffset())
        scrollView.setContentOffset(offset, animated: true)
    }
    
}
