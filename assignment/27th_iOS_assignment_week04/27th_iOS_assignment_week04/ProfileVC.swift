//
//  ProfileVC.swift
//  27th_iOS_assignment_week04
//
//  Created by inae Lee on 2020/11/11.
//

import UIKit

class ProfileVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var profile: [Profile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setProfile()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func setProfile() {
        profile.append(contentsOf: [Profile(name: "이주혁", tag: "#hereis#아요#내꿈은 #사과농장#ENFP", imageName: "juhyeok"),
                                    Profile(name: "김나연", tag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영", imageName: "nayeon"),
                                    Profile(name: "이주혁", tag: "#hereis#아요#내꿈은 #사과농장#ENFP", imageName: "juhyeok"),
                                    Profile(name: "김나연", tag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영", imageName: "nayeon"),
                                    Profile(name: "이주혁", tag: "#hereis#아요#내꿈은 #사과농장#ENFP", imageName: "juhyeok"),
                                    Profile(name: "김나연", tag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영", imageName: "nayeon"),
                                    Profile(name: "이주혁", tag: "#hereis#아요#내꿈은 #사과농장#ENFP", imageName: "juhyeok"),
                                    Profile(name: "김나연", tag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영", imageName: "nayeon"),
                                    Profile(name: "이주혁", tag: "#hereis#아요#내꿈은 #사과농장#ENFP", imageName: "juhyeok"),
                                    Profile(name: "김나연", tag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영", imageName: "nayeon")
        ])
    }
}

extension ProfileVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        profile.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCell.identifier, for: indexPath) as? ProfileCell else {return UICollectionViewCell()}
        
        cell.setProfile(profile: profile[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let banner = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: BannerCell.identifier, for: indexPath) as! BannerCell
        
        return banner
    }
}

extension ProfileVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 27 - 48) / 2, height: 225)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 41, left: 24, bottom: 0, right: 24)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 27    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
