//
//  RMGetAllEpisodeResponse.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 28.02.2023.
//

import Foundation

struct RMGetAllEpisodeResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    let info: Info
    let results: [RMEpisode]
}
