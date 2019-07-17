//
//  ViewController.swift
//  Utalii
//
//  Created by Vivek kumar on 7/9/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello word")
    }
    
    @IBAction func loginBtnClicked(_ sender : UIButton){
        
        self.performSegue(withIdentifier: "tabBarIdentifier", sender: nil)
    }
    
}

