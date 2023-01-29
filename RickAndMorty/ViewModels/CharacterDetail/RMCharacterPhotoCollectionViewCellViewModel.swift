//
//  RMCharacterPhotoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 26.01.2023.
//

import Foundation

final class RMCharacterPhotoCollectionViewCellViewModel {
    private let imageUrl: URL?
    
    init(imageUrl: URL?) {
        self.imageUrl = imageUrl
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let imageUrl = imageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        RMImageManager.shared.dowloadImage(imageUrl, completion: completion)
    }
}
