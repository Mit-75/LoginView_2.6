//
//  LoginViewController.swift
//  LoginView_2.6
//
//  Created by Dmitry Parhomenko on 26.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 8
        
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
    
    @IBAction func loginButtonAction() {
        showAlert(withTitle: "Invalid login or password", andMessage: "Pliese, enter correct login and password")
    }
    
    @IBAction func userNameButtonAction() {
        showAlert(withTitle: "Hello!", andMessage: "Your Name is User")
    }
    
    @IBAction func passwordButtonAction() {
        showAlert(withTitle: "Ok!", andMessage: "Your password: 123")
    }
    
//    // Метод для скрытия клавиатуры тапом по экрану
//    override func touchesBegan(_ touches: Set, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        userNameTF.resignFirstResponder()
    }


}

