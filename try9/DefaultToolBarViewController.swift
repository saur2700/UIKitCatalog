//
//  DefaultToolBarViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 20/06/22.
//

import UIKit
import SwiftUI

class DefaultToolBarViewController: UIViewController {

    @IBOutlet weak var toolbar: UIToolbar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        toolbar.setItems([deleteButton, flexibleSpace, titleButton], animated: true)

    }
    
    var deleteButton: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .trash,
                               target: self,
                               action: #selector(barButtonItemClicked(_:)))
    }

    var flexibleSpace: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                               target: nil,
                               action: nil)
    }

    func list(action: UIAction) {
        Swift.debugPrint("Menu Action '\(action.title)'")
    }
    
    var titleButton: UIBarButtonItem {
        let buttonMenu = UIMenu(title: "",
                                children: (1...5).map {
                                   UIAction(title: "Option \($0)", handler: list)
                                })
        return UIBarButtonItem(image: UIImage(systemName: "list.number"), menu: buttonMenu)
    }

    // MARK: - Actions

    @objc
    func barButtonItemClicked(_ barButtonItem: UIBarButtonItem) {
        Swift.debugPrint("A bar button item on the default toolbar was clicked: \(barButtonItem).")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.setToolbarHidden(false, animated: animated)
    }
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
