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
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Quart Conversion Tests
    //
    
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
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Liter Conversion Tests
    //
    
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
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Pint Conversion Tests
    //
    
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
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Floz Conversion Tests
    //
    
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
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Milliliter Conversion Tests
    //
    
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
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Pound Conversion Tests
    //
    
    func testPoundToOunceConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPoundToGramConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPoundToMgConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testPoundToPoundConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Ounce Conversion Tests
    //
    
    func testOunceToPoundConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testOunceToGramConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testOunceToMgConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testOunceToOunceConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Gram Conversion Tests
    //
    
    func testGramToPoundConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGramToOunceConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGramToMGConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testGramToGramConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Milligram Conversion Tests
    //
    
    func testMgtoPoundCnversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .pound)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMgToOunceConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMgToGramCoversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .gram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    func testMgToMgConversion() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .milligram)
        let result = convertToCommon(commonItem: firstItem, itemB: secondItem)
        XCTAssertEqual(firstItem.weightType, result.weightType)
    }
    
    //
    // Test compareItems()
    //
    
    func testReturnsItemSummary() {
        firstItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        secondItem = ItemToCompare(price: 1.00, weight: 1.00, weightType: .ounce)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertTrue(result is ItemSummary)
    }
    
    func testReturnsSecondItemAsBetterBuy() {
        firstItem = ItemToCompare(price: 2.48, weight: 9.0, weightType: .ounce)
        secondItem = ItemToCompare(price: 3.48, weight: 18.00, weightType: .ounce)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertEqual(result.betterBuy.price, secondItem.price)
    }
    
    func testReturnsFirstItemAsBetterBuy() {
        firstItem = ItemToCompare(price: 3.48, weight: 18.00, weightType: .ounce)
        secondItem = ItemToCompare(price: 2.48, weight: 9.0, weightType: .ounce)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertEqual(result.betterBuy.price, firstItem.price)
    }
    
    func testConvertAndReturnFirstItemBetterBuy() {
        firstItem = ItemToCompare(price: 2.48, weight: 9.0, weightType: .ounce)
        secondItem = ItemToCompare(price: 5.00, weight: 1.0, weightType: .pound)
        let result = compareItems(itemA: firstItem, itemB: secondItem)
        XCTAssertEqual(result.betterBuy.price, firstItem.price)
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
