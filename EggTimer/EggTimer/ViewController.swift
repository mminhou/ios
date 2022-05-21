//
//  ViewController.swift
//  EggTimer
//
//  Created by CMM on 2022/05/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    var player: AVAudioPlayer!
    
    let eggTimes = ["Soft": 3, "Medium": 5, "Hard": 7]
    
    var totalTime = 0
    var secondsPasswd = 0
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.font = UIFont.systemFont(ofSize:30)
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        progressBar.progress = 0.0
        totalTime = eggTimes[sender.currentTitle!]!
        secondsPasswd = 0
        titleLabel.text = sender.currentTitle!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    
    }
    
    @objc func updateCounter() {
        if secondsPasswd < totalTime {
            secondsPasswd += 1
            let progressPercentage = Float(secondsPasswd) / Float(totalTime)
            
            progressBar.progress = progressPercentage
        } else {
            done()
        }
    }
    
    func done() {
        timer.invalidate()
        titleLabel.text = "Done"
        progressBar.progress = 1.0
        
//        let url = Bundle.main.url(forResource: "alram_sound", withExtension: "mp3")
//
//        player = try! AVAudioPlayer(contentsOf: url!)
//        player.play()
    }
}

