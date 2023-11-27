//
//  LoginViewController.swift
//  LoginView_2.6
//
//  Created by Dmitry Parhomenko on 26.11.2023.
//

import UIKit

final class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 8
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
            @IBAction func userNameButtonAction() {
                showAlert(withTitle: "Hello!", andMessage: "Your Name is User")
            }
    
            @IBAction func passwordButtonAction() {
                showAlert(withTitle: "Ok!", andMessage: "Your password: 123")
            }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == "User" && passwordTF.text == "123" else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Pliese, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? WelcomViewController
        secondVC?.welcomeLab = userNameTF.text
        
        

        
        
    }
    
}
