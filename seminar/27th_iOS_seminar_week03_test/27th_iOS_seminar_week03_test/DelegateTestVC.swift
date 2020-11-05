//
//  DelegateTestVC.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/11/03.
//

import UIKit

class DelegateTestVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("textField did change selection!")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textField did end editing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //enter를 누르면 text를 반환한다
        resultLabel.text = textField.text
        resultLabel.sizeToFit()
        
        return true
    }
}
