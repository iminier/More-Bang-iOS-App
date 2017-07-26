//
//  SecondVC.swift
//  cents
//
//  Created by Ivan Minier on 7/21/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, SecondViewDelegate {
    
    var firstItem: ItemToCompare!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadedView = SecondView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        loadedView.secondViewDelegate = self
        self.view.addSubview(loadedView)
        loadedView.firstItemToBeCompared = firstItem
        loadedView.arrangeView(view: view)
        
        // Reset button needs to load rootvc with no data in text fields.
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(resetApp))

    }
    
    func didTapCompareButton(secondView: SecondView, itemA: ItemToCompare, itemB: ItemToCompare) {
        let summaryView = SummaryVC()
        summaryView.firstScreenItem = itemA
        summaryView.secondScreenItem = itemB
        
        
        self.navigationController?.pushViewController(summaryView, animated: true)
    }
    
    func resetApp() {
        firstItem = ItemToCompare(itemNumber: 1, price: 0, weight: 0, weightType: .gallon)
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
}
