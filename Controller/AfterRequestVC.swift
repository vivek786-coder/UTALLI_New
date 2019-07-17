//
//  AfterRequestVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 17/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class AfterRequestVC: UIViewController {
    
    @IBOutlet weak var cardView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cardView.drawCardView()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
