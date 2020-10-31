//
//  ViewController.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/10/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did load")
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        super.loadView()
        print("load View")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }

    @IBAction func onClick(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") else {return}
        self.present(dvc, animated: true, completion: nil)
        
    }
}

