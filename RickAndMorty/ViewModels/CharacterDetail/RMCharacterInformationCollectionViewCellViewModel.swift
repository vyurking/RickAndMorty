//
//  RMCharacterInformationCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 26.01.2023.
//

import UIKit

final class RMCharacterInformationCollectionViewCellViewModel {
    private let type: `Type`
    
    private let value: String
    
    public var title: String {
        type.displayTitle
    }
    
    public var displayValue: String {
        if value.isEmpty {
            return "Unknown"
        }
        return value
    }
    
    public var iconImage: UIImage? {
        return type.iconImage
    }
    
    public var tintColor: UIColor? {
        return type.tintColor
    }
    
    enum `Type` {
        case status
        case gender
        case species
        case origin
        case location
        case episodeCount
        
        var tintColor: UIColor? {
            switch self {
            case .status:
                return .systemPink
            case .gender:
                return .systemBlue
            case .species:
                return .systemMint
            case .origin:
                return .systemGreen
            case .location:
                return .systemOrange
            case .episodeCount:
                return .systemPurple
            }
        }
        
        var iconImage: UIImage? {
            switch self {
            case .status:
                return UIImage(systemName: "bell")
            case .gender:
                return UIImage(systemName: "bell")
            case .species:
                return UIImage(systemName: "bell")
            case .origin:
                return UIImage(systemName: "bell")
            case .location:
                return UIImage(systemName: "bell")
            case .episodeCount:
                return UIImage(systemName: "bell")
            }
        }
        
        var displayTitle: String {
            switch self {
            case .status:
                return "Status"
            case .gender:
                return "Gender"
            case .species:
                return "Species"
            case .origin:
                return "Origin"
            case .location:
                return "Location"
            case .episodeCount:
                return "Episode count"
            }
        }
    }
    
    init(value: String, type: `Type`) {
        self.value = value
        self.type = type
    }
}
