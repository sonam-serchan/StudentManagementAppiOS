//
//  StudentTableViewController.swift
//  StudentManagement
//
//  Created by Sonam Serchan on 4/10/18.
//  Copyright © 2018 Sonam Serchan. All rights reserved.
//

import UIKit

var myIndex = 0
let appDelegate = UIApplication.shared.delegate as! AppDelegate
let student: [String] = appDelegate.getStudentInfo()

class StudentTableViewController: UITableViewController {

 
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return student.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        cell.textLabel!.text = student[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "studentSegue", sender: self)
    }
}
