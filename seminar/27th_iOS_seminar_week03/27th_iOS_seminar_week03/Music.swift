//
//  Music.swift
//  27th_iOS_seminar_week03
//
//  Created by inae Lee on 2020/10/31.
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
