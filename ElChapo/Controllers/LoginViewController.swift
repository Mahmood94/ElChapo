//
//  ViewController.swift
//  ElChapo
//
//  Created by Mahmood Al-haddad on 11/10/19.
//  Copyright © 2019 Mahmood Al-haddad. All rights reserved.
//

import UIKit

class LoginViewController: ABCViewController, KeyboardDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var emailTextField: ABCTextFieldView!
    @IBOutlet weak var passwordTextField: ABCTextFieldView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.textField.keyboardType = .emailAddress
        emailTextField.textField.placeholder = "Email"
        passwordTextField.textField.isSecureTextEntry = true
        passwordTextField.textField.placeholder = "Password"
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        self.showLoadingView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.dismissLoadingView()
        }
    }
    
    func keyboardWillShow(note: NSNotification) {
        print(note)
    }
    
    func keyboardWillHide(note: NSNotification) {
        print(note)
    }
    
}

