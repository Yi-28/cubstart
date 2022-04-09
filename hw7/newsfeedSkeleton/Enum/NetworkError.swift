//
//  NetworkError.swift
//  newsfeedSkeleton
//
//  Created by Yi T ZZ on 4/8/22.
//

import Foundation

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .decodingError:
            return "Failed to decode the error from the service"
        case .errorCode(let code):
            return "\(code) - Something goes wrong"
        
        case .unknown:
            return "The error is unknown"
        }
    }
}
