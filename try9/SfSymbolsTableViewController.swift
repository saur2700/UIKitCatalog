//
//  SfSymbolsTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 20/06/22.
//

import UIKit
import SwiftUI
import CoreMedia

class SfSymbolsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! SfSymbolTableViewCell
            cell.imgView1.image = UIImage(systemName: "cloud.sun.rain.fill")
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SfSymbolTableViewCell
            cell.imgView2.image = UIImage(systemName: "cloud.sun.rain.fill")
            cell.imgView2.tintColor = .systemPink
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! SfSymbolTableViewCell
            let largeFont = UIFont.systemFont(ofSize: 80)
            let configuration = UIImage.SymbolConfiguration(font: largeFont)
            cell.imgView3.image = UIImage(systemName: "cloud.sun.rain.fill", withConfiguration: configuration)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! SfSymbolTableViewCell
            let config = UIImage.SymbolConfiguration(hierarchicalColor: .red)
               
            cell.imgView4.image = UIImage(systemName: "cloud.sun.rain.fill", withConfiguration: config)
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell5", for: indexPath) as! SfSymbolTableViewCell
            let config = UIImage.SymbolConfiguration(paletteColors: [.orange, .yellow])
            cell.imgView5.image = UIImage(systemName: "battery.100.bolt", withConfiguration: config)
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell6", for: indexPath) as! SfSymbolTableViewCell
            let config = UIImage.SymbolConfiguration.preferringMulticolor()

            cell.imgView6.image = UIImage(systemName: "circle.hexagongrid.circle.fill",withConfiguration: config)
            return cell
        default:
            return UITableViewCell()
        }
    }
    

    

   

}
