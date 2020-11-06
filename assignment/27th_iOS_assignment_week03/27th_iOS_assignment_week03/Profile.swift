//
//  Profile.swift
//  27th_iOS_assignment_week03
//
//  Created by inae Lee on 2020/11/05.
//

import UIKit

struct Profile {
    var profileImageName: String
    var name: String
    var hashTag: String
    
    func setProfileImage() -> UIImage? {
        return UIImage(named: profileImageName)
    }
}
