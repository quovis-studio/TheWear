/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension WeatherView: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let navViewAlpha = getNavigationViewAlpha(with: scrollView.contentOffset.y)
        weatherDelegate?.changeAlphaOfNavigationView(to: navViewAlpha)
    }
    
    func scrollViewDidEndDragging(
        _ scrollView: UIScrollView,
        willDecelerate decelerate: Bool
    ) {
        properlyEndScrollingIfNeeded(with: scrollView.contentOffset.y)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        properlyEndScrollingIfNeeded(with: scrollView.contentOffset.y)
    }
    
    func getInitialOffset() -> CGFloat {
        let topSafeArea = safeAreaInsets.top
        let offset = -(topSafeArea + Size.padding.xxxLarge)
        return offset
    }
    
    private func getNavigationViewAlpha(with y: CGFloat) -> CGFloat {
        let controlPoint = getInitialOffset() + Size.padding.small
        let alpha = -(y - controlPoint) / Size.padding.small
        return alpha
    }
    
    private func properlyEndScrollingIfNeeded(with y: CGFloat) {
        let initialOffset = getInitialOffset()
        let navViewControlPoint = initialOffset + Size.padding.small
        let statusBarControlPoint = navViewControlPoint + Size.icon.large
        
        UIView.animate(
            withDuration: Duration.short,
            delay: 0,
            options: .curveEaseInOut
        ) {
            if y >= initialOffset && y <= navViewControlPoint {
                let offset = CGPoint(x: 0, y: initialOffset)
                self.scrollView.setContentOffset(offset, animated: false)
                self.weatherDelegate?.changeAlphaOfNavigationView(to: 1)
                
            } else if y > navViewControlPoint && y <= statusBarControlPoint {
                let offset = CGPoint(x: 0, y: statusBarControlPoint)
                self.scrollView.setContentOffset(offset, animated: false)
                self.weatherDelegate?.changeAlphaOfNavigationView(to: 0)
            }
        }
    }
    
}
