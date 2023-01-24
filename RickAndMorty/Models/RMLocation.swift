//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import Foundation

struct RMLocaiton: Codable {
    let id: Int
    let name: String
    let type: String
    let deminsion: String
    let redidents: [String]
    let url: String
    let created: String
}
