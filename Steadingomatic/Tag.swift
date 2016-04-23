//
//  Tag.swift
//  Steadingomatic
//
//  Created by Keith Avery on 4/22/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation

func ==(tagA:Tag, tagB:Tag) -> Bool {
    return tagA.hashValue == tagB.hashValue
}

struct Tag: Hashable, Equatable, PropertyListReadable {
    static var counter: Int = 0
    var key: String
    var value: String
    var description: String

    var hashValue: Int  {
        get {
            return key.hashValue
        }
    }

    init(key:String, value:String = "", description:String = "") {
        self.key = key
        self.value = value
        self.description = description
    }

    func propertyListRepresentation() -> NSDictionary {
        return ["key": self.key, "value": self.value, "description":self.description]
    }

    init?(propertyListRepresentation: NSDictionary?) {
        guard let values = propertyListRepresentation else {return nil}
        if let key = values["key"] as? String, value = values["value"] as? String, description = values["description"] as? String {
            self.key = key
            self.value = value
            self.description = description
        } else {
            return nil
        }
    }
}

