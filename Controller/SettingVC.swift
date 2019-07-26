//
//  SettingVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 18/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class SettingVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var settingArray = [[String: Any]]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        settingArray = [["title":"Notification", "icon":"ic_bell"], ["title":"Help and support", "icon":"ic_help"], ["title":"Privacy policy", "icon":"ic_privacy"],["title":"About us", "icon":"ic_about_us"]]
        tableView.tableFooterView = UIView()
    }
}

extension SettingVC : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let titleLbl    = cell.viewWithTag(101) as? UILabel
        let titleIcon   = cell.viewWithTag(102) as? UIImageView
       
        titleLbl?.text = settingArray[indexPath.row]["title"] as? String
        titleIcon?.image = UIImage(named: (settingArray[indexPath.row]["icon"] as? String)!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}

extension SettingVC : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 1{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "HelpVC") as! HelpVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
