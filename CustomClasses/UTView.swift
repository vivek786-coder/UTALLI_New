//
//  UTView.swift
//  Utalii
//
//  Created by Vivek kumar on 7/12/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class UTView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
            
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
            
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            // shadow
            layer.shadowColor = UIColor.lightGray.cgColor
            layer.shadowOpacity = 0.65
            layer.shadowOffset = CGSize.zero
            layer.shadowRadius = shadowRadius
            
        }
    }

}
