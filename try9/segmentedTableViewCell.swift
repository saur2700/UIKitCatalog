//
//  segmentedTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 23/02/22.
//

import UIKit

class segmentedTableViewCell: UITableViewCell {

    @IBOutlet weak var checkSegment: UISegmentedControl!

    @IBOutlet weak var segmentedText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
      override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
