//
//  progressTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 08/03/22.
//

import UIKit

class progressTableViewController: UITableViewController {

    
    
  
    
    let progress1 = Progress(totalUnitCount: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Progress bar"
           // self.progress.setProgress(progressFloat, animated: true)
        
       
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "default", for: indexPath) as! progressTableViewCell
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
                guard self.progress1.isFinished == false else{
                    timer.invalidate()
                    print("Finished")
                    return
                }
                self.progress1.completedUnitCount += 1
                let progressFloat = Float(self.progress1.fractionCompleted)
                cell.progress.setProgress(progressFloat, animated: true)
            })
            return cell
            
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "default", for: indexPath) as! progressTableViewCell
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
                guard self.progress1.isFinished == false else{
                    timer.invalidate()
                    print("Finished")
                    return
                }
                self.progress1.completedUnitCount += 1
                let progressFloat = Float(self.progress1.fractionCompleted)
                cell.desc.text = "BAR"
                cell.progress.progressViewStyle = .bar
                cell.progress.setProgress(progressFloat, animated: true)
            })
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "default", for: indexPath) as! progressTableViewCell
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
                guard self.progress1.isFinished == false else{
                    timer.invalidate()
                    print("Finished")
                    return
                }
                self.progress1.completedUnitCount += 1
                let progressFloat = Float(self.progress1.fractionCompleted)
                cell.progress.progressTintColor = .systemPink
                cell.progress.trackTintColor = .blue
                cell.desc.text = "TINTED"
                cell.progress.setProgress(progressFloat, animated: true)
            })
            return cell
            
        default:
            return UITableViewCell()
            
            
        
        }
    
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
