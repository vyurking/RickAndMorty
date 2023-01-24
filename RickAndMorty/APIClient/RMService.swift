//
//  RMService.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import Foundation

/// Primary API service object to get RM
final class RMService {
    ///Shred singleton instance
    static let shared = RMService()
    
    ///Contructor
    private init() {
        
    }
    
    enum RMServiceError: Error {
        case failtedToCreateRequest
        case failedToGetData
    }
    
    /// Send RM api call
    /// params:
    ///     - request: Request instance
    ///     - type:  The type of object we expect to get back
    ///     - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failtedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            //decode response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
        
    }
    
    //MARK: - Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil}
        
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
}
