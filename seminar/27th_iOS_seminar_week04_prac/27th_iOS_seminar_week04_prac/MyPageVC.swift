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
    @IBOutlet weak var colorBtn: UIButton!
    @IBOutlet weak var springBtn: UIButton!
    
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
            self.reset()
        }
    }
    
    @IBAction func touchUpColor(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
                        self.busImage.tintColor = self.randomColor()        })
    }
    
    @IBAction func touchUpSpring(_ sender: Any) {
        UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.2, options: .curveEaseIn, animations: {
            self.busImage.alpha = 0.5
            self.busImage.frame = CGRect(x: 50, y: 150, width: 240, height: 150
            )}, completion: {
                finish in
                self.reset()
            })
        
        //usingSpring...: 0.0 ~ 1.0의 값을 가지고, 0에 가까울수록 damping 심해짐
        //initialSpring...: spring의 속도. 0에 가까울수록 빠름
    }
    
    func randomColor() -> UIColor{
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    func reset() {
        UIView.animate(withDuration: 0.5, animations: {
            self.busImage.alpha = 1
            self.removeBtn.setTitle("Remove", for: .normal)
            self.busImage.frame = CGRect(x: 87, y: 161, width: 240, height: 128)
        })
    }
}
