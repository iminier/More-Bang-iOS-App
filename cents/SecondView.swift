//
//  SecondView.swift
//  cents
//
//  Created by Ivan Minier on 7/21/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class SecondView: MainView {
    
    var itemFromFirstScreen: ItemToCompare = ItemToCompare(price: 0.00, weight: 0.00, weightType: .gallon)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    override func setWeightTypes() {
        
        switch itemFromFirstScreen.weightType {
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
