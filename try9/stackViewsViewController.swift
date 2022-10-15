//
//  stackViewsViewController.swift
//  try9
//
//  Created by Saurav  Kumar on 11/03/22.
//

import UIKit

class stackViewsViewController: UIViewController {

    @IBOutlet weak var firstStack: UIStackView!
    @IBOutlet weak var secondStack: UIStackView!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Stack Views"
        // Do any additional setup after loading the view.
    }
    @IBAction func showSecondStack(_ sender: Any) {
        let showDetailAnimator = UIViewPropertyAnimator(duration: 0.25, curve: .easeIn, animations: { [weak self] in
            self?.secondStack.isHidden = false
            self?.plus.isHidden = true
        })
        showDetailAnimator.startAnimation()
    }
    @IBAction func hideSecondStack(_ sender: Any) {
        let hideDetailAnimator = UIViewPropertyAnimator(duration: 0.25, curve: .easeOut, animations: { [weak self] in
            // Reveal the further details stack view and hide the plus button.
            self?.secondStack.isHidden = true
            self?.plus.isHidden = false
        })
        hideDetailAnimator.startAnimation()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        secondStack.isHidden = true
        plus.isHidden = false
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
