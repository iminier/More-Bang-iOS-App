//
//  DropDownPickerView.swift
//  cents
//
//  Created by Ivan Minier on 7/19/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class DropDownPickerView: UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pickerData: [String]!
    var pickerTextField: UITextField!
    
    init(pickerData: [String], dropDownField: UITextField) {
        super.init(frame: CGRect.zero)
        
        self.pickerData = pickerData
        self.pickerTextField = dropDownField
        
        self.delegate = self
        self.dataSource = self
        
        DispatchQueue.main.async(execute: {
            if pickerData.count != 0 {
                self.pickerTextField.text = self.pickerData[0]
                self.pickerTextField.isEnabled = true
            } else {
                self.pickerTextField.text = nil
                self.pickerTextField.isEnabled = false
            }
        })
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = pickerData[row]
        pickerTextField.resignFirstResponder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
