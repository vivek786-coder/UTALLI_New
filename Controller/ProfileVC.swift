//
//  ProfileVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 19/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var logoutView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
    }
    
    override func viewWillLayoutSubviews() {
        logoutView.drawCardView()
    }
    

  
}


extension ProfileVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
    
}

extension ProfileVC : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc  = self.storyboard?.instantiateViewController(withIdentifier: "SettingVC") as! SettingVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
