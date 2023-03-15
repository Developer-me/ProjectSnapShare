//
//  VController.swift
//  ProjectSnapShare
//
//  Created by WC-42 on 03/03/23.
//

import UIKit

class SignUpVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

   

    @IBAction func btnsigninnow(_ sender: UIButton) {
    
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func btnSignup(_ sender: UIButton) {
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ImageVc") as! ImageVc
        self.navigationController?.pushViewController(pass, animated: true)
    }
}
