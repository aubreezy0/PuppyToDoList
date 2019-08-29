//
//  addToDoViewController.swift
//  A Puppy's To Do List
//
//  Created by Aubree Lawrence on 8/27/19.
//  Copyright © 2019 Aubree Lawrence. All rights reserved.
//

import UIKit

class addToDoViewController: UIViewController {

    @IBOutlet weak var enterToDoField: UITextField!
    @IBOutlet weak var markImportantSwitch: UISwitch!
    var toDoTableVC : ToDoTableViewController? = nil
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addToDoButton(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.important = markImportantSwitch.isOn
        
        if let name = enterToDoField.text {
            newToDo.name = name
        }
        toDoTableVC?.toDos.append(newToDo)
        toDoTableVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    

}
