//
//  LoginVC.swift
//  27th_iOS_assignment_week06
//
//  Created by inae Lee on 2020/11/24.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func touchUpLogin(_ sender: Any) {
        guard let email = emailField.text,
              let password = passwordField.text else {return}
        
        AuthService.shared.signIn(email: email, password: password) { (networkResult) -> (Void) in
            switch networkResult {
            case .success(let data):
                if let signInData = data as? AuthData {
                    self.simpleAlert(title: "로그인 성공!", message: "\(signInData.userName)님 환영합니다!")
                    UserDefaults.standard.set(signInData.userName, forKey: "userName")
                }
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "로그인 실패!", message: message)
                }
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkErr")
            }
        }
    }
    
    @IBAction func touchUpSignUp(_ sender: Any) {
        let signUpStoryboard = UIStoryboard(name: "SignUp", bundle: nil)
        
        if let signUpVC = signUpStoryboard.instantiateViewController(identifier: "SignUpVC") as? SignUpVC {
            signUpVC.modalPresentationStyle = .fullScreen
            self.present(signUpVC, animated: true, completion: nil)
        }
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: .none)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
