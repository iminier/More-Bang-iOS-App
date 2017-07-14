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
    
    func convertToCommon(itemA: ItemToCompare, itemB: ItemToCompare) {
        
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


