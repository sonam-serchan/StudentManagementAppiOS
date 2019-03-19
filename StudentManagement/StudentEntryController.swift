//
//  StudentEntryController.swift
//  StudentManagement
//
//  Created by Sonam Serchan on 4/10/18.
//  Copyright © 2018 Sonam Serchan. All rights reserved.
//

import UIKit

class StudentEntryController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var segGender: UISegmentedControl!
    @IBOutlet weak var pvCourse: UIPickerView!
    @IBOutlet weak var stepperAge: UIStepper!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var ageDisplay: UILabel!
    
    //data for courses
    let courses = ["MICT", "MBA", "MSC. CS", "MPA", "BIT", "BBA", "BHM"]
    
    var gender = "Male", unit = "MICT"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //initializing values for age stepper
        stepperAge.wraps = true
        stepperAge.autorepeat = true
        stepperAge.minimumValue = 20
        stepperAge.maximumValue = 50
        
        //connect picker view data source and delegate to this class
        pvCourse.delegate = self
        pvCourse.dataSource = self
    }
    
    //event to handle age values
    @IBAction func stepperChanged(_ sender: UIStepper) {
        ageDisplay.text = Int(stepperAge.value).description
    }
    
    //the number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //the number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    //the data to return for the row and the component that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    
    //to get the value of pickerview after a row being selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        unit = courses[row]
    }
    
    //save student info
    @IBAction func saveInfo(_ sender: UIBarButtonItem) {
        //get the AppDelegate Object
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //call function storePizzaInfo in AppDelegate
        appDelegate.storeStudentInfo(id: Int(id.text!)!, firstName: firstName.text!, lastName: lastName.text!, gender: segGender.titleForSegment(at: segGender.selectedSegmentIndex)!, course: unit, age: Int(ageDisplay.text!)!, address: address.text!)
        
        let alert = UIAlertController(title: "Message", message: "Student info saved successfully", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
        clearFields()
    }
    
    func clearFields(){
        id.text = ""
        firstName.text = ""
        lastName.text = ""
        address.text = ""
    }

}
