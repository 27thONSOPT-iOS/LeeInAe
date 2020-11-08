//
//  SearchVC.swift
//  27th_iOS_seminar_seminar_test
//
//  Created by inae Lee on 2020/11/07.
//

import UIKit

class SearchVC: UIViewController {
    @IBOutlet weak var purpleView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpStart(_ sender: Any) {
        UIView.animate(withDuration: 1.0, delay: 0) {
            self.purpleView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            self.purpleView.transform = CGAffineTransform(rotationAngle: .pi / 2)
        }
    }
}
