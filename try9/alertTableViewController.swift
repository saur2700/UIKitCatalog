//
//  alertTableViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 03/03/22.
//

import UIKit

class type{
    let title: String
    init(title: String){
        self.title = title
    }
}

var source = [type(title: "Simple"), type(title: "OK/Cancel"), type(title: "Three Buttons"), type(title: "Text Entry"), type(title: "Secure Text Entry"), type(title: "Confirm/Cancel"), type(title: "Destructive")]



class alertTableViewController: UITableViewController {
    
    
    func simpleAlert(){
        let alert = UIAlertController(title: "A Short Title is Best", message: "A Message needs to be a short complete sentence", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { action in
            print("tapped")
        }))
        present(alert, animated: true)
        
    }
    
    func okAlert(){
        let alert = UIAlertController(title: "A Short Title is Best", message: "A Message needs to be a short complete sentence", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
            print("Cancel Tapped")
        }))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            print("OK Tapped")
        }))
        present(alert, animated: true)
    }
    
    func threeAlert(){
        let alert = UIAlertController(title: "A Short Title is Best", message: "A Message needs to be a short complete sentence", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
            print("Cancel Tapped")
        }))
        alert.addAction(UIAlertAction(title: "Choice One", style: .default, handler: {action in
            print("Choice One Tapped")
        }))
        alert.addAction(UIAlertAction(title: "Choice Two", style: .default, handler: {action in
            print("Choice Two Tapped")
        }))
        present(alert, animated: true)
    }

    func textFieldAlert(){
        let alert = UIAlertController(title: "A Short Title is Best", message: "A Message needs to be a short complete sentence", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
            print("Cancel Tapped")
        }))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in print("OK Tapped")
        }))
        alert.addTextField { (textField) in
            textField.text = ""
        }
        present(alert, animated: true)
    }
    func secureTextFieldAlert(){
        let alert = UIAlertController(title: "A Short Title is Best", message: "A Message needs to be a short complete sentence", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
            print("Cancel Tapped")
        }))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in print("OK Tapped")
        }))
        alert.addTextField { (textField) in
            textField.text = ""
            textField.isSecureTextEntry = true
        }
        present(alert, animated: true)
    }
    func confirmActionSheet(){
        let alert = UIAlertController(title: "A Short Title is Best", message: "A Message needs to be a short complete sentence", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
            print("Cancel Tapped")
        }))
        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { action in print("Confirm Tapped")
        }))
        present(alert, animated: true)
    }
    
    func destructiveActionSheet(){
        let alert = UIAlertController(title: "A Short Title is Best", message: "A Message needs to be a short complete sentence", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Destructive Option", style: .destructive, handler: {action in
            print("DO Tapped")
        }))
        alert.addAction(UIAlertAction(title: "Non Destructive Option", style: .default, handler: { action in print("NDO Tapped")
        }))
        present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerCell()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//        return source.count
//    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return 1
//    }

    
    @IBOutlet weak var alertLabel: UILabel!
    
    private func registerCell() {
        let cell = UINib(nibName: "alertCellTableViewCell",
                            bundle: nil)
        self.tableView.register(cell, forCellReuseIdentifier: "simpleAlert")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "simpleAlert") as? alertCellTableViewCell else {
                return UITableViewCell()
            }
        let requiredSection = source[indexPath.row]
            
        cell.setData(alertType: requiredSection.title)
            
            return cell
       
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 0{
            simpleAlert()
        }
        else if indexPath.section == 0 && indexPath.row == 1{
            okAlert()
        }
        else if indexPath.section == 0 && indexPath.row == 2{
            threeAlert()
        }
        else if indexPath.section == 0 && indexPath.row == 3{
            textFieldAlert()
        }
        else if indexPath.section == 0 && indexPath.row == 4{
            secureTextFieldAlert()
        }
        else if indexPath.section == 1 && indexPath.row == 0{
            confirmActionSheet()
        }
        else if indexPath.section == 1 && indexPath.row == 1{
            destructiveActionSheet()
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

