//
//  BottomSheetPage.swift
//  lecture14.AnaDzebniauri
//
//  Created by Ana Dzebniauri on 09.07.22.
//

import UIKit


class BottomSheetPage: UIViewController {

    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func yesBtn(_ sender: Any) {
//        if self.navigationController != nil {
//            self.dismiss(animated: true)
//        }
    func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        }
        viewWillDisappear(true)
    }
    
    
    @IBAction func noBtn(_ sender: Any) {
    }
    
    

}
