//
//  WelcomeViewController.swift
//  LoginView_2.6
//
//  Created by Dmitry Parhomenko on 26.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var logOutBatton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLab: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutBatton.layer.cornerRadius = 10
        welcomeLabel.text = "Welcome, \(welcomeLab)!"
    }
}
