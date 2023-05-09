/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import WidgetKit
import SwiftUI

// Entry aka Model for widget
struct CurrentWeatherEntry: TimelineEntry {
    var date: Date
    var temperature: String
    var comment: String
}

struct Provider: TimelineProvider {
    
    // When nothing is loaded show placeholder with no data
    func placeholder(in context: Context) -> CurrentWeatherEntry {
        CurrentWeatherEntry(
            date: Date(),
            temperature: "",
            comment: "current_weather_widget_placeholder".localized
        )
    }

    // It can appear when nothing is loaded yet
    func getSnapshot(in context: Context, completion: @escaping (CurrentWeatherEntry) -> ()) {
        let entry = CurrentWeatherEntry(
            date: Date(),
            temperature: "",
            comment: "current_weather_widget_placeholder".localized
        )
        completion(entry)
    }

    // ...
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        // Trying to fetch current weather
        // But not now
//        WeatherService.shared.fetchWeatherForWidget { currentWeatherEntry in
//
//            // If nothing fetched show placeholder and set next update in 1 hour
//            guard let currentWeatherEntry = currentWeatherEntry else {
//                let placeholderCurrentWeather = CurrentWeatherEntry(
//                    date: Date(),
//                    temperature: "",
//                    comment: "current_weather_widget_placeholder".localized
//                )
//                let nextRefresh = Calendar.current.date(byAdding: .hour, value: 1, to: Date())
//                let timeline = Timeline(entries: [placeholderCurrentWeather], policy: .after(nextRefresh!))
//                completion(timeline)
//                return
//            }
//
//            // If everything ok show actual widget and set next update in 3 hours
//            let nextRefresh = Calendar.current.date(byAdding: .hour, value: 3, to: Date())
//            let timeline = Timeline(entries: [currentWeatherEntry], policy: .after(nextRefresh!))
//            completion(timeline)
//        }
        
        // If everything ok show actual widget and set next update in 3 hours
        let nextRefresh = Calendar.current.date(byAdding: .hour, value: 3, to: Date())
        let currentWeatherEntry = CurrentWeatherEntry(date: Date(), temperature: "-", comment: "-")
        let timeline = Timeline(entries: [currentWeatherEntry], policy: .after(nextRefresh!))
        completion(timeline)
    }
    
}

// Responsible for how widgets look like
struct TheWearWidgetsEntryView: View {
    
    @Environment(\.widgetFamily) private var widgetFamily
    var currentWeather: CurrentWeatherEntry

    var body: some View {
        switch widgetFamily {
        case .accessoryRectangular: Text("**\(currentWeather.temperature)** \(currentWeather.comment)")
        default: Text("Not implemented")
        }
    }
}

// For the title and description preview texts
@available(iOS 16.0, *)
struct TheWearWidgets: Widget {
    let kind: String = "TheWearWidgets"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            TheWearWidgetsEntryView(currentWeather: entry)
        }
        .configurationDisplayName("current_weather_widget_title".localized)
        .description("current_weather_widget_description".localized)
        .supportedFamilies([.accessoryRectangular])
    }
}

// For the preview to see how widgets look like
@available(iOS 16.0, *)
struct TheWearWidgets_Previews: PreviewProvider {
    static var previews: some View {
        TheWearWidgetsEntryView(
            currentWeather: CurrentWeatherEntry(
                date: Date(),
                temperature: "23°",
                comment: "hot_man_short".localized
            )
        )
            .previewContext(WidgetPreviewContext(family: .accessoryRectangular))
            .previewDisplayName("Lockscreen")
    }
}
