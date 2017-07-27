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
    
    //
    // Gallon Conversion Tests
    //
    
    func testGallonToQuartConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToLiterConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToPintConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToFlozConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToMLConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGallonToGallonConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gallon)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Quart Conversion Tests
    //
    
    func testQuartToGallonConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToLiterConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToPintConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }

    func testQuartToFlozConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToMLConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testQuartToQuartConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .quart)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Liter Conversion Tests
    //
    
    func testLiterToGallonConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToQuartConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToPintConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToFlozConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToMLConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testLiterToLiterConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .liter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Pint Conversion Tests
    //
    
    func testPintToGallonConverstion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToQuartConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToLiterConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToFlozConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToMilliliterConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPintToPintConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pint)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Floz Conversion Tests
    //
    
    func testFloztoGallonConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToQuartConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToLiterConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToPintConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToMLConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testFlozToFlozConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .floz)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Milliliter Conversion Tests
    //
    
    func testMLToGallonConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gallon)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToQuartConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .quart)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToLiterConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .liter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToPintConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pint)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToFlozConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .floz)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMLToMLConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milliliter)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milliliter)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Pound Conversion Tests
    //
    
    func testPoundToOunceConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPoundToGramConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPoundToMgConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPoundToPoundConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Ounce Conversion Tests
    //
    
    func testOunceToPoundConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testOunceToGramConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testOunceToMgConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testOunceToOunceConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Gram Conversion Tests
    //
    
    func testGramToPoundConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGramToOunceConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGramToMGConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGramToGramConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Milligram Conversion Tests
    //
    
    func testMgtoPoundCnversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMgToOunceConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMgToGramCoversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMgToMgConversion() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Test compareItems()
    //
    
    func testReturnsItemSummary() {
        firstItem = ItemToCompare(itemNumber: 1, price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 1.00, weight: 1.00, weightType: .ounce)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertTrue(result is ItemSummary)
    }
    
    func testReturnsSecondItemAsBetterBuy() {
        firstItem = ItemToCompare(itemNumber: 1, price: 2.48, weight: 9.0, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 3.48, weight: 18.00, weightType: .ounce)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertEqual(result.betterBuy.price, secondItem.price)
    }
    
    func testReturnsFirstItemAsBetterBuy() {
        firstItem = ItemToCompare(itemNumber: 1, price: 3.48, weight: 18.00, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 2.48, weight: 9.0, weightType: .ounce)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertEqual(result.betterBuy.price, firstItem.price)
    }
    
    func testConvertAndReturnFirstItemBetterBuy() {
        firstItem = ItemToCompare(itemNumber: 1, price: 2.48, weight: 9.0, weightType: .ounce)
        secondItem = ItemToCompare(itemNumber: 2, price: 5.00, weight: 1.0, weightType: .pound)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertEqual(result.betterBuy.price, firstItem.price)
    }
    
    func testConverAndReturnSecondItemBetterBuy() {
        firstItem = ItemToCompare(itemNumber: 1, price: 5.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(itemNumber: 2, price: 2.48, weight: 9.0, weightType: .ounce)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertEqual(result.betterBuy.price, secondItem.price)
    }
    
}


/* 
 Cereal
 9 oz 2.48 vs 18 oz 3.48 vs 24 oz 4.24
 
 Nuts
 8 oz 3.98 vs 15 oz 7.48
 
 Raisins
 9 oz 2.98 vs 12 oz 3.88
 
 
 Milk
 64 fl oz 2.98 vs 96 fl oz 4.98
 
 Wine
 750 ml 19.98 vs 1 liter 25.48
 
 Shampoo
 24 fl oz 2.98 vs 1 liter (33.8 oz) 4.68
 
 Body Wash
 22 fl oz 4.48 vs 26 fl oz 5.98
 
 You can also add a comparison for quantity of items.
 
 24 items vs 32 items
 3.98 vs 5.24
 
 6 eggs 1.48 vs 12 eggs 2.95
 
 Also, show the comparison with 4 digits after the decimal. Sometimes the comparison are so close it has to show more digits after the decimal.
 
 ex: 0.02 vs 0.02 or 0.0235 vs .0215
*/
