//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import Foundation

/// Represent unique api endpoint
@frozen enum RMEndpoint: String, Hashable, CaseIterable {
    case character
    case location
    case episode
}
