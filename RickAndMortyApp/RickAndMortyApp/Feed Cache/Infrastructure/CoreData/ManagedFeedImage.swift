//
//  ManagedFeedImage.swift
//  RickAndMortyApp
//
//  Created by Florian on 24/01/2022.
//

import CoreData

@objc(ManagedFeedImage)
internal class ManagedFeedImage: NSManagedObject {
    @NSManaged internal var id: Int
    @NSManaged internal var name: String
    @NSManaged internal var status: String
    @NSManaged internal var gender: String
    @NSManaged internal var url: URL
    @NSManaged internal var cache: ManagedCache
}

extension ManagedFeedImage {
    internal static func images(from localFeed: [LocalFeedImage], in context: NSManagedObjectContext) -> NSOrderedSet {
        return NSOrderedSet(array: localFeed.map { local in
            let managed = ManagedFeedImage(context: context)
            managed.id = local.id
            managed.name = local.name
            managed.status = local.status
            managed.gender = local.gender
            managed.url = local.image
            return managed
        })
    }

    internal var local: LocalFeedImage {
        return LocalFeedImage(id: id, name: name, status: status, gender: gender, image: url)
    }
}
