//
//  textTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 28/02/22.
//

import UIKit

class textTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        self.title = "Text View"
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "defaultText") as! textTableViewCell
        
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "tintedText") as! textTableViewCell
            cell.tintedTextField.textColor = .green
                return cell
           case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "secureText") as! textTableViewCell
            cell.tintedTextField.isSecureTextEntry = true
            return cell
           case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "customText") as! textTableViewCell
            
            return cell
            
            
        default:
            return UITableViewCell()
        }
    }
    func textFieldShouldClear(_ textField: UITextField)->Bool{
        
        return true
    }
    
  
    

}
