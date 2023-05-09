/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SearchView {
    
    override func opened() {
        super.opened()
        AnalyticsService.shared.sendEvent(.searchOpened)
    }
    
    override func closed() {
        super.closed()
        AnalyticsService.shared.sendEvent(.searchClosed)
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        searchTextField.becomeFirstResponder()
    }
    
    override func viewBeginPan() {
        super.viewBeginPan()
        searchTextField.resignFirstResponder()
        cancelCellsGestureRecognizersOnBeginPan()
    }
    
    override func viewTapOutside() {
        super.viewTapOutside()
        searchTextField.resignFirstResponder()
    }
    
    private func cancelCellsGestureRecognizersOnBeginPan() {
        citiesTableView.visibleCells.forEach {
            if let cell = $0 as? SearchTableViewCell {
                cell.cancelGestureRecognizer()
            }
        }
    }
    
    private func removeTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc func textFieldTextDidChanged(_ textField: UITextField) {
        guard let text = textField.text else { return }
        removeTimer()
        if text.length == 0 {
            fetchSavedCities()
        } else if text.length >= 3 {
            timer = Timer.scheduledTimer(
                withTimeInterval: Duration.long,
                repeats: false,
                block: { _ in
                    self.removeTimer()
                    self.fetchAutocompleteCities(for: text)
                }
            )
        }
    }
    
}
