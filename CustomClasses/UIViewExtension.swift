//
//  UIViewExtension.swift
//  Utalii
//
//  Created by Shurbhi Natani on 17/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    func drawCardView(){
        layer.cornerRadius = 2
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 2)
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3);
        layer.shadowOpacity = 0.2
        layer.shadowPath = shadowPath.cgPath
    }
}


