



import UIKit





//struct UIKit: Decodable {
//    let title: String
//    let imgUrl: String
//    var isExpanded: Bool
//    var detail: [DetailModel]
//}
//
//struct DetailModel: Decodable{
//    let title: String
//    let imgUrl: String?
//    var isExpanded: Bool
//    var detail: [DetailModel1]
//}

//struct DetailModel1: Decodable{
//    let title: String
//    let imgUrl: String?
//    var isExpanded: Bool
//}


struct kit{
    let title: String
    let isExpandable: Bool
    var detailCount: Int
    let level: Int
    var currentExpandedState: Bool     //true -> expanded    false -> not expanded
//    var totalCount: Int
    let imgUrl: String
}

var dataSource1 = [kit]()

//var dataSource = [UIKit]()


class CatalogTableViewController: UITableViewController {
    
  //  cotrol 14
  // views 29
    
    let elementsInControls = 15
    let elementsInViews = 15
    let elementsInPickers = 6
    var parentModel = [kit(title: "Controls", isExpandable: true, detailCount: 8, level: 0, currentExpandedState: false, imgUrl: "slider.horizontal.3"), kit(title: "Buttons", isExpandable: true, detailCount: 2, level: 1, currentExpandedState: false, imgUrl: "square.on.square"), kit(title: "Button", isExpandable: false, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: "square"), kit(title: "Menu Buttons", isExpandable: false, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: "square.text.square"), kit(title: "Page Controls", isExpandable: true, detailCount: 2, level: 1, currentExpandedState: false, imgUrl: "photo.on.rectangle"), kit(title: "Page Control", isExpandable: false, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Custom Page Controls", isExpandable: false, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Search Bar", isExpandable: true, detailCount: 2, level: 1, currentExpandedState: false, imgUrl: "magnifyingglass"), kit(title: "Default Search Bar", isExpandable: false, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Custom Search Bar", isExpandable: false, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Segmented Controls", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Slider", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Switches", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Text field", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Steppers", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""),
        kit(title: "Views", isExpandable: true, detailCount: 9, level: 0, currentExpandedState: false, imgUrl: "person.crop.rectangle.stack"), kit(title: "Activity Indicators", isExpandable: true, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Alert Controllers", isExpandable: true, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""),
        kit(title: "Text View", isExpandable: true, detailCount: 0, level: 1, currentExpandedState: false,imgUrl:""), kit(title: "Image Views", isExpandable: true, detailCount: 2, level: 1, currentExpandedState: false, imgUrl: "photo"), kit(title: "Image View", isExpandable: true, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "SF Symbol", isExpandable: true, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Progress Views", isExpandable: true, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Stack Views", isExpandable: true, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""),
        kit(title: "Toolbars", isExpandable: true, detailCount: 3, level: 1, currentExpandedState: false, imgUrl: "hammer"), kit(title: "Default Toolbar", isExpandable: true, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Tinted Toolbar", isExpandable: true, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Custom Toolbar", isExpandable: true, detailCount: 0, level: 2, currentExpandedState: false, imgUrl: ""), kit(title: "Visual Effect", isExpandable: true, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Web View", isExpandable: true, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""),
        kit(title: "Pickers", isExpandable: true, detailCount: 5, level: 0, currentExpandedState: false, imgUrl: "list.bullet"), kit(title: "Date Picker", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Color Picker", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Font Picker", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Image Picker", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: ""), kit(title: "Picker View", isExpandable: false, detailCount: 0, level: 1, currentExpandedState: false, imgUrl: "")
    ]
    

    
    var dummyModel = [kit(title: "Controls", isExpandable: true, detailCount: 8, level: 0, currentExpandedState: false, imgUrl: "slider.horizontal.3"), kit(title: "Views", isExpandable: true, detailCount: 9, level: 0, currentExpandedState: false, imgUrl: "person.crop.rectangle.stack"), kit(title: "Pickers", isExpandable: true, detailCount: 5, level: 0, currentExpandedState: false, imgUrl: "list.bullet")]
    
    
    
    
    var dictIndices = [String: IndexPath]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIKitCatalog"
        for(index, element) in self.parentModel.enumerated() {
            self.dictIndices[element.title] = IndexPath(row: index, section: 0)
                }
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        cell?.accessoryType = .detailDisclosureButton
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return dummyModel.count
        
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        
        if dummyModel[indexPath.row].level == 0{
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? FirstTableViewCell else{
                return UITableViewCell()
            }
            
            
            
            cell.setData(image: dummyModel[indexPath.row].imgUrl, description: dummyModel[indexPath.row].title)
            
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: UIScreen.main.bounds.width)
            
            
            return cell
        }
        
        else if dummyModel[indexPath.row].level == 1 && dummyModel[indexPath.row].detailCount == 0{
            
            guard dummyModel.indices.contains(indexPath.section) == true else{
                return UITableViewCell()
            }
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell") as? DetailTableViewCell else{
                return UITableViewCell()
            }

            

            cell.setData(image: dummyModel[indexPath.row].imgUrl, description: dummyModel[indexPath.row].title)
            
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: UIScreen.main.bounds.width)
            
            return cell
        }
        
        else if dummyModel[indexPath.row].level == 1 && dummyModel[indexPath.row].detailCount > 0{
            
            guard dummyModel.indices.contains(indexPath.section) == true else{
                return UITableViewCell()
            }
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell2") as? DetailTableViewCell2 else{
                return UITableViewCell()
            }

            cell.setData(image: dummyModel[indexPath.row].imgUrl, description: dummyModel[indexPath.row].title)
            
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: UIScreen.main.bounds.width)
            
            return cell
        }
        
        else {
            guard dummyModel.indices.contains(indexPath.section) == true else{
                return UITableViewCell()
            }
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell1") as? DetailTableViewCell1 else{
                return UITableViewCell()
            }
            
           
            
            cell.setData(image: dummyModel[indexPath.row].imgUrl, description: dummyModel[indexPath.row].title)
            
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: UIScreen.main.bounds.width)
            
            return cell
        }
    }
    
    func AddRowsL2(index: Int, title: String){
    
        let reqdItem = self.dummyModel[index]
        let reqdIndex = self.dictIndices[reqdItem.title]!
        let reqdElementDetailCount = self.parentModel[reqdIndex.row].detailCount
        print(reqdItem)
        var k: Int = 1
        while(k <= reqdElementDetailCount){
            dummyModel.insert(parentModel[reqdIndex.row + k], at: index+k)
            k += 1
        }
        tableView.reloadData()

    }
    
    
    func DeleteRowsL2(index: Int, title: String){
        let reqdItem = self.dummyModel[index]
        let reqdIndex = self.dictIndices[reqdItem.title]!
        let reqdElementDetailCount = self.parentModel[reqdIndex.row].detailCount
        var k: Int = 0
        while(k < reqdElementDetailCount){
            dummyModel.remove(at: index+1)
            k += 1
        }
        tableView.reloadData()
    }
    
    func AddRowsL1(index: Int, title: String){
        
        let reqdItem = self.dummyModel[index]
        let reqdIndex = self.dictIndices[reqdItem.title]!
        let reqdElementDetailCount = self.parentModel[reqdIndex.row].detailCount
        var k: Int = 1
        while(parentModel[k].level != 0){
            if(parentModel[k].level == 1){
            dummyModel.insert(parentModel[k], at: index+1)
            }
            k += 1
        }
        tableView.reloadData()

    }
    
    func DeleteRowsL1(title: String, index: Int){
       
        var j: Int = index + 1
        var count: Int = 0
        if title == "Pickers"{
            while j != dummyModel.endIndex{
                count += 1
                j += 1
            }
        }
        else{
            while(dummyModel[j].level != 0){
                count += 1
                j += 1
            }
        }
        var k: Int = 0
        while(k < count){
            dummyModel.remove(at: index+1)
            k += 1
        }
        
        
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if dummyModel[indexPath.row].title == "Controls"{
            
            tableView.deselectRow(at: indexPath, animated: true)
            dummyModel[0].currentExpandedState = !dummyModel[0].currentExpandedState
            
            if dummyModel[0].currentExpandedState == true{
                
//               AddRowsL1(index: indexPath.row, title: "Controls")
                
                let reqdItem = self.dummyModel[indexPath.row]
                let reqdIndex = self.dictIndices[reqdItem.title]!
                var k: Int = 14
                while(k >= 0){
                    if parentModel[k].level == 1{
                        dummyModel.insert(parentModel[k], at: indexPath.row + 1)
                    }
                    k -= 1
                }
                tableView.reloadData()
            }
            
            
            else{
                DeleteRowsL1(title: "Controls", index: indexPath.row)
            }
            
        }
        
        else if dummyModel[indexPath.row].title == "Buttons"{
            
            tableView.deselectRow(at: indexPath, animated: true)
            
            var i: Int = 0
            while(dummyModel[i].title != dummyModel[indexPath.row].title){
                i += 1
            }
            
            dummyModel[i].currentExpandedState = !dummyModel[i].currentExpandedState
            
            if dummyModel[i].currentExpandedState == true{
            AddRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
            else{
                DeleteRowsL2( index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
            
        }
        else if dummyModel[indexPath.row].title == "Page Controls"{
            
            tableView.deselectRow(at: indexPath, animated: true)
            var i: Int = 0
            while(dummyModel[i].title != dummyModel[indexPath.row].title){
                i += 1
            }
            
            dummyModel[i].currentExpandedState = !dummyModel[i].currentExpandedState
           
            if dummyModel[i].currentExpandedState == true{
              
                AddRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
            else{
           
            DeleteRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
            
        }
        else if dummyModel[indexPath.row].title == "Search Bar"{
            tableView.deselectRow(at: indexPath, animated: true)
            var i: Int = 0
            while(dummyModel[i].title != dummyModel[indexPath.row].title){
                i += 1
            }
            dummyModel[i].currentExpandedState = !dummyModel[i].currentExpandedState
            if dummyModel[i].currentExpandedState == true{
       
                AddRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
            else{
   
            DeleteRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
        }
        else if dummyModel[indexPath.row].title == "Default Search Bar"{
            performSegue(withIdentifier: "SearchBarSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Custom Search Bar"{
            performSegue(withIdentifier: "CustomSearchBarSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Button"{
            performSegue(withIdentifier: "ButtonsSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Menu Buttons"{
            performSegue(withIdentifier: "MenuButtonsSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Page Control"{
            performSegue(withIdentifier: "PageControlSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Segmented Controls"{
            performSegue(withIdentifier: "segmentSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Slider"{
            performSegue(withIdentifier: "sliderSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Switches"{
            performSegue(withIdentifier: "switchSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Text field"{
            performSegue(withIdentifier: "textSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Steppers"{
            performSegue(withIdentifier: "steppersSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Views"{
            tableView.deselectRow(at: indexPath, animated: true)
            var i: Int = 0
            while(dummyModel[i].title != dummyModel[indexPath.row].title){
                i += 1
            }
            dummyModel[i].currentExpandedState = !dummyModel[i].currentExpandedState
            if dummyModel[i].currentExpandedState == true{
               // AddRowsL1(index: indexPath.row, section: 0, title: "Views")
                
                
                
                for(index, element) in self.parentModel.enumerated() {
                    self.dictIndices[element.title] = IndexPath(row: index, section: 0)
                }
                
                
                let reqdItem = self.dummyModel[indexPath.row]
                let reqdIndex = self.dictIndices[reqdItem.title]!
                var k: Int = 30
                while(k >= 15){
                    if parentModel[k].level == 1{
                        dummyModel.insert(parentModel[k], at: indexPath.row + 1)
                    }
                    k -= 1
                }
                tableView.reloadData()
                
                
//                tableView.beginUpdates()
//
//                var j: Int = 15
//                while j < 30{
//                    if parentModel[j].level == 1{
//                        dummyModel.insert(parentModel[j], at: dummyModel.count - 1)
//                    }
//                    j += 1
//                }
//
//
//                var k: Int = 1
//
//                while k <= parentModel[15].detailCount{
//                    tableView.insertRows(at: [IndexPath.init(row: indexPath.row + k, section: 0)], with: .automatic)
//                    k += 1;
//                }
//
//                tableView.endUpdates()
            }
            else {
                DeleteRowsL1(title: "Views", index: indexPath.row)
            }
            
        }
        else if dummyModel[indexPath.row].title == "Activity Indicators"{
            performSegue(withIdentifier: "activitySegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Alert Controllers"{
            performSegue(withIdentifier: "alertSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Text View"{
            performSegue(withIdentifier: "textFieldSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Image Views"{
            tableView.deselectRow(at: indexPath, animated: true)
            var i: Int = 0
            while(dummyModel[i].title != dummyModel[indexPath.row].title){
                i += 1
            }
            dummyModel[i].currentExpandedState = !dummyModel[i].currentExpandedState
            
            if dummyModel[i].currentExpandedState == true{
                print(dummyModel)
            AddRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
            else{
            DeleteRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
        }
        else if dummyModel[indexPath.row].title == "Image View"{
            performSegue(withIdentifier: "ImageViewsSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "SF Symbol"{
            performSegue(withIdentifier: "SfSymbolSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Progress Views"{
            performSegue(withIdentifier: "progressSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Stack Views"{
            performSegue(withIdentifier: "stackViewSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Default Toolbar"{
            performSegue(withIdentifier: "DefaultToolBarSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Tinted Toolbar"{
            performSegue(withIdentifier: "tintedToolBarSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Custom Toolbar"{
            performSegue(withIdentifier: "CustomToolbarSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Toolbars"{
            tableView.deselectRow(at: indexPath, animated: true)
            
            var i: Int = 0
            while(dummyModel[i].title != "Toolbars"){
                i += 1
            }
            
            dummyModel[i].currentExpandedState = !dummyModel[i].currentExpandedState
            
            if dummyModel[i].currentExpandedState == true{
                AddRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
            else if dummyModel[i].currentExpandedState == false{
            DeleteRowsL2(index: indexPath.row, title: dummyModel[indexPath.row].title)
            }
        }
        else if dummyModel[indexPath.row].title == "Visual Effect"{
            performSegue(withIdentifier: "visualEffectSegue", sender: .none)
        }
        
        else if dummyModel[indexPath.row].title == "Web View"{
            performSegue(withIdentifier: "webViewSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Pickers"{
            tableView.deselectRow(at: indexPath, animated: true)
            var i: Int = 0
            while(dummyModel[i].title != "Pickers"){
                i += 1
            }
            dummyModel[i].currentExpandedState = !dummyModel[i].currentExpandedState
            if dummyModel[i].currentExpandedState == true{
                
                for(index, element) in self.parentModel.enumerated() {
                    self.dictIndices[element.title] = IndexPath(row: index, section: 0)
                }
                
                
                let reqdItem = self.dummyModel[indexPath.row]
                let reqdIndex = self.dictIndices[reqdItem.title]!
                var k: Int = 35
                while(k >= 31){
                    if parentModel[k].level == 1{
                        dummyModel.insert(parentModel[k], at: indexPath.row + 1)
                    }
                    k -= 1
                }
                tableView.reloadData()
                
            }
            else{
                
                DeleteRowsL1(title: "Pickers", index: indexPath.row)

            }
        }
        else if dummyModel[indexPath.row].title == "Date Picker"{
            performSegue(withIdentifier: "datePickerSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Color Picker"{
            performSegue(withIdentifier: "colorPickerSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Font Picker"{
            performSegue(withIdentifier: "fontPickerSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Image Picker"{
            performSegue(withIdentifier: "photoPickerSegue", sender: .none)
        }
        else if dummyModel[indexPath.row].title == "Picker View"{
            performSegue(withIdentifier: "pickerViewSegue", sender: .none)
        }
    }
    
    
    
}









//func computeCount(_ kits: [UIKitModel])-> Int {
//    var count = 0
//    kits.forEach { kit in
//        if kit.detail.isEmpty == true{
//            count += 1
//        }
//        else {
//            count += 1 + computeCount(kit.detail)
//        }
//    }
//    return count
//
//}
