//
//  CustomCell.swift
//  6.ders
//
//  Created by selin eylül bilen on 1/14/21.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var pImage: UIImageView!
    @IBOutlet weak var pTitle: UILabel!
    @IBOutlet weak var pPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
