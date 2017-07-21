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
    
    let keyboardType: UIKeyboardType = UIKeyboardType.decimalPad
    
    var weightTypes: [String]!
    
    var priceInput: UITextField!
    var weightInput: UITextField!
    var weightTypeInput: UITextField!
    
    var bottomButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        weightTypes = []
        
        priceInput = UITextField()
        priceInput.layer.backgroundColor = UIColor.lightGray.cgColor
        priceInput.layer.cornerRadius = 5
        priceInput.textAlignment = .center
        priceInput.keyboardType = keyboardType
        
        weightTypeInput = UITextField()
        weightTypeInput.layer.backgroundColor = UIColor.lightGray.cgColor
        weightTypeInput.layer.cornerRadius = 5
        weightTypeInput.textAlignment = .center
        
        weightInput = UITextField()
        weightInput.layer.backgroundColor = UIColor.lightGray.cgColor
        weightInput.layer.cornerRadius = 5
        weightInput.textAlignment = .center
        weightInput.keyboardType = keyboardType
        
        bottomButton = UIButton()
        bottomButton.layer.backgroundColor = UIColor.darkGray.cgColor
        bottomButton.layer.borderColor = UIColor.lightGray.cgColor
        bottomButton.layer.borderWidth = 2
        bottomButton.layer.cornerRadius = 5
        bottomButton.layer.shadowOpacity = 0.5
        bottomButton.titleLabel?.textAlignment = .center
    
        self.addSubview(priceInput)
        self.addSubview(weightTypeInput)
        self.addSubview(weightInput)
        self.addSubview(bottomButton)
    }
    
    func arrangeTextFields(view: UIView) {
        
        priceInput.size.width = 240
        priceInput.size.height = 100
        priceInput.pin.topCenter().margin(130)
        
        weightInput.size.width = 150
        weightInput.size.height = 100
        weightInput.pin.below(of: priceInput, aligned: .left).marginTop(10)
        
        weightTypeInput.size.width = 80
        weightTypeInput.size.height = 100
        weightTypeInput.pin.below(of: priceInput, aligned: .right).marginTop(10)
        
    }
    
    func arrangeButton() {
        
        bottomButton.setTitle("Enter", for: .normal)
        bottomButton.setTitleShadowColor(UIColor.black, for: .normal)
        bottomButton.setTitleShadowColor(UIColor.clear, for: .highlighted)
        bottomButton.size = CGSize(width: 280, height: 80)
        bottomButton.pin.below(of: priceInput, aligned: .center).margin(140)
    }
    
    func setWeightTypes() {
        weightTypes = [WeightTypes.gallon.rawValue, WeightTypes.floz.rawValue, WeightTypes.milligram.rawValue, WeightTypes.qty.rawValue]
    }
    
    func addDropDownTypes(view: UIView) {
        
        setWeightTypes()
        weightTypeInput.loadDropDownData(data: weightTypes)
        
    }
    
    func arrangeView(view: UIView) {
        
        arrangeTextFields(view: view)
        arrangeButton()
        addDropDownTypes(view: view)
        
    }
    
    func showSecondVC(itemToCompare: ItemToCompare) {
        if priceInput.text != nil, weightInput != nil, weightTypeInput != nil {
            
            var weightTypeFromTextField: WeightTypes!
            
            switch weightTypeInput {
            case <#pattern#>:
                <#code#>
            default:
                <#code#>
            }
            
            let rootVC = UIApplication.shared.keyWindow?.rootViewController
            let secondVC = SecondVC()
            
            
            secondVC.firstItem = ItemToCompare(price: (priceInput.text! as NSString).floatValue, weight: (weightInput.text! as NSString).floatValue, weightType: weightTypeFromTextField)
            
            rootVC?.present(secondVC, animated: true, completion: nil)
 
        } else {
            print("some error on device")
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
