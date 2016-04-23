//
//  Taggable.swift
//  Steadingomatic
//
//  Created by Keith Avery on 4/22/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation

protocol Taggable: class {
    var tags:Set<Tag> { get set }
    func addTag(tag:Tag) -> Void
    func deleteTag(tag:Tag) -> Void
}

extension Taggable {

    func addTag(tag:Tag) {
        tags.insert(tag)
    }

    func deleteTag(tag:Tag) {
        if let index = tags.indexOf(tag) {
            tags.removeAtIndex(index)
        }
    }
}