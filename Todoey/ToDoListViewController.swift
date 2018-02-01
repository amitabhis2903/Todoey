//
//  ViewController.swift
//  Todoey
//
//  Created by Ammy Pandey on 01/02/18.
//  Copyright © 2018 Ammy Pandey. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    
    var item = ["Car", "Bike", "Train"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    //MARK: Table View Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell")
        cell?.textLabel?.text = item[indexPath.row]
        return cell!
    }

    //MARK: Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Print Row Number
        print(indexPath.row)
        //print Item of Array
        print(item[indexPath.row])
        
        //Achieve Checkmark on table
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //Make animated behaviour in selcting row
        tableView.deselectRow(at: indexPath, animated: true)
        
        //Achieve Checkmark on table
        
    }
}

