//
//  ViewController.swift
//  Display 2 type
//
//  Created by Chien on 3/15/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataVC :String?
    @IBOutlet weak var txtData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtData.text = dataVC
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataVC = txtData.text
    }

}

