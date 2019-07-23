//
//  UploadDocumentVC.swift
//  Utalii
//
//  Created by Shurbhi Natani on 23/07/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class UploadDocumentVC: UIViewController {
    
    @IBOutlet weak var placeTableview: UITableView!
    @IBOutlet weak var languageTableView: UITableView!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var placeTblViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var languageTblViewHeightConstraint: NSLayoutConstraint!
    
    var numberOfRowsInPlaceTableView = 1
    var numberOfRowsInLanguageTableView = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        placeTblViewHeightConstraint.constant = CGFloat(130 * numberOfRowsInPlaceTableView)
        languageTblViewHeightConstraint.constant = CGFloat(80 * numberOfRowsInLanguageTableView)
        
    }
    
    override func viewWillLayoutSubviews() {
        countryTF.setBottomBorder()
    }
    
    @IBAction func addBtnClicked(_ sender : UIButton){
        
        if sender.tag == 101{
           numberOfRowsInPlaceTableView = numberOfRowsInPlaceTableView + 1
           placeTblViewHeightConstraint.constant = CGFloat(130 * numberOfRowsInPlaceTableView)
           placeTableview.reloadData()
        }else{
           numberOfRowsInLanguageTableView = numberOfRowsInLanguageTableView + 1
           languageTblViewHeightConstraint.constant = CGFloat(80 * numberOfRowsInLanguageTableView)
           languageTableView.reloadData()
        }
    }
    
}

extension UploadDocumentVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == placeTableview{
            
            return numberOfRowsInPlaceTableView
        }
        return numberOfRowsInLanguageTableView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        if tableView == placeTableview{
            
             let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
             let stateTF = cell.viewWithTag(101) as? UITextField
             let areaTF = cell.viewWithTag(102) as? UITextField
            
             stateTF?.setBottomBorder()
             areaTF?.setBottomBorder()
            
             return cell
        }else{
            
             let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
             let languageTF = cell.viewWithTag(101) as? UITextField
             languageTF?.setBottomBorder()
            
             return cell
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if tableView == placeTableview{
            
            return 130
        }
        return 80
    }
    
    
    
    
}

extension UploadDocumentVC : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
