//
//  HelpVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 18/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class HelpVC: UIViewController {
    
    @IBOutlet weak var cardView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillLayoutSubviews() {
        cardView.drawCardView()
    }

}
