//
//  TaskViewController.swift
//  DoIt
//
//  Created by Patrick Raiford on 6/23/17.
//  Copyright © 2017 Patrick Raiford. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet weak var taskViewLabel: UILabel!
    var task = Task()
    var rowNumber = 0
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        taskViewLabel.text = task.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        
        previousVC.tasks.remove(at: rowNumber)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
