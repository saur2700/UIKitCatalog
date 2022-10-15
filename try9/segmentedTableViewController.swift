//
//  segmentedTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 23/02/22.
//

import UIKit

class segmentedTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 90
        self.title = "Segmented View"
        
    }

    
        override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            guard let cell = (tableView.dequeueReusableCell(withIdentifier: "segmentControllerCell")) as? segmentedTableViewCell else { return UITableViewCell() }
            cell.segmentedText.text = "CUSTOM"
            
            return cell
        case 1:
            guard let cell = (tableView.dequeueReusableCell(withIdentifier: "iconSegmentControllerCell")) as? segmentedTableViewCell else { return UITableViewCell() }
            cell.segmentedText.text = "CUSTOM SEGMENT"
            
            return cell
        case 2:
            guard let cell = (tableView.dequeueReusableCell(withIdentifier: "segmentControllerCell")) as? segmentedTableViewCell else { return UITableViewCell() }
            cell.checkSegment.backgroundColor = .systemGreen
            cell.segmentedText.text = "CUSTOM BACKGROUND"
            
            return cell
        case 3:
            guard let cell = (tableView.dequeueReusableCell(withIdentifier: "segmentControllerCell")) as? segmentedTableViewCell else { return UITableViewCell() }
            cell.segmentedText.text = "ACTION BASED"
            
            return cell
        case 4:
            guard let cell = (tableView.dequeueReusableCell(withIdentifier: "segmentControllerCell")) as? segmentedTableViewCell else { return UITableViewCell() }
            cell.segmentedText.text = "TINTED"
            
            return cell
            
        default:
            return UITableViewCell()
        }
        
    }
    
    

}
