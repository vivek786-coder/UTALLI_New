//
//  UTIMageView.swift
//  Utalii
//
//  Created by Vivek kumar on 7/12/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class UTIMageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.masksToBounds = true
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
}




/// This class prefetches images in advance for the cells in Tableview/CollectionView
///

