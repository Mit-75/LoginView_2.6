//
//  WelcomeViewController.swift
//  LoginView_2.6
//
//  Created by Dmitry Parhomenko on 26.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        welcomeLabel.text = "Welcome, \(welcomeString)!"
    }
}
