//
//  RecoverPasswordVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 18/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class RecoverPasswordVC: UIViewController {
    
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPassTF: UITextField!
    @IBOutlet weak var cardView: UIView!
    var passwordBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillLayoutSubviews() {
        
         cardView.drawCardView()
         passwordTF.setBottomBorder()
         confirmPassTF.setBottomBorder()
        
         setPasswordHideShowButton(passwordTF)
         setPasswordHideShowButton(confirmPassTF)
    }
    
    func setPasswordHideShowButton(_ textfield: UITextField){
        
        passwordBtn = UIButton(type: .custom)
        passwordBtn.setImage(UIImage(named: "password_closedImage"), for: .normal)
        passwordBtn.setImage(UIImage(named: "PasswordShowImage"), for: .selected)
        passwordBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0);
        passwordBtn.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        passwordBtn.addTarget(self, action: #selector(hideShowBtnClicked(_:)), for: .touchUpInside)
        passwordBtn.tag = textfield.tag
        textfield.rightView = passwordBtn
        textfield.rightViewMode = .always
    }
    
    @objc func hideShowBtnClicked(_ sender : UIButton){
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected{
            
            if sender.tag == passwordTF.tag{
                passwordTF.isSecureTextEntry = false
            }else{
                confirmPassTF.isSecureTextEntry = false
            }
           
        }else{
            if sender.tag == passwordTF.tag{
                passwordTF.isSecureTextEntry = true
            }else{
                confirmPassTF.isSecureTextEntry = true
            }
            
        }
    }
    
    @IBAction func verifyBtnClicked(_ sender : UIButton){
        
        WebService.postRequest(url: Constant.baseUrl+Constant.sendOtpToMobileNumber, requestMethod: Constant.postMethod, params: ["password": self.passwordTF.text ?? "","otp":"547Q","id":"2"]) { (error, response) in
            
            if error == nil{
                
            }
        }
    }
    


}
