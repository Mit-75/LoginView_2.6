//
//  LoginViewController.swift
//  LoginView_2.6
//
//  Created by Dmitry Parhomenko on 26.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    // MARK: - Properties
    private let userName = "User"
    private let password = "123"
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 8
    }
    
    // MARK: - IBActions
    @IBAction func userNameButtonAction() {
        showAlert(
            withTitle: "Hello!",
            andMessage: "Your Name is \(userName)"
        )
    }
    
    @IBAction func passwordButtonAction() {
        showAlert(
            withTitle: "Ok!",
            andMessage: "Your password: \(password)"
        )
    }
    
    // MARK: - Methods
    override func touchesBegan(
        _ touches: Set<UITouch>,
        with event: UIEvent?
    ) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    private func showAlert(
        withTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAlert = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
    
    // MARK: - Navigation
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTF.text == userName,
              passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? WelcomeViewController
        secondVC?.welcomeString = userNameTF.text ?? ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
