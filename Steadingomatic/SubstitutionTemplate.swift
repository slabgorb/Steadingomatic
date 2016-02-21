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
                        self.patterns = jsonResult["patterns"] as! [String]
                        print(jsonResult)
                        //self.words = jsonResult["words"]

                    }
                    
                }
                
            }

        } catch {
            self.patterns = []
            self.words = Words(sets: [:])
        }
     }
    
    public func pick() -> String {
        return self.patterns[Int(arc4random_uniform(UInt32(self.patterns.count)))]
    }
  
}

