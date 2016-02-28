//
//  Steading.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/19/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation
import UIKit

protocol Describable {
    func toString() -> String
    func description() -> String
}


struct Steading {
    // MARK: Size
    
    enum Size:UInt32, Describable {
        case Village
        case Town
        case City
        case Keep
        func toString() -> String {
            switch self {
            case .Village: return "Village"
            case .Town: return "Town"
            case .City: return "City"
            case .Keep: return "Keep"
            }
        }
        func description() -> String {
            switch self {
            case .Village: return "A village"
            case .Town: return "A town"
            case .City: return "A city"
            case .Keep: return "A keep"
            }
        }
        
        static func values() -> [Size] {
            var vals:[Size] = []
            // find the maximum enum value
            var maxValue: UInt32 = 0
            while let size = Size(rawValue: ++maxValue) {
                vals.append(size)
            }
            return vals
        }
        
    }
    
    // MARK: Population
    
    enum Population:UInt32, Describable {
        case Lower
        case Exodus
        case Shrinking
        case Steady
        case Growing
        case Booming
        case Raise
        func toString() -> String {
            switch self {
            case .Lower: return "Ghost Town"
            case .Exodus: return "Exodus"
            case .Shrinking: return "Shrinking"
            case .Steady: return "Steady"
            case .Growing: return "Growing"
            case .Booming: return "Booming"
            case .Raise: return "Raise"
            }
        }
        
        mutating func up() -> Void  {
            switch self {
            case .Lower: self = .Exodus
            case .Exodus: self = .Shrinking
            case .Shrinking: self = .Steady
            case .Steady: self = .Growing
            case .Growing: self = .Booming
            case .Booming: self = .Raise
            case .Raise: self = .Raise
            }
        }
        
        func description() -> String {
            switch self {
            case .Lower: return "The steading will decrease its size"
            case .Exodus: return "The steading has lost its population and is on the verge of collapse."
            case .Shrinking: return "The population is less than it once was. Buildings stand empty."
            case .Steady: return "The population is in line with the current size of the steading. Some slow growth."
            case .Growing: return "More people than there are buildings."
            case .Booming: return "Resources are stretched thin trying to keep up with the number of people."
            case .Raise: return "This steading will increase its size."
            }
        }
        private static let _count: Population.RawValue = {
            // find the maximum enum value
            var maxValue: UInt32 = 0
            while let _ = Population(rawValue: ++maxValue) { }
            return maxValue
        }()
        static func random() -> Population {
            // pick and return a new value
            let rand = arc4random_uniform(_count)
            return Population(rawValue: rand)!
        }
    }
    
    // MARK: Prosperity
    
    enum Prosperity:UInt32 {
        case Dirt
        case Poor
        case Moderate
        case Wealthy
        case Rich
        func toString() -> String {
            switch self {
            case .Dirt: return "Dirt"
            case .Poor: return "Poor"
            case .Moderate: return "Moderate"
            case .Wealthy: return "Wealthy"
            case .Rich: return "Rich"
            }
        }
        func descibe() -> String {
            switch self {
            case .Dirt: return "Nothing for sale, nobody has more than they need (and they're lucky if they have that). Unskilled labor is cheap."
            case .Poor: return "Only the bare necessities for sale. Weapons are scarce unless the steading is heavily defended or militant. Unskilled labor is readily available."
            case .Moderate: return "Most mundane items are available. Some types of skilled laborers."
            case .Wealthy: return "Any mundane item can be found for sale. Most kinds of skilled laborers are available, but demand is high for their time."
            case .Rich: return "Mundane items and more, if you know where to find them. Specialist labor available, but at high prices."
            }
        }
        private static let _count: Prosperity.RawValue = {
            // find the maximum enum value
            var maxValue: UInt32 = 0
            while let _ = Prosperity(rawValue: ++maxValue) { }
            return maxValue
        }()
        static func random() -> Prosperity {
            // pick and return a new value
            let rand = arc4random_uniform(_count)
            return Prosperity(rawValue: rand)!
        }
    }
    
    // MARK: Defenses
    
    enum Defenses: UInt32 {
        case None
        case Militia
        case Watch
        case Guard
        case Garrison
        case Battalion
        case Legion
        func toString() -> String {
            switch self {
            case .None: return "None"
            case .Militia: return "Militia"
            case .Watch: return "Watch"
            case .Guard: return "Guard"
            case .Garrison: return "Garrison"
            case .Battalion: return "Battalion"
            case .Legion: return "Legion"
            }
        }
        
        private static let _count: Defenses.RawValue = {
            // find the maximum enum value
            var maxValue: UInt32 = 0
            while let _ = Defenses(rawValue: ++maxValue) { }
            return maxValue
        }()
        static func random() -> Defenses {
            // pick and return a new value
            let rand = arc4random_uniform(_count)
            return Defenses(rawValue: rand)!
        }
    }
    
    // MARK: Properties
    
    static let nameTemplate = SubstitutionTemplate(filepaths: ["SteadingWords"])
    
    var name: String = {
        Steading.nameTemplate.pick()
    }()
    var size: Size
    var population: Population = .Steady
    var defenses: Defenses = .Militia
    var prosperity: Prosperity = .Moderate
    var icon: Icon = {
        Icon.pick()
    }()
    
    // MARK: Static Methods
    
    static func sizes() -> [Size] {
        return Size.values()
    }
    
    // MARK: Methods
    func defaults() -> (Prosperity, Population, Defenses) {
        switch self.size {
        case .Village:
            return (.Poor, .Steady, .Militia)
        case .Town:
            return (.Moderate, .Steady, .Watch)
        case .Keep:
            return (.Poor, .Shrinking, .Guard)
        case .City:
            return (.Moderate, .Steady, .Guard)
        }
    }
    
    init(size:Size) {
        self.size = size
        (self.prosperity, self.population, self.defenses) = defaults()
    }
    init(size:Size, name: String) {
        self.init(size:size)
        self.name = name
    }
}