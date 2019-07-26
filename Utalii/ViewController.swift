//
//  ViewController.swift
//  Utalii
//
//  Created by Vivek kumar on 7/9/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello word")
        
//        let backBTN = UIBarButtonItem(image: UIImage(named: "BackButtonImage"),
//                                      style: .plain,
//                                      target: navigationController,
//                                      action: #selector(UINavigationController.popViewController(animated:)))
//        navigationItem.backBarButtonItem = backBTN
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
       
        
    }
    
    @IBAction func loginBtnClicked(_ sender : UIButton){
        
        self.performSegue(withIdentifier: "tabBarIdentifier", sender: nil)
        
        WebService.postRequest(url: Constant.baseUrl+Constant.login, requestMethod: Constant.postMethod, params: ["mobile_no": mobileTF.text ?? "", "password":passwordTF.text ?? "", "device_token": "abdughbdcsolhupgemnduiogcvjs"]) { (error, response) in
            
            if error == nil{
               
            }
        }
    }
    
}

