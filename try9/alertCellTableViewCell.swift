//
//  alertCellTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 15/03/22.
//

import UIKit

class alertCellTableViewCell: UITableViewCell {

    @IBOutlet weak var alertLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(alertType: String){
       self.alertLabel.text = alertType
    }
    
}
