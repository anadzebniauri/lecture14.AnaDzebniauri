//
//  DetailsPage.swift
//  lecture14.AnaDzebniauri
//
//  Created by Ana Dzebniauri on 09.07.22.
//

import UIKit


class DetailsPage: UIViewController {

    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.text = UserData.username
        email.text = UserData.email
        
        // Do any additional setup after loading the view.
    }

}
