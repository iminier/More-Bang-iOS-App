//
//  testingFile.swift
//  cents
//
//  Created by Ivan Minier on 7/14/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import XCTest
@testable import cents

class ComparatoTests: XCTestCase, Comparato {
    
    var firstItem: ItemToCompare!
    var secondItem: ItemToCompare!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // Gallon Conversion Tests
    
    func testGallonToQuartConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToLiterConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToPintConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToFlozConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToMLConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToGallonConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertNotEqual(secondItem.weightType, result.weightType)
    }
    
    // Quart Conversion Tests
    
    func testQuartToGallonConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToLiterConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToPintConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }

    func testQuartToFlozConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToMLConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToQuartConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertNotEqual(secondItem.weightType, result.weightType)
    }
    
    // Liter Conversion Tests
    
    func testLiterToGallonConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToQuartConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToPintConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToFlozConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToMLConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToLiterConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertNotEqual(secondItem.weightType, result.weightType)
    }
    
    // Pint Conversion Tests
    
    func testPintToGallonConverstion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToQuartConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToLiterConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToFlozConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToMilliliterConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToPintConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertNotEqual(secondItem.weightType, result.weightType)
    }
    
    // Floz Conversion Tests
    
    func testFloztoGallonConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToQuartConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToLiterConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToPintConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToMLConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToFlozConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertNotEqual(secondItem.weightType, result.weightType)
    }
    
    // Milliliter Conversion Tests
    
    func testMLToGallonConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToQuartConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToLiterConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToPintConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToFlozConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToMLConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertNotEqual(secondItem.weightType, result.weightType)
    }
    
}
