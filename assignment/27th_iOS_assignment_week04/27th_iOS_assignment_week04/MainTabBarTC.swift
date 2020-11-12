//
//  MainTabBarTC.swift
//  27th_iOS_assignment_week04
//
//  Created by inae Lee on 2020/11/11.
//

import UIKit

class MainTabBarTC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    func setTabBar() {
        guard let MainVC = self.storyboard?.instantiateViewController(identifier: "MainVC") as? MainVC,
              let ProfileVC = self.storyboard?.instantiateViewController(identifier: "ProfileVC") as? ProfileVC
        else {return}
        
        MainVC.tabBarItem.title = "Home"
        MainVC.tabBarItem.image = UIImage(systemName: "house")
        MainVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        ProfileVC.tabBarItem.title = "SOPT + NETWORKING"
        ProfileVC.tabBarItem.image = UIImage(systemName: "paperplane")
        ProfileVC.tabBarItem.selectedImage = UIImage(systemName: "paperplane.fill")
        
        setViewControllers([MainVC, ProfileVC], animated: true)
    }
}
