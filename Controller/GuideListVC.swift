//
//  GuideListVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 17/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class GuideListVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = UIView()
    }
    

}

extension GuideListVC : UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return 1
        }else if section == 1 {
            return 5
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "You are visiting"
        }else if section == 1 {
            return "Guides available"
        }
        
        return ""
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if indexPath.section == 0{
            
            let cell  =  tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
            return cell
            
        }else if indexPath.section == 1 {
            
            let cell : GuideCell = (tableView.dequeueReusableCell(withIdentifier: "guideCell") as? GuideCell)!
            
            cell.cardView.drawCardView()
            
            return cell
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 70
        }else if indexPath.section == 1 {
            return 150
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 40
    }
    
    
}

extension GuideListVC: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
