//
//  Profile.swift
//  27th_iOS_assignment_week04
//
//  Created by inae Lee on 2020/11/12.
//

import UIKit

struct Profile {
    var name: String
    var tag: String
    var imageName: String
    
    func setProfileImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
