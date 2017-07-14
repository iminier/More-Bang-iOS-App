//
//  ItemToCompare.swift
//  cents
//
//  Created by Ivan Minier on 7/13/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

struct ItemToCompare: SplitSelf {
    
    var price: Float
    var weight: Float
    var weightType: WeightTypes
    
}

enum WeightTypes {
    
    case gallon // 4 quarts, 3.78541 Liters, 8 pints, 128 fluid ounces, 3785.41 Milliliter
    case quart // 0.25 gallon, 0.946353 Liters, 4 pints, 64 fluid ounces, 946.353 Milliliter
    case liter // 0.264172 gallon, 1.05669 quart, 2.11338 pint, 33.814 fluid ounce, 1000 Milliliter
    case pint // 0.125 gallon, 0.25 quart, 0.473176 Liter, 16 fluid ounces, 473.176 Milliliter
    case floz // 0.0634013 gallon, 0.03125 quart, 0.0295735 liter, 0.0625 pint, 29.5735 Milliliter
    case milliliter // 0.000264172 gallon, 0.00105699 quart, 0.001 liter, 0.00211338 pint, 0.033814
    
    case pound // 0.000453592 ton, 16 oz, 453.592 gram, 453592 milligram
    case ounce // 0 ton, 0.0625 pound, 28.3495 grams, 28349.5 milligram
    case gram // 0 ton, 0.00220462 pound, 0.035274 ounce, 1000 milligram
    case milligram // 0 ton, 0 pound, 0 ounce, 0.001 gram
    
    func convToGallon(itemToConvert: ItemToCompare) -> ItemToCompare {
        let qrtDiv: Float = 4
        let litDiv: Float = 3.78
        let pinDiv: Float = 8
        let fozDiv: Float = 128
        let milDiv: Float = 3785.41
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .quart:
            convertedItem.weight = itemToConvert.weight / qrtDiv
            convertedItem.weightType = .gallon
            return convertedItem
        case .liter:
            convertedItem.weight = itemToConvert.weight / litDiv
            convertedItem.weightType = .gallon
            return convertedItem
        case .pint:
            convertedItem.weight = itemToConvert.weight / pinDiv
            convertedItem.weightType = .gallon
            return convertedItem
        case .floz:
            convertedItem.weight = itemToConvert.weight / fozDiv
            convertedItem.weightType = .gallon
            return convertedItem
        case .milliliter:
            convertedItem.weight = itemToConvert.weight / milDiv
            convertedItem.weightType = .gallon
            return convertedItem
        default:
            return itemToConvert
        }
        
    }

    func convToQuarts(itemToConvert: ItemToCompare) -> ItemToCompare {
        let galDiv: Float = 0.25
        let litDiv: Float = 0.946353
        let pinDiv: Float = 4
        let fozDiv: Float = 64
        let milDiv: Float = 946.353
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .gallon:
            convertedItem.weight = itemToConvert.weight / galDiv
            convertedItem.weightType = .quart
            return convertedItem
        case .liter:
            convertedItem.weight = itemToConvert.weight / litDiv
            convertedItem.weightType = .quart
            return convertedItem
        case .pint:
            convertedItem.weight = itemToConvert.weight / pinDiv
            convertedItem.weightType = .quart
            return convertedItem
        case .floz:
            convertedItem.weight = itemToConvert.weight / fozDiv
            convertedItem.weightType = .quart
            return convertedItem
        case .milliliter:
            convertedItem.weight = itemToConvert.weight / milDiv
            convertedItem.weightType = .quart
            return convertedItem
        default:
            return itemToConvert
        }
        
    }
    
    func convToLiter(itemToConvert: ItemToCompare) -> ItemToCompare {
        let galDiv: Float = 0.2644172
        let qrtDiv: Float = 1.05669
        let pinDiv: Float = 2.11338
        let fozDiv: Float = 33.814
        let milDiv: Float = 1000
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .gallon:
            convertedItem.weight = itemToConvert.weight / galDiv
            convertedItem.weightType = .liter
            return convertedItem
        case .quart:
            convertedItem.weight = itemToConvert.weight / qrtDiv
            convertedItem.weightType = .liter
            return convertedItem
        case .pint:
            convertedItem.weight = itemToConvert.weight / pinDiv
            convertedItem.weightType = .liter
            return convertedItem
        case .floz:
            convertedItem.weight = itemToConvert.weight / fozDiv
            convertedItem.weightType = .liter
            return convertedItem
        case .milliliter:
            convertedItem.weight = itemToConvert.weight / milDiv
            convertedItem.weightType = .liter
            return convertedItem
        default:
            return itemToConvert
        }
        
    }
    
    func convToPint(itemToConvert: ItemToCompare) -> ItemToCompare {
        let galDiv: Float = 0.125
        let qrtDiv: Float = 1.05669
        let litDiv: Float = 0.473176
        let fozDiv: Float = 16
        let milDiv: Float = 473.176
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .gallon:
            convertedItem.weight = itemToConvert.weight / galDiv
            convertedItem.weightType = .pint
            return convertedItem
        case .quart:
            convertedItem.weight = itemToConvert.weight / qrtDiv
            convertedItem.weightType = .pint
            return convertedItem
        case .liter:
            convertedItem.weight = itemToConvert.weight / litDiv
            convertedItem.weightType = .pint
            return convertedItem
        case .floz:
            convertedItem.weight = itemToConvert.weight / fozDiv
            convertedItem.weightType = .pint
            return convertedItem
        case .milliliter:
            convertedItem.weight = itemToConvert.weight / milDiv
            convertedItem.weightType = .pint
            return convertedItem
        default:
            return itemToConvert
        }
        
    }
    
    func convToFloz(itemToConvert: ItemToCompare) -> ItemToCompare {
        let galDiv: Float = 0.0634013
        let qrtDiv: Float = 0.03125
        let litDiv: Float = 0.0295735
        let pinDiv: Float = 0.0625
        let milDiv: Float = 29.5735
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .gallon:
            convertedItem.weight = itemToConvert.weight / galDiv
            convertedItem.weightType = .floz
            return convertedItem
        case .quart:
            convertedItem.weight = itemToConvert.weight / qrtDiv
            convertedItem.weightType = .floz
            return convertedItem
        case .liter:
            convertedItem.weight = itemToConvert.weight / litDiv
            convertedItem.weightType = .floz
            return convertedItem
        case .pint:
            convertedItem.weight = itemToConvert.weight / pinDiv
            convertedItem.weightType = .floz
            return convertedItem
        case .milliliter:
            convertedItem.weight = itemToConvert.weight / milDiv
            convertedItem.weightType = .floz
            return convertedItem
        default:
            return itemToConvert
        }
        
    }
    
    func convToMilliliter(itemToConvert: ItemToCompare) -> ItemToCompare {
        let galDiv: Float = 0.000264172
        let qrtDiv: Float = 0.00105699
        let litDiv: Float = 0.001
        let pinDiv: Float = 0.00211338
        let fozDiv: Float = 0.033814
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .gallon:
            convertedItem.weight = itemToConvert.weight / galDiv
            convertedItem.weightType = .milliliter
            return convertedItem
        case .quart:
            convertedItem.weight = itemToConvert.weight / qrtDiv
            convertedItem.weightType = .milliliter
            return convertedItem
        case .liter:
            convertedItem.weight = itemToConvert.weight / litDiv
            convertedItem.weightType = .milliliter
            return convertedItem
        case .pint:
            convertedItem.weight = itemToConvert.weight / pinDiv
            convertedItem.weightType = .milliliter
            return convertedItem
        case .floz:
            convertedItem.weight = itemToConvert.weight / fozDiv
            convertedItem.weightType = .milliliter
            return convertedItem
        default:
            return itemToConvert
        }
    }
    
}

