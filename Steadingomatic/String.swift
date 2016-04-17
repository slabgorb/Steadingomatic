//
//  String.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/21/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation
extension String {
    func removeAll(characters: [Character]) -> String {
        return String(self.characters.filter({ !characters.contains($0) }))
    }
    
    func removeAll(subStrings: [String]) -> String {
        var resultString = self
        _ = subStrings.map { resultString = resultString.stringByReplacingOccurrencesOfString($0, withString: "") }
        return resultString
    }
}