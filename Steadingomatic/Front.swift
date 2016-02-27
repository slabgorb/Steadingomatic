//
//  Front.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/22/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation


class Front {
    static let nameTemplate = SubstitutionTemplate(filepaths: ["FrontWords"])
    let maxDangers:UInt32 = 4
    var dangers: [Danger] = []
    var dooms: [Doom] = []
    var stakes: [String] = []
    var grimPortents: [String] = []
    var description: String = ""
    var cast: [String] = []
    var name: String = {
        Front.nameTemplate.pick()
    }()
    init() {
        for _ in 1...arc4random_uniform(4) {
            self.dangers.append(Danger())
        }

    }
    convenience init(name:String) {
        self.init()
        self.name = name
    }
}