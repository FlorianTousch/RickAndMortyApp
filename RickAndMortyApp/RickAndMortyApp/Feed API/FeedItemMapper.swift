//
//  FeedItemMapper.swift
//  RickAndMortyApp
//
//  Created by Florian on 22/01/2022.
//

import Foundation

internal final class FeedItemsMapper {
    private struct Root: Decodable {
        let results: [Item]

        var feed: [FeedItem] {
            return results.map { $0.item }
        }
    }

    private struct Item: Decodable {
        let id: Int
        let name: String
        let status: String
        let gender: String
        let image: URL

        var item: FeedItem {
            return FeedItem(id: id, name: name, status: status, gender: gender, image: image)
        }
    }

    private static var OK_200: Int { return 200 }

    internal static func map(_ data: Data, from response: HTTPURLResponse) -> RemoteFeedLoader.Result {
        guard response.statusCode == OK_200,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
            return .failure(RemoteFeedLoader.Error.invalidData)
        }

        return .success(root.feed)
    }
}
