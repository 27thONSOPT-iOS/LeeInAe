//
//  ViewController.swift
//  27th_iOS_assignment_week03
//
//  Created by inae Lee on 2020/11/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    var profiles: [Profile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setProfileData()
        
        profileCollectionView.dataSource = self
        profileCollectionView.delegate = self
    }
    
    func setProfileData() {
        profiles.append(contentsOf: [Profile(profileImageName: "juhyeok", name: "이주혁", hashTag: "#hereis#아요#내꿈은 #사과농장#ENFP"),
                                     Profile(profileImageName: "nayeon", name: "김나연", hashTag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영"),Profile(profileImageName: "juhyeok", name: "이주혁", hashTag: "#hereis#아요#내꿈은 #사과농장#ENFP"),
                                     Profile(profileImageName: "nayeon", name: "김나연", hashTag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영"),
                                     Profile(profileImageName: "juhyeok", name: "이주혁", hashTag: "#hereis#아요#내꿈은 #사과농장#ENFP"),
        Profile(profileImageName: "nayeon", name: "김나연", hashTag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영"),Profile(profileImageName: "juhyeok", name: "이주혁", hashTag: "#hereis#아요#내꿈은 #사과농장#ENFP"),
        Profile(profileImageName: "nayeon", name: "김나연", hashTag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영")
        ,Profile(profileImageName: "juhyeok", name: "이주혁", hashTag: "#hereis#아요#내꿈은 #사과농장#ENFP"),
        Profile(profileImageName: "nayeon", name: "김나연", hashTag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영")])
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profiles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCell.identifier, for: indexPath) as? ProfileCell else {return UICollectionViewCell() }
        
        cell.setCell(profile: profiles[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let banner = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: BannerCell.identifier, for: indexPath) as! BannerCell
        
        return banner
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    // cell의 width, heigth 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - (27+48))/2, height: 225)
    }
    
    // cell의 위, 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // cell의 좌, 우 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 27
    }
    
    // cell의 content inset
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 41, left: 24, bottom: 0, right: 24)
    }
}
