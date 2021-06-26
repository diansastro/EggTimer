//
//  ViewController.swift
//  EggTimer
//
//  Created by gHost on 6/25/21.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let hardness =  sender.currentTitle
        
        switch hardness {
        case "Soft":
            print(eggTimes["Soft"]!)
        case "Medium":
            print(eggTimes["Medium"]!)
        case "Hard":
            print(eggTimes["Hard"]!)
        default:
            print("Error")
        }
    }
}

