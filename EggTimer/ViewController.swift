//
//  ViewController.swift
//  EggTimer
//
//  Created by gHost on 6/25/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var eggTimerInfo: UILabel!
    var player: AVAudioPlayer?
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness =  sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondPassed = 0
        eggTimerInfo.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    // Objc C function selector
    @objc func updateTimer() {
        if secondPassed < totalTime {
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            eggTimerInfo.text = "DONE!"
            playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}

