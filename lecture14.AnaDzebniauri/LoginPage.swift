//
//  ViewController.swift
//  lecture14.AnaDzebniauri
//
//  Created by Ana Dzebniauri on 09.07.22.
//

import UIKit

class LoginPage: UIViewController {
    var userNameValue: String = ""
    var passwordValue: String = ""
    
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.username.layer.cornerRadius = 20
        self.password.layer.cornerRadius = 20
        self.signInButton.layer.cornerRadius = 20
        self.signUpButton.layer.cornerRadius = 20
        
        self.username.text = userNameValue
        self.password.text = passwordValue
    }
    
    @IBAction func signUpButton(_ sender: Any) {
    }
    
    
    @IBAction func signInButton(_ sender: Any) {
        let user = UserData.username
        let pswrd = UserData.password
        if username.text != user || password.text != pswrd {
            showAlert(sender)
        }
        else {
            let detailsPage = self.storyboard?.instantiateViewController(withIdentifier: "DetailsPage") as? DetailsPage
            guard let detailsPage = detailsPage else { return }
            navigationController?.pushViewController(detailsPage, animated: true)
        }
    }
        
    func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Oops", message: "incorrect credentials", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "ok", style: .cancel)
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
}

class UserData {
    static var username: String = ""
    static var password: String = ""
    static var email: String = ""
    
}
