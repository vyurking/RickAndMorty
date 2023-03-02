//
//  File.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 02.03.2023.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable {
    var id = UUID()
    
    public let type: RMSettingsOptions
    public let onTapHandler: (RMSettingsOptions) -> Void
    
    init(type: RMSettingsOptions, onTapHandler: @escaping (RMSettingsOptions) -> Void) {
        self.type = type
        self.onTapHandler = onTapHandler
    }
    
    var image: UIImage? {
        return type.iconImage
    }
    
    var title: String {
        return type.displayTitle
    }
    
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
}
