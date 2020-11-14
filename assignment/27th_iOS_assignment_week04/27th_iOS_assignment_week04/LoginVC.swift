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
    @IBOutlet weak var textFieldView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name:
                                                    UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name:
                                                    UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @IBAction func touchUpLogin(_ sender: Any) {
        guard let preVC = self.presentingViewController as? UITabBarController else {return}
        preVC.selectedIndex = 0
        
        guard let MainVC = preVC.selectedViewController as? MainVC else {return}
        MainVC.user = User(part: self.partLabel.text, name: self.nameLabel.text)
        
        preVC.dismiss(animated: true, completion: nil)
    }
    
    @objc func keyboardWillShow(_ notification: Notification){
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keybaordRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keybaordRectangle.height
            
            UIView.animate(withDuration: 0.5, animations: {
                self.textFieldView.transform = CGAffineTransform(translationX: 0, y: -keyboardHeight/4)
            })
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification){
        UIView.animate(withDuration: 0.5, animations: {
            self.textFieldView.transform = .identity
        })
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

//extension LoginVC: UITextFieldDelegate {
//    override func becomeFirstResponder() -> Bool {
//        true
//    }
//}
