//
//  PropertyListReadable.swift
//  Steadingomatic
//
//  Created by Keith Avery on 4/22/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation
protocol PropertyListReadable {
    func propertyListRepresentation() -> NSDictionary
    init?(propertyListRepresentation: NSDictionary?)
}

extension PropertyListReadable {
    func extractValuesFromPropertyListArray<T:PropertyListReadable>(propertyListArray:[AnyObject]?) -> [T] {
        guard let encodedArray = propertyListArray else {return []}
        return encodedArray.map{$0 as? NSDictionary}.flatMap{T(propertyListRepresentation:$0)}
    }

}