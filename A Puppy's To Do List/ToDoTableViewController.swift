//
//  ToDoTableViewController.swift
//  A Puppy's To Do List
//
//  Created by Aubree Lawrence on 8/27/19.
//  Copyright © 2019 Aubree Lawrence. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    var toDos = ["Eat", "Sleep", "Play"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = toDos[indexPath.row]

        return cell
    }

}
