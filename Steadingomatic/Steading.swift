//
//  Steading.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/19/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation
import UIKit

enum Population:Int {
    case Exodus
    case Shrinking
    case Steady
    case Growing
    case Booming
    func toString() -> String {
        switch self {
        case .Exodus: return "Exodus"
        case .Shrinking: return "Shrinking"
        case .Steady: return "Steady"
        case .Growing: return "Growing"
        case .Booming: return "Booming"
        }
    }
}

enum Prosperity:Int {
    case Dirt
    case Poor
    case Moderate
    case Wealthy
    case Rich
}

enum Defenses: Int {
    case None
    case Militia
    case Watch
    case Guard
    case Garrison
    case Battalion
    case Legion
}

struct Steading {
    var name: String?
    var population: Population
    lazy var name_template = SubstitutionTemplate(filepath: "SteadingWords")
    
    
    init(name: String?, population: Population ) {
        self.name = name
        self.population = population
       
    }
}