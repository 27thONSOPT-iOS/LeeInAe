//
//  CustomTabBarVC.swift
//  27th_iOS_seminar_seminar_test
//
//  Created by inae Lee on 2020/11/07.
//

import UIKit

class CustomTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        // Do any additional setup after loading the view.
    }
    

    func setTabBar() {
        guard let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeVC") as? HomeVC,
              let searchVC = self.storyboard?.instantiateViewController(identifier: "SearchVC") as? SearchVC,
              let myVC = self.storyboard?.instantiateViewController(identifier: "MyPageVC") as? MyPageVC
        else {return}
        
        homeVC.tabBarItem.title = "홈"
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        searchVC.tabBarItem.title = "탐색"
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle")
        
        myVC.tabBarItem.title = "마이"
        myVC.tabBarItem.image = UIImage(systemName: "person")
        
        setViewControllers([homeVC, searchVC, myVC], animated: true)
    }

}
