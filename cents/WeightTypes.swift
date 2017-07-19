//
//  WeightTypes.swift
//  cents
//
//  Created by Ivan Minier on 7/19/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

enum WeightTypes {
    
    case gallon
    case quart
    case liter
    case pint
    case floz
    case milliliter
    
    case pound
    case ounce
    case gram
    case milligram
    
    case qty
    
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
    
    func convToQuart(itemToConvert: ItemToCompare) -> ItemToCompare {
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
            return convertedItem
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
    
    func convToPound(itemToConvert: ItemToCompare) -> ItemToCompare {
        let ozDiv: Float = 16
        let grmDiv: Float = 453.592
        let mgDiv: Float = 453592
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .ounce:
            convertedItem.weight = itemToConvert.weight / ozDiv
            convertedItem.weightType = .pound
            return convertedItem
        case .gram:
            convertedItem.weight = itemToConvert.weight / grmDiv
            convertedItem.weightType = .pound
            return convertedItem
        case .milligram:
            convertedItem.weight = itemToConvert.weight / mgDiv
            convertedItem.weightType = .pound
            return convertedItem
        default:
            return itemToConvert
        }
    }
    
    func convToOunce(itemToConvert: ItemToCompare) -> ItemToCompare {
        let pndDiv: Float = 0.0625
        let grmDiv: Float = 28.3495
        let mgDiv: Float = 28349.5
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .pound:
            convertedItem.weight = itemToConvert.weight / pndDiv
            convertedItem.weightType = .ounce
            return convertedItem
        case .gram:
            convertedItem.weight = itemToConvert.weight / grmDiv
            convertedItem.weightType = .ounce
            return convertedItem
        case .milligram:
            convertedItem.weight = itemToConvert.weight / mgDiv
            convertedItem.weightType = .ounce
            return convertedItem
        default:
            return itemToConvert
        }
    }
    
    func convToGram(itemToConvert: ItemToCompare) -> ItemToCompare {
        let pndDiv: Float = 0.00220462
        let ozDiv: Float = 0.035274
        let mgDiv: Float = 1000
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .pound:
            convertedItem.weight = itemToConvert.weight / pndDiv
            convertedItem.weightType = .gram
            return convertedItem
        case .ounce:
            convertedItem.weight = itemToConvert.weight / ozDiv
            convertedItem.weightType = .gram
            return convertedItem
        case .milligram:
            convertedItem.weight = itemToConvert.weight / mgDiv
            convertedItem.weightType = .gram
            return convertedItem
        default:
            return itemToConvert
        }
    }
    
    func convToMilligram(itemToConvert: ItemToCompare) -> ItemToCompare {
        let pndDiv: Float = 2.2046E-6
        let ozDiv: Float = 3.5274e-5
        let grmDiv: Float = 0.001
        
        var convertedItem: ItemToCompare = itemToConvert
        
        switch itemToConvert.weightType {
        case .pound:
            convertedItem.weight = itemToConvert.weight / pndDiv
            convertedItem.weightType = .milligram
            return convertedItem
        case .ounce:
            convertedItem.weight = itemToConvert.weight / ozDiv
            convertedItem.weightType = .milligram
            return convertedItem
        case .gram:
            convertedItem.weight = itemToConvert.weight / grmDiv
            convertedItem.weightType = .milligram
            return convertedItem
        default:
            return itemToConvert
        }
    }
    
}
