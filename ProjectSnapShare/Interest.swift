//
//  Interest.swift
//  ProjectSnapShare
//
//  Created by WC on 07/03/23.
//

import UIKit

class Interest: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var labels = ["Nature","Fashion","Photojournalism","Event","Portrait","Fine art","Traval","Architecture","Advertising","Pet Photography","Sports","Wedding"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "intersestcell", for: indexPath) as! intersestcell
        cell.lbllabel.text = "\(labels[indexPath.item])"
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let w = collectionView.frame.size.width
//        return CGSize (width: w/2, height: w/2)
//    }
    
    @IBAction func btnSkip(_ sender: Any) {
        
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnforword(_ sender: UIButton) {
    }
}
