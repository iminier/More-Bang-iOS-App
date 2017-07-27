//
//  ProjectTests.swift
//  ProjectTests
//
//  Created by Ivan Minier on 7/17/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import XCTest
@testable import cents

class SplitSelfTests: XCTestCase, Comparato {
    
    var itemToSplit: ItemToCompare!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSplitReturnsFloat() {
        itemToSplit = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pound)
        let result = itemToSplit.dividePriceByWeight(item: itemToSplit)
        XCTAssertTrue(result is Float)
    }
    
}
