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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addToDoButton(_ sender: Any) {
        var newToDo = ToDo()
        newToDo.important = markImportantSwitch.isOn
        
        if let enteredToDo = enterToDoField.text {
            newToDo.name = enteredToDo
        }
    }
    

}
