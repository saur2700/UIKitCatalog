//
//  sliderTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 24/02/22.
//

import UIKit

class sliderTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func sliderSlide(_ sender: Any) {
    }
    
    @IBOutlet weak var sliderLabel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
