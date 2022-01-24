//
//  RemoteFeedItem.swift
//  RickAndMortyApp
//
//  Created by Florian on 24/01/2022.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: Int
    internal let name: String
    internal let status: String
    internal let gender: String
    internal let image: URL
}
