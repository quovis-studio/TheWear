/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

class TimeTextField: UITextField {
    
    init(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        font = Font.body
        textColor = WeatherService.shared.currentColor
        tintColor = .clear
        self.textAlignment = textAlignment
        keyboardType = .asciiCapableNumberPad
        isUserInteractionEnabled = false
    }
    
    override func caretRect(for position: UITextPosition) -> CGRect { return .zero }
       
    override func selectionRects(for range: UITextRange) -> [UITextSelectionRect] { return [] }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool { return false }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
