//
//  SummaryVC.swift
//  cents
//
//  Created by Ivan Minier on 7/22/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class SummaryVC: UIViewController {
    
    var firstScreenItem: ItemToCompare!
    var secondScreenItem: ItemToCompare!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let summaryView = SummaryView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        self.view.addSubview(summaryView)
        summaryView.summaryItemA = firstScreenItem
        summaryView.summaryItemB = secondScreenItem
        summaryView.arrangeSummaryView(view: view)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(didTapReset))

    
    }
    
    func didTapReset() {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
