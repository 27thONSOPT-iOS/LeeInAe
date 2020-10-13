//
//  ViewController.swift
//  27th_iOS_seminar_week01
//
//  Created by inae Lee on 2020/10/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpClick(_ sender: Any) {
        helloLabel.text = "Hello ON SOPT 27th!"
        helloLabel.sizeToFit()
    }
    
    @IBAction func touchUpMove(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "ResultViewController") else {return}
        
//        self.present(dvc, animated: true, completion: nil)
        self.navigationController?.pushViewController(dvc, animated: true)
    }
}

