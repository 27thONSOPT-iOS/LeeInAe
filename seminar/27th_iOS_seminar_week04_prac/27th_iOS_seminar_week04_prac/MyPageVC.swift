//
//  MyPageVC.swift
//  27th_iOS_seminar_seminar_test
//
//  Created by inae Lee on 2020/11/07.
//

import UIKit

class MyPageVC: UIViewController {
    @IBOutlet weak var busImage: UIImageView!
    @IBOutlet weak var removeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpMove(_ sender: Any) {
        if (removeBtn.title(for: .normal) == "Remove") {
            UIView.animate(withDuration: 0.5, animations: {
                self.busImage.alpha = 0
                self.removeBtn.setTitle("Show", for: .normal)
            })}
        else {
            UIView.animate(withDuration: 0.5, animations: {
                self.busImage.alpha = 1
                self.removeBtn.setTitle("Remove", for: .normal)
            })}
    }
}
