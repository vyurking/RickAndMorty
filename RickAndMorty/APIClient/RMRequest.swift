//
//  RmRequest.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import Foundation

///Object for api call
final class RMRequest {
    
    /// API const
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: [String]
    
    /// Query args for API, if any
    private let queryParameters: [URLQueryItem]
    
    
    //Constructed URL
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argsString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argsString
        }
        
        return string
    }
    
    /// Completeda and constrct API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    
    /// - Params:
    ///     - endpoint: target endpoint
    ///     - pathComponents: collection of path components
    ///     - queryParameters:  collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
