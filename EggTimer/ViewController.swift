//
//  ViewController.swift
//  EggTimer
//
//  Created by gHost on 6/25/21.
//

import UIKit

class ViewController: UIViewController {

    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let hardness =  sender.currentTitle
        
        if hardness == "Soft" {
            print(softTime)
        } else if hardness == "Medium" {
            print(mediumTime)
        } else {
            print(hardTime)
        }
    }
}

