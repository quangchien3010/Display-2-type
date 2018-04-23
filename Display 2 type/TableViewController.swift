//
//  TableViewController.swift
//  Display 2 type
//
//  Created by Chien on 3/15/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let intData = IntDataSource()
    let stringData = StringDataSource()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = intData
    }

   //Dung switch nhan dien ON/OFF de pbhan biet 2 mang du lieu
    @IBAction func switchData(_ sender: UISwitch) {
        if sender.isOn {
            tableView.dataSource = intData
        } else {
            tableView.dataSource = stringData
        }
        tableView.reloadData()
    }
    
     //Truyen du lieu tu Viewcontroller ve TBviewcontroller
    @IBAction func unwind(sender : UIStoryboardSegue){
        let vc = sender.source as? ViewController
        let data = vc?.dataVC
        if tableView.dataSource === intData {
            if let index = tableView.indexPathForSelectedRow?.row{
                intData.arr[index] = Int(data!)!
                tableView.reloadData()
            } else {
            intData.arr.append(Int(data! )!)
                tableView.reloadData()
        
    }
        }
        if tableView.dataSource === stringData {
            if let indexx = tableView.indexPathForSelectedRow?.row {
                stringData.Str[indexx] = data!
                tableView.reloadData()
            } else {
                stringData.Str.append(data!)
                tableView.reloadData()
            }
        }
    }
    //Truyen du lieu tu  TBviewcontroller -> Viewcontroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let numberVC = segue.destination as? ViewController
        
        switch segue.identifier{
        case "EditDL"?:
            if tableView.dataSource === intData {
                numberVC?.dataVC = String(intData.arr[(tableView.indexPathForSelectedRow?.row)!])
              
            } else {
                numberVC?.dataVC = stringData.Str[(tableView.indexPathForSelectedRow?.row)!]
                           }
        default:
            break
        }
        
    }

    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

