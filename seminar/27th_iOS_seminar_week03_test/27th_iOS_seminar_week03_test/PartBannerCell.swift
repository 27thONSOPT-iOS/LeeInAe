//
//  PartBannerCell.swift
//  27th_iOS_seminar_week03_test
//
//  Created by inae Lee on 2020/11/02.
//

import UIKit

class PartBannerCell: UICollectionViewCell {
    @IBOutlet weak var partImageView: UIImageView!
    
    static let identifier = "PartBannerCell"
    
    func setImage(imageName: String) {
        partImageView.image = UIImage(named: imageName)
    }
}
