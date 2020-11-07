//
//  AnimationTestVC.swift
//  27th_iOS_seminar_week04
//
//  Created by inae Lee on 2020/11/07.
//

import UIKit

class AnimationTestVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpStart(_ sender: Any) {
//        UIView.animate(withDuration: 2.0, animations: {
//            self.imageView.alpha = 0
//        })
        
//        UIView.animate(withDuration: 2.0, animations: {
//            self.imageView.alpha = 0
//            self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
//        }, completion: { (finish) in
//            UIView.animate(withDuration: 1.0, animations: {
//                self.initPosition()
//                self.imageView.alpha = 1
//
//            }) { (finished) in
//                if finished {
//                    print("end~~")
//                }
//            }
//        })
        
//        UIView.animate(withDuration: 2.0, animations: {
////            self.imageView.transform = CGAffineTransform(scaleX: 2.0, y: 0.5)
//
////            self.imageView.transform = CGAffineTransform(translationX: 100, y: 200)
//
//            self.imageView.transform = CGAffineTransform(rotationAngle: .pi / 4)
//        })
        
        let scale = CGAffineTransform(scaleX: 2.0, y: 0.5)
        let move = CGAffineTransform(translationX: 100, y: 200)
        let rotate = CGAffineTransform(rotationAngle: .pi)

        let combine = scale.concatenating(move).concatenating(rotate)
        
        UIView.animate(withDuration: 1.0, animations: {
            self.imageView.transform = combine

        }) { (finish) in
            UIView.animate(withDuration: 1.0, animations: {
                self.imageView.transform = .identity
            })
        }
    }
    
    func initPosition() {
        self.imageView.frame = CGRect(x: 71, y: 172, width: 272, height: 197)
    }
}
