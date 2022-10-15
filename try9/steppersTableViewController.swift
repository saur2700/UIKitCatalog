//
//  steppersTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 25/02/22.
//

import UIKit

class steppersTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        self.title = "Steppers"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "defaultStepper") as! stepperTableViewCell
            
           return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "tintedStepper") as! stepperTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "customStepper") as! stepperTableViewCell
            return cell
        default:
            return UITableViewCell()
        }
    

   
}
    
    
}
