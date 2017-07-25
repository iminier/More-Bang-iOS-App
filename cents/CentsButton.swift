//
//  CentsButton.swift
//  cents
//
//  Created by Ivan Minier on 7/25/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class CentsButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
        self.layer.shadowColor = UIColor.clear.cgColor
        
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform.identity
            self.layer.shadowColor = UIColor.gray.cgColor
            
        }, completion: nil)
        
        super.touchesBegan(touches, with: event)

    }
    
}
