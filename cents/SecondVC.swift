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
        
    }
    
    func didTapCompareButton(secondView: SecondView, itemA: ItemToCompare, itemB: ItemToCompare) {
        let summaryView = SummaryVC()
        summaryView.firstScreenItem = itemA
        summaryView.secondScreenItem = itemB
        
        self.navigationController?.pushViewController(summaryView, animated: true)
    }
    
}
