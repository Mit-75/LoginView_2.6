//
//  SecondViewController.swift
//  LoginView_2.6
//
//  Created by Dmitry Parhomenko on 26.11.2023.
//

import UIKit

final class SecondViewController: UIViewController {
    
    @IBOutlet var logOutBatton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutBatton.layer.cornerRadius = 10
        
    }
    
    @IBAction func logAutButtonAction() {
        dismiss(animated: true)
    }
    

}
