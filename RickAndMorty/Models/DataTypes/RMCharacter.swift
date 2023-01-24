//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let gender: RMCharacterGenger
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

