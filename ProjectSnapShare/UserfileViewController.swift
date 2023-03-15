//
//  UserfileViewController.swift
//  ProjectSnapShare
//
//  Created by WC on 14/03/23.
//

import UIKit

class UserfileViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 30
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UsercollectionVC", for: indexPath) as! UsercollectionVC
       return cell
   

}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.size.width / 3
        
        
        return CGSize (width: w, height: collectionView.frame.size.height / 3)
    }
    
    
    
}
