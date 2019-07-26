//
//  OtpVerificationVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 19/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class OtpVerificationVC: UIViewController {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var tfOne: UITextField!
    @IBOutlet weak var tfTwo: UITextField!
    @IBOutlet weak var tfThree: UITextField!
    @IBOutlet weak var tfFour: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillLayoutSubviews() {
        cardView.drawCardView()
        tfOne.setBottomBorder()
        tfTwo.setBottomBorder()
        tfThree.setBottomBorder()
        tfFour.setBottomBorder()
    }
    
  

}
