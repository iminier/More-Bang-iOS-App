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
        self.title = "More Bang"
        self.view.addSubview(mainView)
        mainView.arrangeView(view: view)
        self.navigationController?.viewControllers = [self]

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.viewDidLoad()
    }
    
    func didTapEnter(mainView: MainView, itemToCompare: ItemToCompare) {
        let someView = SecondVC()
        someView.firstItem = itemToCompare
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(someView, animated: true)
    }
    
}
