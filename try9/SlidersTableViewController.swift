//
//  SlidersTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 24/02/22.
//

import UIKit

class SlidersTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        self.title = "Sliders"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "sliderCell") as! sliderTableViewCell
            cell.sliderLabel.text = "DEFAULT"
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "customSliderCell") as! sliderTableViewCell
            cell.sliderLabel.text = "CUSTOM"
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "iconSliderCell") as! sliderTableViewCell
            cell.sliderLabel.text = "MIN AND MAX IMAGES"
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "tintSliderCell") as! sliderTableViewCell
            cell.sliderLabel.text = "TINTED"
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    

    

}
