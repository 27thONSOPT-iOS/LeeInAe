//
//  MusicRankCell.swift
//  27th_iOS_seminar_week03
//
//  Created by inae Lee on 2020/10/31.
//

import UIKit

class MusicRankCell: UITableViewCell {
    static let identifier = "MusicRankCell" //prototype cell에서 필요함.. 커스텀 클래스와 테이블 셀을 잇기 위해 static 변수를 만든다

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(rank: Int, music: Music) {
//        albumImageView.image = music.makeAlbumImage()
//        rankLabel.text = "\(rank + 1)"
//        titleLabel.text = music.singer
//        singerLabel.text = music.singer
    }

}
