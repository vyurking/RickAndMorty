//
//  RMSettingsOptions.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 02.03.2023.
//

import UIKit

enum RMSettingsOptions: CaseIterable {
    case rateApp
    case contactUs
    case terms
    case privacy
    case apiReference
    case viewSeries
    case viewCode
    
    var targetUrl: URL? {
        switch self {
        case .rateApp:
            return nil
        case .contactUs:
            return URL(string: "https://t.me/vyurking")
        case .terms:
            return URL(string: "https://t.me/vyurking")
        case .privacy:
            return URL(string: "https://t.me/vyurking")
        case .apiReference:
            return URL(string: "https://t.me/vyurking")
        case .viewSeries:
            return URL(string: "https://t.me/vyurking")
        case .viewCode:
            return URL(string: "https://t.me/vyurking")
        }
    }
    
    var displayTitle: String {
        switch self {
        case .rateApp:
            return "Rate App"
        case .contactUs:
            return "Contact us"
        case .terms:
            return "Terms of Service"
        case .privacy:
            return "Privacy Policy"
        case .apiReference:
            return "Api"
        case .viewSeries:
            return "View series"
        case .viewCode:
            return "View App Code"
        }
    }
    
    var iconContainerColor: UIColor {
        switch self {
        case .rateApp:
            return .systemBlue
        case .contactUs:
            return .systemOrange
        case .terms:
            return .systemPurple
        case .privacy:
            return .systemRed
        case .apiReference:
            return .systemGreen
        case .viewSeries:
            return .systemPink
        case .viewCode:
            return .systemMint
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "star.fill")
        case .contactUs:
            return UIImage(systemName: "paperplane")
        case .terms:
            return UIImage(systemName: "doc")
        case .privacy:
            return UIImage(systemName: "lock")
        case .apiReference:
            return UIImage(systemName: "link")
        case .viewSeries:
            return UIImage(systemName: "tv.fill")
        case .viewCode:
            return UIImage(systemName: "hammer")
        }
    }
}
