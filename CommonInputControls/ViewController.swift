//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Artem Listopadov on 12/16/20.
//  Copyright © 2020 Artem Listopadov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelPlaceHolder: UILabel!
    @IBOutlet weak var textFieldForPlaceHolder: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    // Connect IBO и creat method in viewDidLoad
    @IBOutlet weak var button: UIButton!
    
// Отключен IBA
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button is tapped!")
        if toggle.isOn {
            print("The swich is on!")
        } else {
            print("The swich is off!")
        }
        print("The slider is set to \(slider.value)")
    }
    @IBAction func swichOnOff(_ sender: UISwitch) {
        if sender.isOn {
            print("Swich is ON!")
        } else {
            print("Swich is OFF!")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        print("Button is tapped!")
        labelPlaceHolder.text = textFieldForPlaceHolder.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        print("Button is tapped!")
        textFieldForPlaceHolder.text = ""
        labelPlaceHolder.text = ""
        
    }
    
}

