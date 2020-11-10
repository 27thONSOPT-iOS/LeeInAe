//
//  LoginVC.swift
//  27th_iOS_assignment_week04
//
//  Created by inae Lee on 2020/11/11.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func touchUpLogin(_ sender: UIButton) {
        guard let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginVC") as? LoginVC else {return}
        
        loginVC.modalPresentationStyle = .fullScreen
        self.present(loginVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
