//
//  textViewViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 07/03/22.
//

import UIKit

class textViewViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var bottomImage: UIImageView!
    let btn = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissMyKeyboard))
   
    override func viewDidLoad() {
        super.viewDidLoad()
        textview.delegate = self
        self.title = "Text Field"
        //setDoneOnKeyboard()
//        let toolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0,  width: self.view.frame.size.width, height: 30))
//                let flexSpace = UIBarButtonItem(barButtonSystemItem:    .flexibleSpace, target: nil, action: nil)
//                let doneBtn: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissMyKeyboard))
//                toolbar.setItems([flexSpace, doneBtn], animated: false)
//                toolbar.sizeToFit()
//                self.textview.inputAccessoryView = toolbar
        bottomImage.image = UIImage(named: "sunrise")
        
        
    }
   @objc func tappedDone() {
       btn.tintColor = .white
  
    }
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        btn.customView?.isHidden = false
        textview.resignFirstResponder()
        navigationItem.rightBarButtonItem = btn
    }

    
    
    
//    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//        if(text == "\n") {
//            textView.resignFirstResponder()
//            return false
//        }
//        return true
//    }
    
    func setDoneOnKeyboard() {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissMyKeyboard))
        keyboardToolbar.items = [flexBarButton, doneBarButton]
        self.textview.inputAccessoryView = keyboardToolbar
    }
    @objc func dismissMyKeyboard() {
           view.endEditing(true)
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
