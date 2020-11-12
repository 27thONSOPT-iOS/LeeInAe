//
//  ProfileCell.swift
//  27th_iOS_assignment_week04
//
//  Created by inae Lee on 2020/11/12.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    static let identifier = "ProfileCell"
    
    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var tagTextField: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    func setProfile(profile: Profile) {
        nameTextField.text = profile.name
        tagTextField.text = profile.tag
        profileImage.image = profile.setProfileImage()
    }
}
