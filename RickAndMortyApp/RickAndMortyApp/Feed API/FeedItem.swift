//
//  FeedItem.swift
//  RickAndMortyApp
//
//  Created by Florian on 22/01/2022.
//

import Foundation

public struct FeedItem: Equatable {
    public let id: Int
    public let name: String
    public let status: String
    public let gender: String
    public let image: URL
    
    public init(id: Int, name: String, status: String, gender: String, image: URL) {
        self.id = id
        self.name = name
        self.status = status
        self.gender = gender
        self.image = image
    }
}
