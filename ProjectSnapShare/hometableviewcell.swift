//
//  hometableviewcell.swift
//  ProjectSnapShare
//
//  Created by WC on 07/03/23.
//

import UIKit

class hometableviewcell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
   

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if section == 0 {
            return 100
//        }else{
//        return 2
//        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if indexPath.section == 0  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Homecollectioncell", for: indexPath) as!Homecollectioncell
        cell.imgimage.layer.cornerRadius = 20
        cell.layer.cornerRadius = 10
            return cell
//        }else{
//            let cell = tab.dequeueReusableCell(withReuseIdentifier: "Hometcell", for: indexPath) as! Hometcell
//            return cell
//
//        }
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: 127, height: 150)
    }
}
