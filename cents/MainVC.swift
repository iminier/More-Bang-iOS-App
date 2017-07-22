//
//  MainVC.swift
//  cents
//
//  Created by Ivan Minier on 7/11/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class MainVC: UIViewController, MainViewDelegate {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainView = MainView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        mainView.delegate = self
        self.view.addSubview(mainView)
        mainView.arrangeView(view: view)
        
    }
    
    func didTapEnter(mainView: MainView, itemToCompare: ItemToCompare) {
        let someView = SecondVC()
        someView.firstItem = itemToCompare
        self.navigationController?.pushViewController(someView, animated: true)
    }
    
}
