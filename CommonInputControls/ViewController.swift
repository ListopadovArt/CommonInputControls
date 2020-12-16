//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Artem Listopadov on 12/16/20.
//  Copyright © 2020 Artem Listopadov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        print("Button is tapped!")
    }
    @IBAction func swichOnOff(_ sender: UISwitch) {
        if sender.isOn {
            print("Swich is ON!")
        } else {
            print("Swich is OFF!")
        }
    }
    
}

