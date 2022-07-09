//
//  RegistrationPage.swift
//  lecture14.AnaDzebniauri
//
//  Created by Ana Dzebniauri on 09.07.22.
//

import UIKit



class RegistrationPage: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if (username.text?.count != 0) && (password.text?.count != 0) && (email.text?.count != 0) == true {
            let loginPage = self.storyboard?.instantiateViewController(withIdentifier: "LoginPage") as? LoginPage
            
            loginPage?.userNameValue = username!.text ?? ""
            loginPage?.passwordValue = password!.text ?? ""
            
            UserData.username = username!.text ?? ""
            UserData.password = password!.text ?? ""
            UserData.email = email!.text ?? ""
            
            guard let loginPage = loginPage else { return }
            
            navigationController?.pushViewController(loginPage, animated: true)
        }
        else {
            showAlert(sender)
        }
    }
    
    func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Error", message: "Fill Empty Field", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "ok", style: .cancel)
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
    
}
