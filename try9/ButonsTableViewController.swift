//
//  TableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 16/06/22.
//

import UIKit


let types = ["DEFAULT", "DETAIL DISCLOSURE", "ADD CONTACT", "CLOSE", "GRAY", "TINTED", "FILLED", "CORNER STYLE", "TOGGLE", "COLORED TITLE", "IMAGE", "ATTRIBUTED STRING", "SYMBOL", "LARGE", "STRING+SYMBOL", "SYMBOL+STRING", "BACKGROUND", "MULTI-TITLE", "ADD TO CART", "UPDATE ACTIVITY HANDLER", "UPDATE HANDLER", "UPDATE HANDLER(Button Image)"]



class ButtonsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 90
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
            
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonsCell1") as? ButtonsTableViewCell else{
                return UITableViewCell()
            }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonsCell2") as? ButtonsTableViewCell else{
                return UITableViewCell()
            }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonsCell3") as? ButtonsTableViewCell else{
                return UITableViewCell()
            }
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonsCell4") as? ButtonsTableViewCell else{
                return UITableViewCell()
            }
            return cell
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonsCell1") as? ButtonsTableViewCell else{
                return UITableViewCell()
            }
            cell.setData(description: types[indexPath.row])
            
            return cell
        }
        }
       
    }
    



