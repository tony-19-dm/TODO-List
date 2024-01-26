//
//  TaskVC.swift
//  TODO-List
//
//  Created by Антон Дмитриев on 23.01.2024.
//

import UIKit

class TaskVC: UIViewController {
    
    @IBOutlet weak var userTaskField: UITextField!
    
    weak var saveTaskDelegate: SaveUserTaskDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveTaskBtnPressed(_ sender: Any) {
        if let task = userTaskField.text {
            if !task.isEmpty {
                let task = TaskModel(taskName: task, taskCellColor: .white)
                saveTaskDelegate?.saveTask(task: task)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
