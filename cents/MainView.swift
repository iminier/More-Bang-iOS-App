//
//  MainView.swift
//  cents
//
//  Created by Ivan Minier on 7/19/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit
import PinLayout

protocol MainViewDelegate {
    
    func didTapEnter(mainView: MainView, itemToCompare: ItemToCompare)
    
}

class MainView: UIView {
    
    var delegate: MainViewDelegate?
    
    let labelFont = UIFont(name: "Helvetica", size: 20)
    let textFieldFont = UIFont(name: "Helvetica", size: 30)
    let textFieldBackgroudColor: CGColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0).cgColor
    let textFieldShadowOpacity: Float = 0.2
    let globalShadowColor: CGColor = UIColor.gray.cgColor
    
    let keyboardType: UIKeyboardType = UIKeyboardType.decimalPad
    
    var weightTypes: [String]!
    
    var priceInput: UITextField!
    var weightInput: UITextField!
    var weightTypeInput: UITextField!
    
    var priceLabel: UILabel!
    var weightLabel: UILabel!
    var weightTypeLabel: UILabel!
    
    var bottomButton: CentsButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red:0.51, green:0.86, blue:0.90, alpha:1.0)
        
        weightTypes = []
        
        priceInput = UITextField()
        priceInput.font = textFieldFont
        priceInput.layer.backgroundColor = textFieldBackgroudColor
        priceInput.layer.cornerRadius = 5
        priceInput.textAlignment = .center
        priceInput.keyboardType = keyboardType
        priceInput.layer.shadowColor = globalShadowColor
        priceInput.layer.shadowOpacity = textFieldShadowOpacity
        priceInput.addTarget(self, action: #selector(priceInputDidChange), for: .editingChanged)
        
        weightTypeInput = UITextField()
        weightTypeInput.font = textFieldFont
        weightTypeInput.layer.backgroundColor = textFieldBackgroudColor
        weightTypeInput.layer.cornerRadius = 5
        weightTypeInput.layer.shadowColor = globalShadowColor
        weightTypeInput.layer.shadowOpacity = textFieldShadowOpacity
        weightTypeInput.textAlignment = .center
        
        weightInput = UITextField()
        weightInput.font = textFieldFont
        weightInput.layer.backgroundColor = textFieldBackgroudColor
        weightInput.layer.cornerRadius = 5
        weightInput.layer.shadowColor = globalShadowColor
        weightInput.layer.shadowOpacity = textFieldShadowOpacity
        weightInput.textAlignment = .center
        weightInput.keyboardType = keyboardType
        weightInput.addTarget(self, action: #selector(weightInputDidChange), for: .editingChanged)
        
        priceLabel = UILabel()
        priceLabel.font = labelFont
        priceLabel.text = "Price"
        priceLabel.textAlignment = .left
        priceLabel.textColor = UIColor.black
        
        weightLabel = UILabel()
        weightLabel.font = labelFont
        weightLabel.text = "Weight"
        weightLabel.textAlignment = .left
        weightLabel.textColor = UIColor.black
        
        weightTypeLabel = UILabel()
        weightTypeLabel.font = labelFont
        weightTypeLabel.text = "Type"
        weightTypeLabel.textAlignment = .right
        weightTypeLabel.textColor = UIColor.black
        
        bottomButton = CentsButton()
        bottomButton.layer.backgroundColor = UIColor(red:0.95, green:0.67, blue:0.67, alpha:1.0).cgColor
        bottomButton.layer.borderColor = UIColor.lightGray.cgColor
        bottomButton.layer.shadowColor = globalShadowColor
        bottomButton.layer.borderWidth = 2
        bottomButton.layer.cornerRadius = 5
        bottomButton.layer.shadowOpacity = 0.6
        bottomButton.titleLabel?.textAlignment = .center
        
    
        self.addSubview(priceInput)
        self.addSubview(weightTypeInput)
        self.addSubview(weightInput)
        self.addSubview(priceLabel)
        self.addSubview(weightLabel)
        self.addSubview(weightTypeLabel)
        self.addSubview(bottomButton)
    }
        
    func getWeightTypeFromTextField() -> WeightTypes {
        switch weightTypeInput.text! {
        case "gal.":
            return .gallon
        case "qt.":
            return .quart
        case "L.":
            return .liter
        case "pt.":
            return .pint
        case "fl.oz.":
            return .floz
        case "ml.":
            return .milliliter
        case "lb.":
            return .pound
        case "gm.":
            return .gram
        case "oz.":
            return .ounce
        case "mg.":
            return .milligram
        case "qty.":
            return .qty
        default:
            return .gallon
        }
    }
    
    func showSecondVC() {
        if priceInput.text != "" && weightInput.text != "" && weightTypeInput.text != "" {
            var priceTextVCOne = priceInput.text
            priceTextVCOne?.remove(at: (priceTextVCOne?.startIndex)!)
            
            let weightTypeFromTextField: WeightTypes = getWeightTypeFromTextField()
            let itemToBePassed: ItemToCompare = ItemToCompare(itemNumber: 1,
                                                              price: (priceTextVCOne! as NSString).floatValue,
                                                              weight: (weightInput.text! as NSString).floatValue,
                                                              weightType: weightTypeFromTextField)
            delegate?.didTapEnter(mainView: self, itemToCompare: itemToBePassed)
        } else {
            print("some error on device")
        }
    }
    
    func arrangeTextFields(view: UIView) {
        priceInput.size.width = 280
        priceInput.size.height = 100
        priceInput.pin.topCenter().margin(120)
        
        weightInput.size.width = 170
        weightInput.size.height = 100
        weightInput.pin.below(of: priceInput, aligned: .left).marginTop(50)
        
        weightTypeInput.size.width = 100
        weightTypeInput.size.height = 100
        weightTypeInput.pin.below(of: priceInput, aligned: .right).marginTop(50)
    }
    
    func arrangeLabels() {
        priceLabel.size.width = 100
        priceLabel.size.height = 24
        priceLabel.pin.above(of: priceInput, aligned: .left).margin(0, 5, 10, 0)
        
        weightLabel.size.width = 100
        weightLabel.size.height = 24
        weightLabel.pin.above(of: weightInput, aligned: .left).margin(0, 5, 10, 0)
        
        weightTypeLabel.size.width = 50
        weightTypeLabel.size.height = 24
        weightTypeLabel.pin.above(of: weightTypeInput, aligned: .right).margin(0, 0, 10, 5)
    }
    
    func arrangeButtonText() {
        bottomButton.setTitle("Enter", for: .normal)
        bottomButton.titleLabel?.font = textFieldFont
    }
    
    func arrangeButton() {
        arrangeButtonText()
        bottomButton.size = CGSize(width: 280, height: 80)
        bottomButton.setTitleShadowColor(UIColor.black, for: .normal)
        bottomButton.setTitleShadowColor(UIColor.clear, for: .highlighted)
        bottomButton.pin.below(of: priceInput, aligned: .center).margin(190)
        bottomButton.addTarget(self, action: #selector(showSecondVC), for: .touchUpInside)
    }
    
    func setWeightTypes() {
        weightTypes = [WeightTypes.gallon.rawValue,
                       WeightTypes.quart.rawValue,
                       WeightTypes.liter.rawValue,
                       WeightTypes.pint.rawValue,
                       WeightTypes.floz.rawValue,
                       WeightTypes.milliliter.rawValue,
                       WeightTypes.pound.rawValue,
                       WeightTypes.gram.rawValue,
                       WeightTypes.ounce.rawValue,
                       WeightTypes.milligram.rawValue,
                       WeightTypes.qty.rawValue]
    }
    
    func addDropDownTypes(view: UIView) {
        setWeightTypes()
        weightTypeInput.loadDropDownData(data: weightTypes)
    }
    
    func arrangeView(view: UIView) {
        arrangeTextFields(view: view)
        arrangeLabels()
        arrangeButton()
        addDropDownTypes(view: view)
    }
    
    func priceInputDidChange(_ textField: UITextField) {
        if let amount = textField.text?.currencyInputFormat() {
            priceInput.text = amount
        }
    }
    
    func weightInputDidChange(_ textField: UITextField) {
        if let weight = textField.text?.weightInputFormat() {
            weightInput.text = weight
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
