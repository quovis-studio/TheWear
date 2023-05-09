/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import Foundation

enum Event: String {
    
    // App
    case appFirstOpened = "app_first_opened"
    case appOpened = "app_opened"
    case appClosed = "app_closed"
    case appInBackground = "app_in_background"
    
    // Main
    case pullToRefresh = "pull_to_refresh"
    
    case partsSwipedForward = "parts_swiped_forward"
    case partsSwipedBackward = "parts_swiped_backward"
    case windSwiped = "wind_swiped"
    case pressureSwiped = "pressure_swiped"
    case humiditySwiped = "humidity_swiped"
    case uvSwiped = "uv_swiped"
    case visibilitySwiped = "visibility_swiped"
    case precipitationSwiped = "precipitation_swiped"
    
    case umbrellaChanged = "umbrella_tapped"
    case glovesChanged = "gloves_tapped"
    case headdressChanged = "headdress_tapped"
    case scarfChanged = "scarf_tapped"
    case topChanged = "top_tapped"
    case bottomChanged = "bottom_tapped"
    case shoesChanged = "shoes_tapped"
    
    // Search
    case searchOpened = "search_screen_opened"
    case searchClosed = "search_screen_closed"
    case cityTapped = "city_tapped"
    
    // Settings
    case settingsClosed = "setting_screen_closed"
    case settingsOpened = "setting_screen_opened"
    
    case tempUnitChanged = "temp_tapped"
    case windUnitChanged = "wind_tapped"
    case pressureUnitChanged = "pressure_tapped"
    case visiilityUnitChanged = "visibility_tapped"
    
    case genderChanged = "gender_tapped"
    
    case tempFeelingSwiped = "temp_feeling_swiped"
    case tempFeelingChanged = "temp_feeling_changed"
    
    case characterSwitcherOn = "character_tapped_on"
    case characterSwitcherOff = "character_tapped_off"
    
    case appearanceChanged = "appearance_changed"
    case appearanceOpened = "appearance_screen_opened"
    case appearanceClosed = "appearance_screen_closed"
    
    case wardrobeChanged = "wardrobe_changed"
    case wardrobeExplanationOkTapped = "wardrobe_explanation_ok_tapped"
    case wardrobeOpened = "wardrobe_screen_opened"
    case wardrobeClosed = "wardrobe_screen_closed"
    
    case notificationsSwitcherOn = "notifications_tapped_on"
    case notificationsSwitcherOff = "notifications_tapped_off"
    case notificationsTimeChanged = "notifications_time_changed"
    
    case notificationsAllowed = "notifications_allowed"
    case notificationsDenied = "notifications_denied"
    
    case rateClosed = "rate_screen_closed"
    case goToAppStoreTapped = "go_to_appstore_tapped"
    case rateIsShown = "rate_screen_is_shown"
    
    // Network alerts
    case networkErrorWhenFetchWeather = "networkErrorWhenFetchWeather"
    case networkErrorWhenPullToRefresh = "networkErrorWhenPullToRefresh"
    case networkErrorWhenRefresh = "networkErrorWhenRefresh"
    case networkErrorWhenSearchGeolocation = "networkErrorWhenSearchGeolocation"
    case networkErrorWhenChooseSavedCity = "networkErrorWhenChooseSavedCity"
    case networkErrorWhenChooseSearchedCity = "networkErrorWhenChooseSearchedCity"
    case networkErrorWhenAutocompleteCities = "networkErrorWhenAutocompleteCities"
    
    // Geolocation alerts
    case geolocationErrorWhenFetchWeather = "geolocationErrorWhenFetchWeather"
    case geolocationErrorWhenPullToRefresh = "geolocationErrorWhenPullToRefresh"
    case geolocationErrorWhenRefresh = "geolocationErrorWhenRefresh"
    case geolocationErrorWhenSearchGeolocation = "geolocationErrorWhenSearchGeolocation"
    
    // Notifications alerts
    case notificationsError = "notificationsError"
    
    // Unknown alerts
    case unknownErrorWhenFetchWeather = "unknownErrorWhenFetchWeather"
    case unknownErrorWhenPullToRefresh = "unknownErrorWhenPullToRefresh"
    case unknownErrorWhenRefresh = "unknownErrorWhenRefresh"
    case unknownErrorWhenSearchGeolocation = "unknownErrorWhenSearchGeolocation"
    case unknownErrorWhenChooseSavedCity = "unknownErrorWhenChooseSavedCity"
    case unknownErrorWhenChooseSearchedCity = "unknownErrorWhenChooseSearchedCity"
    case unknownErrorWhenAutocompleteCities = "unknownErrorWhenAutocompleteCities"
    
}


