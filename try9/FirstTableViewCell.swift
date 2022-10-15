//
//  FirstTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 09/02/22.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.imgViewIcon.image = nil
        self.lblDescription.text?.removeAll()
    }
  
    @IBOutlet weak var imgViewIcon: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    func setData(image: String, description: String){
        self.imgViewIcon.image = UIImage(systemName: image)
        self.lblDescription.text = description
        self.lblDescription.font = UIFont.boldSystemFont(ofSize: lblDescription.font.pointSize)

    }
    

}
