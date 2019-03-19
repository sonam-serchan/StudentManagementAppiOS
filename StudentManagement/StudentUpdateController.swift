//
//  StudentUpdateController.swift
//  StudentManagement
//
//  Created by Sonam Serchan on 5/10/18.
//  Copyright © 2018 Sonam Serchan. All rights reserved.
//

import UIKit

class StudentUpdateController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var segGender: UISegmentedControl!
    @IBOutlet weak var pvCourse: UIPickerView!
    @IBOutlet weak var stepperAge: UIStepper!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var address: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        id.text = studentArr[0]
        let name = studentArr[1].components(separatedBy: " ")
        firstName.text = name[1]
        lastName.text = name[2]
        if studentArr[2] == "Male" {
            segGender.selectedSegmentIndex = 0
        } else {
            segGender.selectedSegmentIndex = 1
        }
        address.text = studentArr[5]
    }
    
    @IBAction func update(_ sender: UIBarButtonItem) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
