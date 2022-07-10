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
        if  self.navigationController == nil {
//            self.dismiss(animated: true)
            let loginPage = self.storyboard?.instantiateViewController(withIdentifier: "LoginPage") as? LoginPage
            guard let loginPage = loginPage else { return }
            self.navigationController?.pushViewController(loginPage, animated: true)
        }
        else {
            self.navigationController?.popViewController(animated: true)
        }
    }

    
    @IBAction func noBtn(_ sender: Any) {
        if self.navigationController == nil {
            self.dismiss(animated: true)
        }
        else {
            self.navigationController?.popViewController(animated: true)
        }
    }
}
