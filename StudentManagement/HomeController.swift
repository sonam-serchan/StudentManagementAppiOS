//
//  HomeController.swift
//  StudentManagement
//
//  Created by Sonam Serchan on 4/10/18.
//  Copyright © 2018 Sonam Serchan. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var ivStudent: UIImageView!
    @IBOutlet weak var ivExam: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //student segue
        let studentTapGesture = UITapGestureRecognizer(target: self, action: #selector(HomeController.studentTap))
        
        ivStudent.addGestureRecognizer(studentTapGesture)
        ivStudent.isUserInteractionEnabled = true

    }
    
    @objc func studentTap(){
        performSegue(withIdentifier: "studentSegue", sender: self)
    }
    
}
