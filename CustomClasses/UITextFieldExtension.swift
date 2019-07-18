//
//  File.swift
//  Utalii
//
//  Created by Shurbhi Natani on 17/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import Foundation
import UIKit

extension UITextField{
    
    func setBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.height - 1, width: self.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor(rgb: 0x07A0C3).cgColor
        self.borderStyle = .none
        self.layer.addSublayer(bottomLine)
    }
    
}
