//
//  SearchVC.swift
//  ProjectSnapShare
//
//  Created by WC on 09/03/23.
//

import UIKit

class SearchVC: UIViewController,UITableViewDelegate,UITableViewDataSource{
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else if section == 1{
            return 1
        }else{
       
        return 1
    }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let pass = tableView.dequeueReusableCell(withIdentifier: "SearchTcell", for: indexPath) as! SearchTcell
            return pass
        }else if indexPath.section == 1{
            let pass = tableView.dequeueReusableCell(withIdentifier: "StcellVc", for: indexPath) as! StcellVc
            return pass
        }else{
            let pass = tableView.dequeueReusableCell(withIdentifier: "searchTableviewcell", for: indexPath) as! searchTableviewcell
            return pass
        }
         
         
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
        return 55
            
      
            
        }else if indexPath.section == 1 {
        return 200
        
         
        
        }else{
            return 400}
            
        }

}

