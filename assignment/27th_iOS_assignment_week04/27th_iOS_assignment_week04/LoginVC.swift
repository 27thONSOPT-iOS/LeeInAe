//
//  LoginVC.swift
//  27th_iOS_assignment_week04
//
//  Created by inae Lee on 2020/11/11.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var partLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partLabel.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        partLabel.becomeFirstResponder()
    }
    
    @IBAction func touchUpLogin(_ sender: Any) {
        guard let preVC = self.presentingViewController as? UITabBarController else {return}
        preVC.selectedIndex = 0
        
        guard let MainVC = preVC.selectedViewController as? MainVC else {return}
        MainVC.user = User(part: self.partLabel.text, name: self.nameLabel.text)
        
        preVC.dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate {
    override func becomeFirstResponder() -> Bool {
        true
    }
}
