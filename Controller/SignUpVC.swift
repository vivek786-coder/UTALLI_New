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
        self.navigationController?.navigationBar.barTintColor = .white
    }
    
    override func viewWillLayoutSubviews() {
        self.nameTF.setBottomBorder()
        self.emailTF.setBottomBorder()
        self.mobileTF.setBottomBorder()
        self.passwordTF.setBottomBorder()
        self.confirmPassTF.setBottomBorder()
    }
    
    @IBAction func signUpBtnClicked(_ sender : UIButton){
        
        WebService.postRequest(url: Constant.baseUrl+Constant.signUp, requestMethod: Constant.postMethod, params: ["name": nameTF.text ?? "","email":self.emailTF.text ?? "","mobile_no":self.mobileTF.text ?? "", "password":self.passwordTF.text ?? "",       "dob":"2019-06-06","gender":"female","device_token":"sdkjfdsjflksdjfklsdjfkljdsf","otp":""]) { (error, response) in
            
            if error == nil{
                
            }
        }
    }

}
