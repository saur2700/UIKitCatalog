//
//  ButtonsTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 22/06/22.
//

import UIKit

class ButtonsTableViewCell: UITableViewCell {

   
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var btn: UIButton!
   
    func setData(description: String){
        self.lblDescription.text = description
    }

}
