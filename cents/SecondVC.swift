//
//  SecondVC.swift
//  cents
//
//  Created by Ivan Minier on 7/21/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var firstItem: ItemToCompare = ItemToCompare(price: 0.00, weight: 0.00, weightType: .gallon)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadedView = SecondView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        self.view.addSubview(loadedView)
        loadedView.itemFromFirstScreen = firstItem
        loadedView.arrangeView(view: view)
        
    }
    
}
