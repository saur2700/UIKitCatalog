//
//  MenuButtonsTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 16/06/22.
//

import UIKit
import SwiftUI

class MenuButtonsTableViewController: UITableViewController {

   
  

    let item1 = UIAction(title: "item1",
      image: UIImage(systemName: "")) { _ in
      // Perform action
    }
    let item2 = UIAction(title: "item2",
      image: UIImage(systemName: "")) { _ in
      // Perform action
    }
    let item3 = UIAction(title: "item3",
      image: UIImage(systemName: "")) { _ in
      // Perform action
    }
    let item4 = UIAction(title: "item4",
      image: UIImage(systemName: "")) { _ in
      // Perform action
    }
    let item5 = UIAction(title: "item5",
      image: UIImage(systemName: "")) { _ in
      // Perform action
    }
    let item6 = UIAction(title: "item6",
      image: UIImage(systemName: "")) { _ in
      // Perform action
    }
    
            let refresh =  UIAction(title: "Refresh", handler: { (_) in })
            let account =  UIAction(title: "Account", handler: { (_) in })
            
            let Name = UIAction(title: "Name", handler: { (_) in })
            let Recent = UIAction(title: "Recent", handler: { (_) in })

    var showAsActions: [UIAction] {
                return [
                    Name, Recent
                ]
            }
    var showAsMenu : UIMenu {
                return UIMenu(title: "Sort by", identifier: .none, children: showAsActions)
            }
    
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
        return 4
    }

  
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuButtons1", for: indexPath) as! MenuButtonsTableViewCell
            cell.dropDown.showsMenuAsPrimaryAction = true
            cell.dropDown.menu = UIMenu(title: "First", children: [item1, item2])
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuButtons2", for: indexPath) as! MenuButtonsTableViewCell
        
            cell.dropDown1.showsMenuAsPrimaryAction = true
            cell.dropDown1.menu = UIMenu(title: "First", children: [item1, item2, item3, item4, item5, item6])

            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuButtons3", for: indexPath) as! MenuButtonsTableViewCell
            cell.dropDown2.showsMenuAsPrimaryAction = true
            cell.dropDown2.menu = UIMenu(title: "",
                                         image: nil,
                                         identifier: nil,
                                         options: [],
                                         children: [refresh, account, showAsMenu])

            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuButtons4", for: indexPath) as! MenuButtonsTableViewCell
            cell.dropDown3.showsMenuAsPrimaryAction = true
            cell.dropDown3.menu = UIMenu(title: "",
                                         image: nil,
                                         identifier: nil,
                                         options: [],
                                         children: [refresh, account])

            return cell
            
        default:
            return UITableViewCell()
        }
        
    }
    

 

}
