//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Ali-Malluh on 29/10/2023.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error {
                    print(e)
                } else {
                    self!.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
                
            }
        }
    }
    
}
