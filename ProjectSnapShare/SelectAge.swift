//
//  SelectAge.swift
//  ProjectSnapShare
//
//  Created by WC-42 on 06/03/23.
//

import UIKit

class SelectAge: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
   
    @IBOutlet weak var lbl: UILabel!
    var labels = ["below 13", "13 - 19", "19 - 35", "35 + ","above 60"]

    override func viewDidLoad() {
        super.viewDidLoad()
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize (width: 3/2, height: 3/2)
//        layout.minimumLineSpacing = 2
//
      
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionVCell", for: indexPath) as! CollectionVCell
        cell.lblLabel.text = "\(labels[indexPath.item])"
        cell.layer.cornerRadius  = 10
        cell.layer.borderWidth = 1
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let w = collectionView.frame.size.width
//        let h = collectionView.frame.size.height
        return CGSize (width:100 , height:85 )
      
        
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//
//           let cellWidth: CGFloat = 120 // Your cell width
//
//           let numberOfCells = floor(view.frame.size.width / cellWidth)
//           let edgeInsets = (view.frame.size.width - (numberOfCells * cellWidth)) / (numberOfCells + 1)
//
//        return UIEdgeInsets(top: 0, left: edgeInsets, bottom: 0, right: edgeInsets)
//       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            let cellWidth : CGFloat = 100
        
            
            let numberOfCells = floor(collectionView.frame.size.width / cellWidth)
            let edgeInsets = (collectionView.frame.size.width - (numberOfCells * cellWidth)) / (numberOfCells + 5)
            
        return UIEdgeInsets(top: 15, left: edgeInsets, bottom: 0, right: edgeInsets)
        }
}

