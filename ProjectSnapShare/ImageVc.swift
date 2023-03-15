//
//  Age.swift
//  ProjectSnapShare
//
//  Created by WC-42 on 06/03/23.
//

import UIKit

class ImageVc: UIViewController {
    @IBOutlet weak var lbladdphp: UILabel!
    @IBOutlet weak var imgmain: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgmain.layer.cornerRadius = 75
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnSkip(_ sender: UIButton) {
    }
    @IBAction func btnforword(_ sender: UIButton) {
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectAge") as! SelectAge
        self.navigationController?.pushViewController(pass, animated: true)
    }
    
}
