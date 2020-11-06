//
//  ProfileCell.swift
//  27th_iOS_assignment_week03
//
//  Created by inae Lee on 2020/11/05.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var hashTagTextField: UILabel!
    
    static let identifier = "ProfileCell"
    
    func setCell(profile: Profile) {
        profileImageView.image = profile.setProfileImage()
        nameTextField.text = profile.name
        hashTagTextField.text = profile.hashTag
    }
}
