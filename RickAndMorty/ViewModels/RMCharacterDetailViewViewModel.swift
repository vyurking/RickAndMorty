//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 25.01.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(chatacter: RMCharacter) {
        self.character = chatacter
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
