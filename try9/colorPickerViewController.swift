//
//  colorPickerViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 09/03/22.
//

import UIKit

class colorPickerViewController: UIViewController, UIColorPickerViewControllerDelegate{
    
    @IBOutlet weak var colorView: UIView!
    @IBAction func pickerButton(_ sender: Any) {
        let picker = UIColorPickerViewController()
        picker.selectedColor = self.view.backgroundColor!
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
    }
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        self.view.backgroundColor = viewController.selectedColor
        
    }
    
    
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        viewController.dismiss(animated: true, completion: nil)
            self.colorView.backgroundColor = viewController.selectedColor
    }
    
//    private let button: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .white
//        button.setTitle("UIColorPicker", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        let picker = UIColorPickerViewController()
////
////        picker.selectedColor = self.view.backgroundColor ?? .white
////
////        picker.delegate = self
//        view.addSubview(button)
//       button.addTarget(self, action: #selector(tappedPickColor), for: .touchUpInside)
//        self.title = "Color Picker"
//        //self.present(picker, animated: true, completion: nil)
//
//        let btn = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(showPicker))
//        navigationItem.rightBarButtonItem = btn;
//    }
//
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        button.frame = CGRect(x: 20, y: view.frame.size.height - 100, width: view.frame.size.width - 40, height: 50)
//    }
//
//
//
//    @objc private func tappedPickColor(){
//
//        let vc = UIColorPickerViewController()
//        vc.delegate = self
//        present(vc, animated:  true)
//    }
//
//    @IBOutlet weak var colorView: UIView!
//    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
//        viewController.dismiss(animated: true, completion: nil)
//    }
//
//    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
//        viewController.dismiss(animated: true, completion: nil)
//
//        guard let desc = viewController.selectedColor else{
//            return
//        }
//        colorView.backgroundColor = UIColor(
//
//    }
//
//    @objc func showPicker(){
//
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


