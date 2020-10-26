//
//  ViewController.swift
//  27th_iOS_assignment_week02
//
//  Created by inae Lee on 2020/10/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var topButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        self.initButton(topButton);
        
        print("banner frame: \(bannerImage.frame.height) \(bannerImage.frame.origin.y)")
        
        print("banner bound: \(bannerImage.bounds.origin.x) \(bannerImage.bounds.origin.y)")
        
        print("scroll bound: \(scrollView.bounds.origin.x), \(scrollView.bounds.origin.y)")
    }
    
    func initButton(_ button: UIButton) {
        button.isHidden = true
        button.layer.cornerRadius = 0.5 * (button.bounds.size.width)
    }
    
    @IBAction func setScrollToTop(_ sender: UIButton) {
        scrollView.setContentOffset(.zero, animated: true)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.bounds.origin.y > bannerImage.frame.height) {
            topButton.isHidden = false
        } else {
            topButton.isHidden = true
        }
    }
}

