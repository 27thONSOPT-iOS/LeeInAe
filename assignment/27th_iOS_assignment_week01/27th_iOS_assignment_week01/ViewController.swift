//
//  ViewController.swift
//  27th_iOS_assignment_week01
//
//  Created by inae Lee on 2020/10/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    var part: String?
    
    func setLabel() {
        if let name = self.name,
           let part = self.part {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
            
            self.partLabel.text = part
            self.partLabel.sizeToFit()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpMove(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "NavigationViewController") else {return}
        
        self.present(dvc, animated: true, completion: nil)
    }
    
}

