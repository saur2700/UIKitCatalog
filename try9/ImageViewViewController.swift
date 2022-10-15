//
//  ImageViewViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 17/06/22.
//

import UIKit

class ImageViewViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    
  
    var images = [UIImage]()
   
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        images.append(UIImage(named: "flower1")!)
        images.append(UIImage(named: "flower2")!)
        let animatedImage = UIImage.animatedImage(with: images, duration: 3.0)
        self.imgView.image = animatedImage
    }
    

   


}
