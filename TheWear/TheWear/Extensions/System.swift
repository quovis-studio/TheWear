/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension String {
    
    var length: Int { return count }
    
    var localized: String { return NSLocalizedString(self, comment: "") }
    
    func getWidth(_ font: UIFont) -> CGFloat {
        return self.size(
            withAttributes: [NSAttributedString.Key.font : font]).width + 1
    }
    
    func getHeight(_ font: UIFont, _ width: CGFloat = 10000) -> CGFloat {
        let constraintRect = CGSize(
            width: width,
            height: .greatestFiniteMagnitude
        )
        let height = self.boundingRect(
            with: constraintRect,
            options: .usesLineFragmentOrigin,
            attributes: [NSAttributedString.Key.font: font],
            context: nil
        ).height
        return ceil(height)
    }
    
    func getWeatherDescriptionHeight(with fixedWidth: CGFloat) -> CGFloat {
        let constraintRect = CGSize(
            width: fixedWidth,
            height: .greatestFiniteMagnitude
        )
        let height = self.boundingRect(
            with: constraintRect,
            options: .usesLineFragmentOrigin,
            attributes: [NSAttributedString.Key.font: Font.footnote],
            context: nil
        ).height
        return ceil(height)
    }
    
}

extension Decimal {
    var int: Int { return NSDecimalNumber(decimal: self).intValue }
    var doubleValue: Double { return NSDecimalNumber(decimal: self).doubleValue }
}

extension UIColor {
    convenience init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) {
        self.init(
            red: red / 255.0,
            green: green / 255.0,
            blue: blue / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

public extension CaseIterable where Self: Equatable {

    func index() -> Self.AllCases.Index {
        return Self.allCases.firstIndex(of: self)!
    }

}
