//
//  pickerViewViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 10/03/22.
//

import UIKit
 
var val = 0...255

var stringval = val.map{String($0)}


class pickerViewViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
  
    @IBOutlet weak var window: UIView!
    
//    self?.window.backgroundColor = .red
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 255
    }
    
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        switch component{
        case 0:
            return NSAttributedString(string: stringval[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        case 1:
            return NSAttributedString(string: stringval[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.green])
        case 2:
            return NSAttributedString(string: stringval[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.blue])
        default:
            return NSAttributedString()
        }
        
    }

    @IBOutlet weak var picker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        self.title = "Picker View"
        self.window.backgroundColor = .red
    }
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        colorView.backgroundColor = UIColor(displayP3Red: 255, green: 255, blue: 255, alpha: 255)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
