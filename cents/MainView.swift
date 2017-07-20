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
    
    var titleLabel: UILabel!
    
    var priceInput: UITextField!
    var weightInput: UITextField!
    weak var weightTypeInput: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        titleLabel = UILabel()
        titleLabel.text = "Better Buy"
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.black
        
        weightTypeInput = UITextField()
        
        self.addSubview(titleLabel)
        self.addSubview(weightTypeInput)
    }
    
    func arrangeView(view: UIView) {
        titleLabel.size.width = view.width * 0.80
        titleLabel.size.height = 100
        titleLabel.pin.topCenter().margin(40)
        
        weightTypeInput.size.width = 40
        weightTypeInput.size.height = 100
        weightTypeInput.pin.below(of: titleLabel, aligned: .center)
        weightTypeInput.loadDropDownData(data: weightTypes)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
