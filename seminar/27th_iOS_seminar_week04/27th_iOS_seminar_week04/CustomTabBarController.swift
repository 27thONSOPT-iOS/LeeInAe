//
//  CustomTabBarController.swift
//  27th_iOS_seminar_week04
//
//  Created by inae Lee on 2020/11/07.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    func setTabBar() {
        guard let greyVC = self.storyboard?.instantiateViewController(identifier: "GreyVC") as? GreyVC,
              let blueVC = self.storyboard?.instantiateViewController(identifier: "BlueVC") as? BlueVC
        else {return}
        
        greyVC.tabBarItem.image = UIImage(systemName: "house")
        greyVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        greyVC.tabBarItem.title = "HOME"
        
        blueVC.tabBarItem.image = UIImage(systemName: "person")
        blueVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        blueVC.tabBarItem.title = "PROFILE"
        
        setViewControllers([greyVC, blueVC], animated: true) //배열의 순서에 따라 탭바의 순서도 바뀜
    }
}
