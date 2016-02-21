//
//  SubstitutionTemplate.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/19/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation

public struct Words {
    var sets:[String: WordSet] = [:]

    init(sets:[String: WordSet]) {
        self.sets = sets
    }
    
    public mutating func add(key: String, set: WordSet) -> Void {
        self.sets[key] = set
    }
    
    public mutating func add(key: String, words: [String]) -> Void {
        self.sets[key] = WordSet(values: words)
    }
    
    public func get(key: String) -> [String] {
        if let retVal = self.sets[key]?.values {
            return retVal
        } else {
            return []
        }
    }
    
    public func pick(key: String) -> String {
        if let set = sets[key] {
            return set.pick()
        } else {
            return ""
        }
    }
}

public class WordSet {
    var values: [String]
    init(values: [String]) {
        self.values = values
    }
    public func pick() -> String {
        return self.values[Int(arc4random_uniform(UInt32(self.values.count)))]
    }
}

public struct SubstitutionTemplate {
    var patterns:[String] = []
    var words: Words = Words(sets: [:])
    
    init(filepath: String) {
        do {
            if let path = NSBundle.mainBundle().pathForResource(filepath, ofType: "json") {
                if let jsonData = NSData(contentsOfFile: path) {
                    if let jsonResult: NSDictionary = try NSJSONSerialization.JSONObjectWithData(jsonData, options:NSJSONReadingOptions.AllowFragments) as? NSDictionary
                    {
                        if let patterns = jsonResult["patterns"] as? [String] {
                            self.patterns = patterns
                        }
                        if let ws = jsonResult["words"] as? [String:[String]] {
                            for set in ws {
                                self.words.add(set.0, words: set.1)
                            }
                        } else {
                            print("WS not a dict?")
                        }
                    }
                }
            }
        } catch {
            print("Error deserializing JSON: \(error)")
        }
     }
    
    public func pick() -> String {
        return self.patterns[Int(arc4random_uniform(UInt32(self.patterns.count)))]
    }
  
}

