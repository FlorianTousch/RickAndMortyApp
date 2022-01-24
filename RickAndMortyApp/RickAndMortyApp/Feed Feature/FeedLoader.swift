//
//  FeedLoader.swift
//  RickAndMortyApp
//
//  Created by Florian on 22/01/2022.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    typealias Result = LoadFeedResult
    
    func load(completion: @escaping (Result) -> Void)
}
