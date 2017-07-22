//
//  SummaryView.swift
//  cents
//
//  Created by Ivan Minier on 7/22/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class SummaryView: MainView {
    
    var sumarryItemA: ItemToCompare = ItemToCompare(price: 0.00, weight: 0.00, weightType: .gallon)
    var summaryItemB: ItemToCompare = ItemToCompare(price: 0.00, weight: 0.00, weightType: .gallon)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    override func arrangeView(view: UIView) {
        //
        
        print(sumarryItemA)
        print(summaryItemB)
    }


    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
