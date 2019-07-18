//
//  MobileVerificationVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 18/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class MobileVerificationVC: UIViewController {
    
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var cardView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillLayoutSubviews() {
        cardView.drawCardView()
        mobileTF.setBottomBorder()
    }

}
