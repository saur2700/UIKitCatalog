//
//  progressTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 08/03/22.
//

import UIKit

class progressTableViewCell: UITableViewCell {

    @IBOutlet weak var progress: UIProgressView!
    
    @IBOutlet weak var desc: UILabel!
    
    let progress1 = Progress(totalUnitCount: 10)
    
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
