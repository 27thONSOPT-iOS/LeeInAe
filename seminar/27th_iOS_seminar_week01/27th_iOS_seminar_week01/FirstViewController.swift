//
//  FirstViewController.swift
//  27th_iOS_seminar_week01
//
//  Created by inae Lee on 2020/10/13.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var updateStateLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var updateIntervalLabel: UILabel!
    @IBOutlet weak var updateStateSwitch: UISwitch!
    @IBOutlet weak var updateIntervalStepper: UIStepper!
    
    @IBAction func touchUpSubmit(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else {return}
        
        dvc.email = self.emailTextField.text
        dvc.updateInterval = Int(self.updateIntervalStepper.value)
        dvc.isAutoUpdate = self.updateStateSwitch.isOn
        
        self.present(dvc, animated: true, completion: nil)
    }
    
    @IBAction func changedStepper(_ sender: UIStepper) {
        updateIntervalLabel.text = "\(Int(sender.value)) 분 마다"
        updateIntervalLabel.sizeToFit()
    }
    
    @IBAction func changedSwitch(_ sender: UISwitch) {
        if sender.isOn {
            self.updateStateLabel.text = "자동 갱신"
        } else {
            self.updateStateLabel.text = "수동 갱신"
        }
        
        self.updateStateLabel.sizeToFit()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
