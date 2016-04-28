//
//  ComicRecord.swift
//  xComic
//
//  Created by Kun Wang on 4/27/16.
//  Copyright © 2016 Kun Wang. All rights reserved.
//

import Foundation
import CoreData

@objc(ComicRecord)
class ComicRecord: NSManagedObject {
    var images: [String]? {
        get {
            return images_ as? [String]
        }
    }

    convenience init(context: NSManagedObjectContext, title: String, thumbnail: String, path: String, images: [String]) {
        let entity = NSEntityDescription.entityForName("ComicRecord", inManagedObjectContext: context)!
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        self.title = title
        self.thumbnail = thumbnail
        self.path = path
        self.images_ = images
        self.cur = 0
    }
}
