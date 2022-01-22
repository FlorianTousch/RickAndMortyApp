//
//  FeedLoader.swift
//  RickAndMortyApp
//
//  Created by Florian on 22/01/2022.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
