//
//  CustomToolbarViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 21/06/22.
//

import UIKit

class CustomToolbarViewController: UIViewController {

    @IBOutlet weak var toolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let toolbarButtonItems = [
            customImageBarButtonItem,
            flexibleSpaceBarButtonItem,
            customBarButtonItem
        ]
        toolbar.setItems(toolbarButtonItems, animated: true)
    }
    
    var customImageBarButtonItem: UIBarButtonItem {
        let customBarButtonItemImage = UIImage(systemName: "exclamationmark.triangle")

        let customImageBarButtonItem = UIBarButtonItem(image: customBarButtonItemImage,
                                                       style: .plain,
                                                       target: self,
                                                       action: #selector(CustomToolbarViewController.barButtonItemClicked(_:)))

        customImageBarButtonItem.tintColor = UIColor.systemPurple

        return customImageBarButtonItem
    }
    
    var flexibleSpaceBarButtonItem: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }

    var customBarButtonItem: UIBarButtonItem {
        let barButtonItem = UIBarButtonItem(title: NSLocalizedString("Button", comment: ""),
                                            style: .plain,
                                            target: self,
                                            action: #selector(CustomToolbarViewController.barButtonItemClicked))

        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.systemPurple
        ]
        barButtonItem.setTitleTextAttributes(attributes, for: [])

        return barButtonItem
    }
    
    @objc
    func barButtonItemClicked(_ barButtonItem: UIBarButtonItem) {
        Swift.debugPrint("A bar button item on the custom toolbar was clicked: \(barButtonItem).")
    }
   

}
