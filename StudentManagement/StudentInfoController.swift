//
//  StudentInfoController.swift
//  StudentManagement
//
//  Created by Sonam Serchan on 4/10/18.
//  Copyright © 2018 Sonam Serchan. All rights reserved.
//

import UIKit
let studentInfo = student[myIndex]
let studentArr = studentInfo.components(separatedBy: ",")

class StudentInfoController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        petsName.text = studentArr[0]
        petsDesc.text = studentArr[1]
        gender.text = studentArr[2]
        course.text = studentArr[3]
        age.text = studentArr[4]
        address.text = studentArr[5]
    }
    
    @IBOutlet weak var petsName: UILabel!
    @IBOutlet weak var petsDesc: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var course: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var address: UILabel!
    
    @IBAction func deleteInfo(_ sender: UIBarButtonItem) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.deleteStudentInfo(sid:  petsName.text!)
        
        let alert = UIAlertController(title: "Message", message: "Student info deleted", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
        clearFields()
    }
    
    @IBAction func editInfo(_ sender: UIBarButtonItem) {
        
    }
    
    func clearFields(){
        petsName.text = ""
        petsDesc.text = ""
        gender.text = ""
        course.text = ""
        age.text = ""
        address.text = ""
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
