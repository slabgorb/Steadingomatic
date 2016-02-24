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
    static let shortCutoff = 8

    init(sets:[String: WordSet]) {
        self.sets = sets
    }
    
    public mutating func add(key: String, set: WordSet) -> Void {
        self.sets[key] = set
        self.sets["short_\(key)"] = WordSet(values: set.values.filter({$0.characters.count < Words.shortCutoff}))
        self.sets["plural_\(key)"] = WordSet(values: set.values.map({$0.pluralize()}))
    }
    
    public mutating func add(key: String, words: [String]) -> Void {
        self.add(key, set: WordSet(values: words))

    }

    public func get(key: String) -> [String] {
        if let retVal = self.sets[key]?.values {
            return retVal
        } else {
            return []
        }
    }
    
    public func keys() -> [String] {
        return self.sets.map({$0.0})
    }
    
    public func pick(key: String) -> String {
        let cleanedKey = key.removeAll(["<",">"])
        if let set = self.sets[cleanedKey] {
            return set.pick()
        } else {
            return "NOT FOUND"
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
    
    mutating func read(filepath: String) {
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
    
    init(filepaths: [String]) {
        read("BaseWords")
        for filepath in filepaths {
            read(filepath)
        }
    }
    
    enum ParserStates: Int {
        case NotInToken
        case InToken
    }
    public func pick() -> String {
        let pattern = self.patterns[Int(arc4random_uniform(UInt32(self.patterns.count)))]
        var result: String = ""
        var state:ParserStates = .NotInToken
        var i = pattern.startIndex
        let end = pattern.endIndex
        var tokenBuffer: String = ""
        while i < end {
            let c = pattern[i]
            switch state {
            case .NotInToken:
                if c == "<" {
                    state = .InToken
                    tokenBuffer = "" + String(c)
                } else if c == "|" {
                    result = result + ""
                    
                } else if c == " " {
                    result = result + " "
                }
            case .InToken:
                tokenBuffer = tokenBuffer + String(c)
                if c == ">" {
                    result = result + self.words.pick(tokenBuffer)
                    state = .NotInToken
                }
                
            }
            i = i.successor()
        }
    
        return result.capitalizedString

    }
    
    
    
}

