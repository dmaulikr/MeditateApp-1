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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Creating the sounds that will play
    let beginSound = Sound(name: "beginSound", type: "aif")
    let endSound = Sound(name: "endSound", type: "aif")
    
    
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
    
    //Function that plays the sounds at the proper times
    func meditate(length: UInt32) {
        beginSound.play()
        sleep(length)
        endSound.play()
    }
}

