//
//  CollectionViewHorizonVC.swift
//  27th_iOS_seminar_collectionView
//
//  Created by inae Lee on 2020/11/12.
//

import UIKit

class CollectionViewHorizonVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let cv1TopInset: CGFloat = 21
    let cv1HorizonInset: CGFloat = 16
    let cv1BottomInset: CGFloat = 38
    let cv1RightSpacing: CGFloat = 60
    let cv1ItemSpacing: CGFloat = 8
    let cv1LineSpacing: CGFloat = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension CollectionViewHorizonVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GreenCell", for: indexPath)
        
        return cell
    }
}

extension CollectionViewHorizonVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellHeight = (collectionView.frame.height - cv1TopInset - cv1BottomInset - 2*cv1ItemSpacing) / 3
        let cellWidth = (collectionView.frame.width - cv1LineSpacing - cv1RightSpacing)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return cv1LineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cv1ItemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: cv1TopInset, left: cv1HorizonInset, bottom: cv1BottomInset, right: cv1HorizonInset)
    }
}
