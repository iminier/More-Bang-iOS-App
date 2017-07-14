//
//  SplitSelf.swift
//  cents
//
//  Created by Ivan Minier on 7/13/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

protocol SplitSelf {
    
    func dividePriceByWeight(item: ItemToCompare) -> Float
    
}

extension SplitSelf {
    
    func dividePriceByWeight(item: ItemToCompare) -> Float {
        
        let itemPrice = item.price
        let itemWeight = item.weight
        
        let quotient = itemPrice / itemWeight
        
        return quotient
    }
    
}
