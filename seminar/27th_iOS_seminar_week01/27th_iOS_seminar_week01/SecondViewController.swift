//
//  SecondViewController.swift
//  27th_iOS_seminar_week01
//
//  Created by inae Lee on 2020/10/13.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var updateStateLable: UILabel!
    @IBOutlet weak var updateIntervalLabel: UILabel!
    
    var email: String?
    var isAutoUpdate: Bool?
    var updateInterval: Int?
    
    @IBAction func touchUpBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        // Do any additional setup after loading the view.
    }
    
    func setLabel() {
        if let email = self.email,
           let isAutoUpdate = self.isAutoUpdate,
           let updateInterval = self.updateInterval {
            self.emailLabel.text = email
            self.emailLabel.sizeToFit()
            
            self.updateStateLable.text = isAutoUpdate ? "On" : "Off"
            self.updateIntervalLabel.text = "\(updateInterval) 분"
        }

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
