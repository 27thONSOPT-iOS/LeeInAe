//
//  SecondVC.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/10/31.
//

import UIKit

class SecondVC: UINavigationController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClick(_ sender: UIButton) {
//        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SecondVC", creator: nil) else {return}
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("second view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("second view will dis apprear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("seconde view did disappear")
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
