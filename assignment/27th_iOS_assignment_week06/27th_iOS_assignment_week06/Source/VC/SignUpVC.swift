//
//  SignUpVC.swift
//  27th_iOS_assignment_week06
//
//  Created by inae Lee on 2020/11/24.
//

import UIKit

class SignUpVC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        
        emailField.delegate = self
        passwordField.delegate = self
        nameField.delegate = self
    }
    
    @IBAction func touchUpSignUp(_ sender: Any) {
        if let email = emailField.text,
           let password = passwordField.text,
           let name = nameField.text {
            AuthService.shared.signUp(email: email, password: password, name: name) { (networtResult) -> (Void) in
                switch networtResult {
                case .success(let data):
                    print("성공")
                    if let pvc = self.presentingViewController {
                        pvc.dismiss(animated: true, completion: nil)
                    }
                case .requestErr(let msg):
                    print(msg)
                case .pathErr:
                    print("pathErr")
                case .serverErr:
                    print("serverErr")
                case .networkFail:
                    print("networkErr")
                }
            }
        }
    }
}

extension SignUpVC {
    func setView() {
        passwordField.isSecureTextEntry = true
    }
}

extension SignUpVC : UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
