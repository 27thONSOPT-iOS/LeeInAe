//
//  LoginViewController.swift
//  27th_iOS_assignment_week01
//
//  Created by inae Lee on 2020/10/14.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func touchUpSubmitAndClose(_ sender: Any) {
        // presentingViewController
        // 자신을 호출한 ViewController!
        // presentedViewController는 자신이 호출한 ViewController
        let preViewController = self.presentingViewController
        
        guard let viewController = preViewController as? ViewController else {return}
        
        viewController.part = self.partTextField.hasText ? self.partTextField.text : "iOS"
        viewController.name = self.nameTextField.hasText ? self.nameTextField.text : "이인애"

        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func touchUpRegister(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "RegisterViewController") else {return}
        
            self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Login"
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
