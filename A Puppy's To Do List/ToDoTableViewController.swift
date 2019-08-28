//
//  ToDoTableViewController.swift
//  A Puppy's To Do List
//
//  Created by Aubree Lawrence on 8/27/19.
//  Copyright © 2019 Aubree Lawrence. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    
    var toDos : [ToDo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toDo1 = ToDo()
        toDo1.name = "Sleep"
        
        let toDo2 = ToDo()
        toDo2.name = "Eat"
        toDo2.important = true
        
        let toDo3 = ToDo()
        toDo3.name = "Play"
        
        toDos = [toDo1, toDo2, toDo3]

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if toDos[indexPath.row].important {
            cell.textLabel?.text = "‼️ \(toDos[indexPath.row].name)"
        } else {
            cell.textLabel?.text = toDos[indexPath.row].name
        }

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addToDoVC = segue.destination as? addToDoViewController {
            addToDoVC.toDoTableVC = self
        }
    }
}
