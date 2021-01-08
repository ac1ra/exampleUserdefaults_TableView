//
//  TableViewCell.swift
//  test_userdefault_row
//
//  Created by ac1ra on 05.01.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgSelected: UIImageView!
    @IBOutlet weak var lblLang: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
