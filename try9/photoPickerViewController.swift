//
//  photoPickerViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 10/03/22.
//

import UIKit
import Photos
import PhotosUI


class photoPickerViewController: UIViewController, PHPickerViewControllerDelegate {
    
    

    
    
    @IBOutlet weak var photo: UIImageView!
    
   
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true, completion: nil)
        results.forEach{result in result.itemProvider.loadObject(ofClass: UIImage.self){reading, error in
            guard let image = reading as? UIImage, error == nil else{
                return
            }
            DispatchQueue.main.async {
                                    self.photo.image = image
                                }
        }}
    }
    

    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("UIPhotoPicker", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        self.title = "Photo Picker"
        button.addTarget(self, action: #selector(tappedPickPhoto), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x: 20, y: view.frame.size.height - 100, width: view.frame.size.width - 40, height: 50)
    }
    
    @objc private func tappedPickPhoto(){
        var config = PHPickerConfiguration(photoLibrary: .shared())
        config.selectionLimit = 1
        config.filter = PHPickerFilter.any(of: [.images, .livePhotos])
        let vc = PHPickerViewController(configuration: config)
        vc.delegate = self
        present(vc, animated: true)
        
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
