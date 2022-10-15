//
//  MenuButtonsTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 16/06/22.
//

import UIKit

class MenuButtonsTableViewCell: UITableViewCell {


  
    
    @IBOutlet weak var dropDown: UIButton!
    
    @IBOutlet weak var dropDown1: UIButton!
    
    
    @IBOutlet weak var dropDown2: UIButton!
    
   
    @IBOutlet weak var dropDown3: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       // self.dropDown1.showsMenuAsPrimaryAction = true
       // self.dropDown1.menu = UIMenu(title: "First", children: [item1, item2])
        
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
