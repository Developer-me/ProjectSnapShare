//
//  Home page.swift
//  ProjectSnapShare
//
//  Created by WC on 07/03/23.
//

import UIKit

class HomePage: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
  
    

    @IBOutlet weak var imgprofile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imgprofile.layer.cornerRadius = 20
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else{
        return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "hometableviewcell", for: indexPath) as! hometableviewcell
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Hometcell", for: indexPath) as! Hometcell
            cell.imgprofilephoto.layer.cornerRadius = 20

            return cell
            
        }
      
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 160
        }else{
            return 360
        }
        
    }

}
