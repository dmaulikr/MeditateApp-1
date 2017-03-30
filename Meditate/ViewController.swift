//
//  ViewController.swift
//  Meditate
//
//  Created by Trent Bitterman on 3/19/17.
//  Copyright © 2017 Trent Bitterman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        var _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Creating the sounds that will play
    let beginSound = Sound(name: "beginSound", type: "aif")
    let endSound = Sound(name: "endSound", type: "aif")
    
    var count: Int = -1
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func oneMinuteButton(_ sender: UIButton) {
        meditate(length: 60)
    }
    
    @IBAction func fiveMinuteButton(_ sender: UIButton) {
        meditate(length: 300)
    }
    
    @IBAction func tenMinuteButton(_ sender: UIButton) {
        meditate(length: 600)
    }
    
    @IBAction func fifteenMinuteButton(_ sender: UIButton) {
        meditate(length: 900)
    }
    
    func updateTimer() {
        if count >= 0 {
            print("hey")
            if count == 0 {
                timerLabel.text = "00:00"
                endSound.play()
            }
            if count % 60 == 0 && count / 60 < 10 {
                timerLabel.text = "0\(count / 60):\(count % 60)0"
            } else if count % 60 == 0 {
                timerLabel.text = "\(count / 60):\(count % 60)0"
            } else if count / 60 < 10 {
                timerLabel.text = "0\(count / 60):\(count % 60)"
            } else {
                timerLabel.text = "\(count / 60):\(count % 60)"
            }
            if count < 10 {
                timerLabel.text = "0\(count / 60):0\(count % 60)"
            }
            count -= 1
        }
    }
    
    //Function that plays the sounds at the proper times
    public func meditate(length: UInt32) {
        count = Int(length)
        beginSound.play()
        //timerLabel.text = "\(length / 60):\(length % 60)0"
        updateTimer()
    }
}
