//
//  FeedCacheTestHelpers.swift
//  RickAndMortyAppTests
//
//  Created by Florian on 24/01/2022.
//

import Foundation
import RickAndMortyApp

func uniqueImage() -> FeedImage {
    return FeedImage(id: 0, name: "any", status: "any", gender: "any", url: anyURL())
}

func uniqueImageFeed() -> (models: [FeedImage], local: [LocalFeedImage]) {
    let models = [uniqueImage(), uniqueImage()]
    let local = models.map { LocalFeedImage(id: $0.id, name: $0.name, status: $0.status, gender: $0.gender, image: $0.url) }
    return (models, local)
}

extension Date {
    func adding(days: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }

    func adding(seconds: TimeInterval) -> Date {
        return self + seconds
    }
}
