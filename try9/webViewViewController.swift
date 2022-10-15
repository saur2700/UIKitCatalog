//
//  webViewViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 08/03/22.
//

import UIKit


import WebKit

class webViewViewController: UIViewController{

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadHTMLString("<!DOCTYPE html><html><head><b>This is HTML Content Inside a <u>WKWebView</u> </b></head><body><p>For more information refer to <href>https://developer.apple.com/documentation/uikit/uiwebview</href></p></body></html>", baseURL: nil)
        self.title = "Web View"
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
