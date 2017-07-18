//
//  Comparato.swift
//  cents
//
//  Created by Ivan Minier on 7/11/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

protocol Comparato {
    
    func pricePerWeight(itemA: ItemToCompare, itemB: ItemToCompare) -> ItemSummary
    
}

extension Comparato {
    
    func convertToCommon(commonItem: ItemToCompare, itemB: ItemToCompare) -> ItemToCompare {
        
        var secondItem: ItemToCompare
        
        switch commonItem.weightType != itemB.weightType {
        case commonItem.weightType == .gallon:
            secondItem = itemB.weightType.convToGallon(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .quart:
            secondItem = itemB.weightType.convToQuart(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .liter:
            secondItem = itemB.weightType.convToLiter(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .pint:
            secondItem = itemB.weightType.convToPint(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .floz:
            secondItem = itemB.weightType.convToFloz(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .milliliter:
            secondItem = itemB.weightType.convToMilliliter(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .pound:
            secondItem = itemB.weightType.convToPound(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .ounce:
            secondItem = itemB.weightType.convToOunce(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .gram:
            secondItem = itemB.weightType.convToGram(itemToConvert: itemB)
            return secondItem
        case commonItem.weightType == .milligram:
            secondItem = itemB.weightType.convToMilligram(itemToConvert: itemB)
            return secondItem
        default:
            secondItem = itemB
            return secondItem
        }
        
    }
    
    func pricePerWeight(itemA: ItemToCompare, itemB: ItemToCompare) -> ItemSummary {
        
        let summary: ItemSummary
        
        if itemA.dividePriceByWeight(item: itemA) > itemB.dividePriceByWeight(item: itemB) {
            summary = ItemSummary(betterBuy: itemA, noBuy: itemB)
            return summary
        } else {
            summary = ItemSummary(betterBuy: itemB, noBuy: itemA)
            return summary
        }
        
    }
    
}


