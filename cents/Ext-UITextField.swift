//
//  Ext-UITextField.swift
//  cents
//
//  Created by Ivan Minier on 7/19/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

extension UITextField {
    func loadDropDownData(data: [String]) {
        self.inputView = DropDownPickerView(pickerData: data, dropDownField: self)
    }
}
