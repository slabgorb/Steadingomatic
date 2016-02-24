//
//  SteadingomaticTests.swift
//  SteadingomaticTests
//
//  Created by Keith Avery on 2/19/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import XCTest
@testable import Steadingomatic

class SteadingomaticTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWordSetPick() {
        let wordSet = WordSet(values: ["apple","pear"])
        XCTAssert(["apple", "pear"].contains(wordSet.pick()))
    }
    
    func testWordPick() {
        let wordSet = WordSet(values: ["apple","pear"])
        let words = Words(sets:["nouns": wordSet])
        XCTAssert(["apple", "pear"].contains(words.pick("nouns")))
    }

    func testSubstitutionTemplate() {
        let subTemplate = SubstitutionTemplate(filepaths: ["SteadingWords"])
        XCTAssert(subTemplate.patterns.count > 1)
        XCTAssert(subTemplate.words.sets.count > 1)
    }
    
    func testCreateFront() {
        let front = Front()
        print(front.name)
        XCTAssert(front.name.characters.count > 0)
    }
    
    
}
