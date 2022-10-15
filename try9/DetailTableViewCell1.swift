//
//  DetailTableViewCell1.swift
//  try9
//
//  Created by Saurav  Kumar on 26/05/22.
//

import UIKit

class DetailTableViewCell1: UITableViewCell {

    
    @IBOutlet weak var lblDescription: UILabel!
    
    func setData(image: String?, description: String){
   
     
//        guard let url = URL(string: image ?? "") else {
//            self.lblDescription.text = description
//            return
//        }
//        downloadImage(from: url)
          
        self.lblDescription.text = description
      
        
    }
   

}
