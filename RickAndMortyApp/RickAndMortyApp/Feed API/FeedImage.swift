//
//  FeedItem.swift
//  RickAndMortyApp
//
//  Created by Florian on 22/01/2022.
//

import Foundation

public struct FeedImage: Equatable {
    public let id: Int
    public let name: String
    public let status: String
    public let gender: String
    public let url: URL
    
    public init(id: Int, name: String, status: String, gender: String, url: URL) {
        self.id = id
        self.name = name
        self.status = status
        self.gender = gender
        self.url = url
    }
}
