//
//  DetailTableViewCell.swift
//  try9
//
//  Created by Saurav  Kumar on 09/02/22.
//

import UIKit



class DetailTableViewCell: UITableViewCell {

 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.lblDescription.text?.removeAll()
        self.imgViewIcon.image = nil
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    
//    func downloadImage(from url: URL) {
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data, error == nil else { return }
//            DispatchQueue.main.sync() { [weak self] in
//
//                self?.imgViewIcon.image = UIImage(data: data)
//
//            }
//        }.resume()
//    }
   
   
    
   
    @IBOutlet weak var imgViewIcon: UIImageView!
    
    
    @IBOutlet weak var lblDescription: UILabel!
    
    func setData(image: String?, description: String){
   
        if let imageName = image{
        self.imgViewIcon.image = UIImage(systemName: imageName)
            imgViewIcon.contentMode = .scaleAspectFit
    }
          
        self.lblDescription.text = description
    }
    
}
/*
 //
 //  ViewController.swift
 //  try6
 //
 //  Created by Saurav  Kumar on 27/01/22.
 //

 import UIKit


 struct DetailCellData{
     let title: String
     let imgString: String
 }


 class UIKitModel{
     let sectionData: DetailCellData
     //let moresubtitle: [UIKitModel]
     let subtitle: [DetailCellData]
     var isExpanded: Bool
     init(sectionData: DetailCellData, /*moresubtitle: [UIKitModel]*/
          subtitle: [DetailCellData], isExpanded: Bool){
         self.sectionData = sectionData
         //self.moresubtitle = moresubtitle
         self.subtitle = subtitle
         self.isExpanded = isExpanded
     }
 }

 var myIndex = 0



 class TableViewController: UITableViewController {

     var tableViewData = [UIKitModel(sectionData: DetailCellData(title: "Controls", imgString:"slider.horizontal.3"), /*moresubtitle: [UIKitModel(sectionData: DetailCellData(title: "Buttons", imgString: ""), moresubtitle: [], subtitle: [DetailCellData(title: "Buttons", imgString: "square.om.square"), DetailCellData(title: "Menu Buttons", imgString: "")], isExpanded: false)]*/ subtitle: [ DetailCellData(title: "Buttons", imgString: "square.on.square"),
          DetailCellData(title: "Page Controls", imgString: "photo.on.rectangle"), DetailCellData(title: "Search Bars", imgString: "magnifyingglass"), DetailCellData(title: "Segmented Controls", imgString: ""), DetailCellData(title: "Sliders", imgString: ""), DetailCellData(title: "Switches", imgString: ""), DetailCellData(title: "Text Fields", imgString: ""), DetailCellData(title: "Steppers", imgString: "")], isExpanded: false),
                          
                          UIKitModel(sectionData: DetailCellData(title: "Views", imgString: "person.circle"),/*moresubtitle: []*/ subtitle: [DetailCellData(title: "Activity Indicators", imgString: ""), DetailCellData(title: "Alert Controllers", imgString: ""), DetailCellData(title: "Text Views", imgString: ""), DetailCellData(title: "Image Views", imgString: "photo"), DetailCellData(title: "Stack Views", imgString: ""), DetailCellData(title: "Progress Views", imgString: ""), DetailCellData(title: "Tool Bars", imgString: "hammer"), DetailCellData(title: "Visual Effects", imgString: ""), DetailCellData(title: "Web Views", imgString: "")], isExpanded: false),
                          
                          UIKitModel(sectionData: DetailCellData(title: "Pickers", imgString: "list.bullet"), /*moresubtitle: []*/ subtitle: [DetailCellData(title: "Date Picker", imgString: ""), DetailCellData(title: "Color Picker", imgString: ""), DetailCellData(title: "Font Picker", imgString: ""), DetailCellData(title: "Image Picker", imgString: ""), DetailCellData(title: "Picker View", imgString: "")], isExpanded: false),
     ]
     
     override func viewDidLoad() {
         super.viewDidLoad()
        
     }

     
     
     override func numberOfSections(in tableView: UITableView) -> Int {
         return tableViewData.count
     }
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         let requiredSection = tableViewData[section]
         if requiredSection.isExpanded == true{
             return 1 + requiredSection.subtitle.count
         }
         return 1
     }
     
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         if indexPath.row == 0 {
             let requiredSection = tableViewData[indexPath.section].sectionData
             guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? FirstTableViewCell else{
                 return UITableViewCell()
             }
             cell.setData(image:requiredSection.imgString, description: requiredSection.title)
             return cell
             
         }
         else{
             //let morerequiredsection = tableViewData[indexPath.section].moresubtitle[indexPath.row]
             
         let requiredSection = tableViewData[indexPath.section].subtitle[indexPath.row - 1]
             guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell") as? DetailTableViewCell else{
                return UITableViewCell()
             }
         cell.setData(image: requiredSection.imgString, description: requiredSection.title)
               
                            return cell
         }
       

     }
     
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
         if indexPath.row == 0{
         tableViewData[indexPath.section].isExpanded = !tableViewData[indexPath.section].isExpanded
         
         tableView.reloadSections([indexPath.section], with: .none)
             
         }
         else{
             myIndex = indexPath.row
             performSegue(withIdentifier: "home", sender: self)
         }
         
        
     }

 }



     

 //var tableViewData = [UIKitModel(sectionData: DetailCellData(title: "Controls", imgString:"slider.horizontal.3"), subtitle: [UIKitModel(sectionData: DetailCellData(title: "Buttons"), subtitle: <#T##[DetailCellData]#>, isExpanded: <#T##Bool#>)DetailCellData(title: "Buttons", imgString: "square.on.square"), DetailCellData(title: "Page Controls", imgString: "photo.on.rectangle"), DetailCellData(title: "Search Bars", imgString: "magnifyingglass"), DetailCellData(title: "Segmented Controls", imgString: ""), DetailCellData(title: "Sliders", imgString: ""), DetailCellData(title: "Switches", imgString: ""), DetailCellData(title: "Text Fields", imgString: ""), DetailCellData(title: "Steppers", imgString: "")], isExpanded: false),

 
 */
