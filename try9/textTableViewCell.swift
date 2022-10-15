//
//  textTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 28/02/22.
//

import UIKit

class textTableViewCell: UITableViewCell {

    @IBOutlet weak var tintedLabel: UILabel!
    @IBOutlet weak var tintedTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
