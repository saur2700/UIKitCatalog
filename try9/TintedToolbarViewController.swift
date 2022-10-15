//
//  TintedToolbarViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 21/06/22.
//

import UIKit

class TintedToolbarViewController: UIViewController {

    @IBOutlet weak var toolbar: UIToolbar!
    override func viewDidLoad() {
        super.viewDidLoad()

        toolbar.barStyle = .black
        toolbar.isTranslucent = false
        
        toolbar.tintColor = UIColor.systemGreen
        toolbar.backgroundColor = UIColor.systemBlue
        
        let toolbarButtonItems = [
            refreshButton,
            flexibleSpace,
            actionButton
        ]
        toolbar.setItems(toolbarButtonItems, animated: true)
    }
    
    
    
    var refreshButton: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .refresh,
                               target: self,
                               action: #selector(barButtonItemClicked(_:)))
    }

    var flexibleSpace: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                               target: nil,
                               action: nil)
    }
    
    @objc
    func barButtonItemClicked(_ barButtonItem: UIBarButtonItem) {
        Swift.debugPrint("A bar button item on the default toolbar was clicked: \(barButtonItem).")
    }

    var actionButton: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .action,
                               target: self,
                               action: #selector(actionBarButtonItemClicked(_:)))
    }
    
    @objc func actionBarButtonItemClicked(_ barButtonItem: UIBarButtonItem) {
        if let image = UIImage(named: "flower1") {
            let activityItems = ["Shared piece of text", image] as [Any]
            
            let activityViewController =
                UIActivityViewController(activityItems: activityItems, applicationActivities: nil)

            activityViewController.popoverPresentationController?.barButtonItem = barButtonItem
            present(activityViewController, animated: true, completion: nil)
        }
    }

}
