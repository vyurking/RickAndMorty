//
//  RMImageManager.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 25.01.2023.
//

import Foundation

final class RMImageManager {
    static let shared = RMImageManager()
    
    private var imageDataCache = NSCache<NSString, NSData>()
    
    private init() {
        
    }
    
    ///Get image content with url
    /// - Params
    ///     - url: Source url
    ///     - completion: Callback
    public func dowloadImage(_ url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let key = url.absoluteString as NSString
        if let data = imageDataCache.object(forKey: key) {
            completion(.success(data as Data))
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            
            let value = data as NSData
            self?.imageDataCache.setObject(value, forKey: key)
            completion(.success(data))
        }
        task.resume()
    }
}
