//
//  IntDataSource.swift
//  Display 2 type
//
//  Created by Chien on 3/15/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit
class IntDataSource : NSObject, UITableViewDataSource {
    
    var arr = [1,2,3,4,5,6]
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }
    
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
        cell.textLabel?.text = String(arr[indexPath.row])
        
     // Configure the cell...
     
     return cell
     }
    // Xoa 
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
        
    }
    
}
