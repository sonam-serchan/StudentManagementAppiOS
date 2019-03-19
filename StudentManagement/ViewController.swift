//
//  ViewController.swift
//  StudentManagement
//
//  Created by Sonam Serchan on 3/10/18.
//  Copyright © 2018 Sonam Serchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var message: UILabel!
    @IBAction func login(_ sender: UIButton) {
        if username.text == "sonam" && password.text == "serchan"{
            performSegue(withIdentifier: "loginSegue", sender: self)
        } else {
            message.text = "Wrong username or password!"
        }
    }
    
}

