//
//  fontPickerViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 09/03/22.
//

import UIKit

class fontPickerViewController: UIViewController, UIFontPickerViewControllerDelegate{


    
 
    @IBOutlet weak var sampleFont: UILabel!
   
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("UIFontPicker", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        self.title = "Font Picker"
       button.addTarget(self, action: #selector(tappedPickFont), for: .touchUpInside)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x: 20, y: view.frame.size.height - 100, width: view.frame.size.width - 40, height: 50)
    }
    
    
    @objc private func tappedPickFont(){
        let config = UIFontPickerViewController.Configuration()
        config.includeFaces = false
        let vc = UIFontPickerViewController(configuration: config)
        vc.delegate = self
        present(vc, animated:  true)
    }
    
    
    func fontPickerViewControllerDidCancel(_ viewController: UIFontPickerViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
    
    
    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
        viewController.dismiss(animated: true, completion: nil)
        guard let desc = viewController.selectedFontDescriptor else{
            return
        }
        sampleFont.font = UIFont(descriptor: desc, size: 24)
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
