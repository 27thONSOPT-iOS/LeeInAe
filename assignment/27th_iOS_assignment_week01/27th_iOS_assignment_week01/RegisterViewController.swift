//
//  RegisterViewController.swift
//  27th_iOS_assignment_week01
//
//  Created by inae Lee on 2020/10/14.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBAction func touchUpClose(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
            }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign Up"
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
