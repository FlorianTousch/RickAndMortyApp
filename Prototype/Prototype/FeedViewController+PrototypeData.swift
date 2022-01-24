//
//  FeedViewController+PrototypeData.swift
//  Prototype
//
//  Created by Florian on 24/01/2022.
//

import Foundation

extension FeedImageViewModel {
    static var prototypeFeed: [FeedImageViewModel] {
        return [
            FeedImageViewModel(
                name: "Rick Sanchez",
                status: "Alive",
                gender: "Male",
                imageName: "rick-sanchez"),
            FeedImageViewModel(
                name: "Morty Smith",
                status: "Alive",
                gender: "Male",
                imageName: "morty-smith"),
            FeedImageViewModel(
                name: "Summer Smith",
                status: "Alive",
                gender: "Female",
                imageName: "summer-smith"),
            FeedImageViewModel(
                name: "Alexander",
                status: "Dead",
                gender: "Male",
                imageName: "alexander")

        ]
    }
}


