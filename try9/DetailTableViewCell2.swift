//
//  DetailTableViewCell2.swift
//  try9
//
//  Created by Saurav  Kumar on 21/06/22.
//

import UIKit

class DetailTableViewCell2: UITableViewCell {

    @IBOutlet weak var imgLabel: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    func setData(image: String?, description: String){
   
        if let imageName = image{
        self.imgLabel.image = UIImage(systemName: imageName)
            imgLabel.contentMode = .scaleAspectFit
    }
          
        self.lblDescription.text = description
    }

}
