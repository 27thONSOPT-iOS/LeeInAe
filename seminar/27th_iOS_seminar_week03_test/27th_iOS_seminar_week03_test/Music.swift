//
//  Music.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/11/01.
//

import UIKit
struct Music {
    var title: String
    var singer: String
    var albumImageName: String
    
    func makeAlbumImage() -> UIImage? {
        return UIImage(named: albumImageName)
    }
}
