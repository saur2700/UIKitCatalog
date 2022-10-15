//
//  customText.swift
//  try9
//
//  Created by Saurav  Kumar on 02/03/22.
//

import Foundation

import UIKit


class customText:UITextField{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
   
    
    
    
    required public init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setup()
        setRightViewIcon()
    }
    
    func setRightViewIcon() {
        
        let btnView = UIButton(frame: CGRect(x: 0, y: 0, width: ((self.frame.height) * 0.70), height: ((self.frame.height) * 0.70)))
        btnView.backgroundColor = .red
       
        self.rightViewMode = .always
        self.rightView = btnView
    }
    
    func setup() {
                let border = CALayer()
                let width = CGFloat(2.0)
            border.borderColor = UIColor.darkGray.cgColor
            border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: self.frame.size.height)
            border.borderWidth = width
            self.layer.addSublayer(border)
            self.layer.masksToBounds = true
        
        }
}



