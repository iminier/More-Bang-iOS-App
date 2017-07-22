//
//  SummaryVC.swift
//  cents
//
//  Created by Ivan Minier on 7/22/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class SummaryView: UIViewController {
    
    var firstItem: ItemToCompare = ItemToCompare(price: 0.00, weight: 0.00, weightType: .gallon)
    var secondItem: ItemToCompare = ItemToCompare(price: 0.00, weight: 0.00, weightType: .gallon)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
