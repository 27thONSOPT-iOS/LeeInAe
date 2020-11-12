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
    
    var user: User? = User(part: "iOS", name: "No Name")
    var part: String?
    
    @IBAction func touchUpLogin(_ sender: UIButton) {
        guard let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginVC") as? LoginVC else {return}
        
        loginVC.modalPresentationStyle = .fullScreen
        self.present(loginVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setLabel()
    }
    
    func setLabel() {
        if let user = self.user {
            self.partLabel.text = user.part
            self.nameLabel.text = user.name
            
            partLabel.sizeToFit()
            nameLabel.sizeToFit()
        }
    }
}
