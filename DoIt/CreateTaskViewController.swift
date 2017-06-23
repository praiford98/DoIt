//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Patrick Raiford on 6/23/17.
//  Copyright © 2017 Patrick Raiford. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add a new task to the array of the previous View Controller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    

    

}
