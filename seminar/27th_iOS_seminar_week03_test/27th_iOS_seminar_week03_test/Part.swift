//
//  Part.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/10/31.
//

import UIKit

struct Part {
    var imageName: String
    var partName: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
