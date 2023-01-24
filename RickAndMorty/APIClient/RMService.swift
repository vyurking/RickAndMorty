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
    
    /// Send RM api call
    /// params:
    ///     - request: Request instance
    ///     - type:  The type of object we expect to get back
    ///     - completion: Callback with data or error
    public func execute<T: Codable>(
        _ requiest: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
