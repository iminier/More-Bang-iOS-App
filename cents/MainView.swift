//
//  MainView.swift
//  cents
//
//  Created by Ivan Minier on 7/19/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit
import PinLayout

class MainView: UIView {
    
    let weightTypes: [String] = ["Lbs", "Oz", "Qty"]
    
    var priceInput: UITextField!
    var weightInput: UITextField!
    weak var weightTypeInput: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        priceInput = UITextField()
        priceInput.layer.backgroundColor = UIColor.lightGray.cgColor
        priceInput.layer.cornerRadius = 5
        priceInput.textAlignment = .center
        
        weightTypeInput = UITextField()
        weightTypeInput.layer.backgroundColor = UIColor.lightGray.cgColor
        weightTypeInput.layer.cornerRadius = 5
        weightTypeInput.textAlignment = .center
        
        weightInput = UITextField()
        weightInput.layer.backgroundColor = UIColor.lightGray.cgColor
        weightInput.layer.cornerRadius = 5
        weightInput.textAlignment = .center
        
        self.addSubview(priceInput)
        self.addSubview(weightTypeInput)
        self.addSubview(weightInput)
    }
    
    func arrangeView(view: UIView) {
        
        priceInput.size.width = 240
        priceInput.size.height = 100
        priceInput.pin.topCenter().margin(130)
        
        weightTypeInput.size.width = 80
        weightTypeInput.size.height = 100
        weightTypeInput.pin.below(of: priceInput, aligned: .right).marginTop(10)
        weightTypeInput.loadDropDownData(data: weightTypes)
        
        weightInput.size.width = 150
        weightInput.size.height = 100
        weightInput.pin.below(of: priceInput, aligned: .left).marginTop(10)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
