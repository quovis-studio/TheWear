/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import XCTest
@testable import TheWear

final class TheWearTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testWeatherDescriptionHeight() {
        // Define the maximum allowed height of the weather description as 4 font sizes used in the UILabel.
        let maximumHeight = 4 * Size.font.footnote
        
        // Define fixed width of the weather description basen on minimum screen's width (375).
        let fixedWidth = CGFloat(375) - 4 * Size.padding.medium
        
        // Iterate through all the localizations.
        for localization in Bundle.main.localizations {
            guard let filePath = Bundle.main.path(
                forResource: "Localizable",
                ofType: "strings",
                inDirectory: nil,
                forLocalization: localization
            ) else { continue }
            guard let localizations = NSDictionary(
                contentsOfFile: filePath
            ) else { continue }
            
            // Get all weather description texts and compare heights.
            let allWeatherDescriptionKeys = [
                "extremely_cold",
                "frosty",
                "freezing",
                "chilly",
                "less_chilly",
                "feels_warm",
                "warm_man",
                "warm_woman",
                "feels_warmer_man",
                "feels_warmer_woman",
                "really_warm_man",
                "really_warm_woman",
                "hot_man",
                "hot_woman",
                "feels_hot_man",
                "feels_hot_woman"
            ]
            for key in allWeatherDescriptionKeys {
                if let value = localizations[key] as? String {
                    let valueHeight = value.getWeatherDescriptionHeight(with: fixedWidth)
                    XCTAssertTrue(valueHeight <= maximumHeight, "localization: \(localization)")
                }
            }
        }
    }
    
    func testUnitsWidth() {
        // Define the maximum allowed width basen on minimum screen's width (375).
        let maximumWidth = ((CGFloat(375) - 2 * Size.padding.medium - Size.padding.small) / 2) - 2 * Size.padding.medium
        
        // Iterate through all the localizations.
        for localization in Bundle.main.localizations {
            guard let filePath = Bundle.main.path(
                forResource: "Localizable",
                ofType: "strings",
                inDirectory: nil,
                forLocalization: localization
            ) else { continue }
            guard let localizations = NSDictionary(
                contentsOfFile: filePath
            ) else { continue }
            
            // Compare wind label and maximum widths.
            if let value = localizations["wind"] as? String {
                let valueWidth = value.getWidth(Font.footnote)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            
            // Compare pressure label and measurements and maximum widths.
            if let value = localizations["pressure"] as? String {
                let valueWidth = value.getWidth(Font.footnote)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            if let value = localizations["hpa"] as? String {
                let valueWidth = value.getWidth(Font.subhead)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            if let value = localizations["mmhg"] as? String {
                let valueWidth = value.getWidth(Font.subhead)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            
            // Compare humidity label and maximum widths.
            if let value = localizations["humidity"] as? String {
                let valueWidth = value.getWidth(Font.footnote)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            
            // Compare uv descriptions and maximum widths.
            if let value = localizations["high"] as? String {
                let valueWidth = value.getWidth(Font.subhead)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            if let value = localizations["moderate"] as? String {
                let valueWidth = value.getWidth(Font.subhead)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            if let value = localizations["low"] as? String {
                let valueWidth = value.getWidth(Font.subhead)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            
            // Compare visibility label and maximum widths.
            if let value = localizations["visibility"] as? String {
                let valueWidth = value.getWidth(Font.footnote)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
            
            // Compare precipitation label and maximum widths.
            if let value = localizations["precipitation"] as? String {
                let valueWidth = value.getWidth(Font.footnote)
                XCTAssertTrue(valueWidth <= maximumWidth, "localization: \(localization)")
            }
        }
    }

}
