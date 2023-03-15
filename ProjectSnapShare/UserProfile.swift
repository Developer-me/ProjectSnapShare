//
//  UserProfile.swift
//  ProjectSnapShare
//
//  Created by WC on 14/03/23.
//

import UIKit

class UserProfile: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var imgbackground: UIImageView!
    @IBOutlet weak var imgprofile: UIImageView!
    @IBOutlet weak var lblnameofuser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "usercollectionCell", for: indexPath) as! usercollectionCell
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.black.cgColor
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.size.width / 3
        
        
        return CGSize(width: w, height: w)
    }


}
