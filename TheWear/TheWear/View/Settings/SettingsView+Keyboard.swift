/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SettingsView {
        
    @objc func keyboardDidHide(_ notification: Notification) {
        outerKeyboardView.removeFromSuperview()
        outerKeyboardView = nil
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        guard let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        let keyboardRectangle = keyboardFrame.cgRectValue
        configureOuterKeyboardView(with: keyboardRectangle)
        if UIDevice.current.userInterfaceIdiom == .phone {
            configureIPhoneOffset(for: keyboardRectangle)
        } else {
            configureIPadOffsetForKeyboard(for: keyboardRectangle)
        }
    }
    
    private func configureIPhoneOffset(for keyboardRectangle: CGRect) {
        let contentOffset = settingsTableView.contentSize.height - settingsTableView.frame.height
        let keyboardOffset = keyboardRectangle.height
        let restInset = 2 * Size.cell.settings + (Size.padding.large + Size.font.footnote2)
        let bottomSafeAreaInset = UIApplication.shared.windows[0].safeAreaInsets.bottom
        
        let offset = CGPoint(x: 0, y: contentOffset + keyboardOffset - restInset - bottomSafeAreaInset)
        settingsTableView.setContentOffset(offset, animated: true)
    }
    
    private func configureIPadOffsetForKeyboard(for keyboardRectangle: CGRect) {
        let screenHeight = UIScreen.main.bounds.height
        let outerOffset = (screenHeight - substrateView.frame.height) / 2
        let keyboardOffset = keyboardRectangle.height
        let bottomOffset = keyboardOffset - outerOffset
        let contentOffset = settingsTableView.contentSize.height - settingsTableView.frame.height
        let restInset = 2 * Size.cell.settings + (Size.padding.large + Size.font.footnote2)
        let bottomSafeAreaInset = UIApplication.shared.windows[0].safeAreaInsets.bottom
        
        let offset = CGPoint(x: 0, y: contentOffset + bottomOffset - restInset - bottomSafeAreaInset - Size.padding.small)
        settingsTableView.setContentOffset(offset, animated: true)
    }
    
    private func configureOuterKeyboardView(with keyboardRectangle: CGRect) {
        guard outerKeyboardView == nil else { return }
        outerKeyboardView = UIView()
        addSubview(outerKeyboardView)
        outerKeyboardView.matchSuperview(
            offset: .init(bottom: keyboardRectangle.height + Size.cell.settings)
        )
        outerKeyboardView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleAnyGestureOutOfKeyboard)))
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(handleAnyGestureOutOfKeyboard))
        swipe.direction = .down
        outerKeyboardView.addGestureRecognizer(swipe)
    }
    
    @objc func handleAnyGestureOutOfKeyboard() {
        notificationsTableViewCellDelegate?.endTimeChanging()
        let contentOffset = settingsTableView.contentSize.height - settingsTableView.frame.height
        let offset = CGPoint(x: 0, y: contentOffset)
        settingsTableView.setContentOffset(offset, animated: true)
    }
    
}
