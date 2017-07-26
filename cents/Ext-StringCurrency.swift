//
//  Ext-StringCurrency.swift
//  cents
//
//  Created by Ivan Minier on 7/24/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import Foundation

extension String {
    
    // Format text for Curreny text field
    
    func currencyInputFormat() -> String {
        
        let formatter = NumberFormatter()
        
        var number: NSNumber!
        
        var amountWith = self
        
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        
        let regEx = try! NSRegularExpression(pattern: "[^0-9]", options: .caseInsensitive)
        
        amountWith = regEx.stringByReplacingMatches(in: amountWith, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.characters.count), withTemplate: "")
        
        let double = (amountWith as NSString).doubleValue
        
        number = NSNumber(value: (double/100))
        
        // if first number is 0 or all numbers are deleted
        
        guard number != 0 as NSNumber else {
            return ""
        }
        
        return formatter.string(from: number)!
    }
    
}
