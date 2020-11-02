//
//  MusicInfoVC.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/11/01.
//

import UIKit

class MusicInfoVC: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    
    var music: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicInfo()
        // Do any additional setup after loading the view.
    }
    

    func setMusicInfo() {
        if let music = music {
            titleLabel.text = music.title
            singerLabel.text = music.singer
            albumImageView.image = music.makeAlbumImage()
        }
        
        titleLabel.sizeToFit()
        singerLabel.sizeToFit()
    }
}
