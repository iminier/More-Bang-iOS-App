//
//  SecondView.swift
//  cents
//
//  Created by Ivan Minier on 7/21/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

protocol SecondViewDelegate {
    
    func didTapCompareButton(secondView: SecondView, itemA: ItemToCompare, itemB: ItemToCompare)
    
}

class SecondView: MainView {
    
    var secondViewDelegate: SecondViewDelegate?
    
    var firstItemToBeCompared: ItemToCompare!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    override func arrangeButtonText() {
        
        bottomButton.setTitle("Compare", for: .normal)

    }
    
    override func showSecondVC() {
        if priceInput.text != "" && weightInput.text != "" && weightTypeInput.text != "" {
            
            var priceTextVCTwo = priceInput.text
            priceTextVCTwo?.remove(at: (priceTextVCTwo?.startIndex)!)
            
            let weightTypeFromTextField: WeightTypes = getWeightTypeFromTextField()
            let itemToBePassed: ItemToCompare = ItemToCompare(itemNumber: 2, price: (priceTextVCTwo! as NSString).floatValue, weight: (weightInput.text! as NSString).floatValue, weightType: weightTypeFromTextField)
            
            secondViewDelegate?.didTapCompareButton(secondView: self, itemA: firstItemToBeCompared, itemB: itemToBePassed)
            
        } else {
            print("some error on device")
        }
    }
    
    override func setWeightTypes() {
        
        switch firstItemToBeCompared.weightType {
        case .gallon, .quart, .liter, .pint, .floz, .milliliter :
            weightTypes = [WeightTypes.gallon.rawValue,WeightTypes.quart.rawValue, WeightTypes.liter.rawValue, WeightTypes.pint.rawValue, WeightTypes.floz.rawValue, WeightTypes.milliliter.rawValue]
        case .pound, .ounce, .gram, .milligram :
            weightTypes = [WeightTypes.pound.rawValue, WeightTypes.ounce.rawValue, WeightTypes.gram.rawValue, WeightTypes.milligram.rawValue]
        case .qty :
            weightTypes = [WeightTypes.qty.rawValue]
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
