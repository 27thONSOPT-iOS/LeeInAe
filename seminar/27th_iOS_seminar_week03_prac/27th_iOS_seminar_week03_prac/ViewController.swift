//
//  ViewController.swift
//  27th_iOS_seminar_week03_prac
//
//  Created by inae Lee on 2020/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    var options = ["치킨", "피자", "아이스크림", "콘치즈"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dismissPickerView()
    }
    
    func createPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        textField.inputView = pickerView
    }
    
    @objc func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let button = UIBarButtonItem(title: "Select", style: .plain, target: self, action: #selector(self.dismissPickerView))
        
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        
        textField.inputAccessoryView = toolBar
    }
}

extension ViewController: UITextFieldDelegate {
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = options[row]
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options.count
    }
    
    
}
