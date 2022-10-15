//
//  switchTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 24/02/22.
//

import UIKit

class switchTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        self.title = "Switch"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "defaultSwitch") as! switchTableViewCell
        
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "tintedSwitch") as! switchTableViewCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    


}
