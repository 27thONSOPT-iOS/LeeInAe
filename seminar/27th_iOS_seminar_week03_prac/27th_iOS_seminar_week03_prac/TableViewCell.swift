//
//  TableViewCell.swift
//  27th_iOS_seminar_week03_prac
//
//  Created by inae Lee on 2020/11/20.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let identifier = "TableViewCell"
    @IBOutlet weak var idxLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(idx: Int) {
        idxLabel.text = "\(idx + 1)"
    }

}
