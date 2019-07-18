//
//  SignUpVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 17/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
     @IBOutlet weak var nameTF: UITextField!
     @IBOutlet weak var emailTF: UITextField!
     @IBOutlet weak var mobileTF: UITextField!
     @IBOutlet weak var passwordTF: UITextField!
     @IBOutlet weak var confirmPassTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillLayoutSubviews() {
        self.nameTF.setBottomBorder()
        self.emailTF.setBottomBorder()
        self.mobileTF.setBottomBorder()
        self.passwordTF.setBottomBorder()
        self.confirmPassTF.setBottomBorder()
    }

   

}
