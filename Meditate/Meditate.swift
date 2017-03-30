//
//  Meditate.swift
//  Meditate
//
//  Created by Trent Bitterman on 3/29/17.
//  Copyright © 2017 Trent Bitterman. All rights reserved.
//

import Foundation

class Meditate {
    var count: Int
    
    public func meditate(length: UInt32) {
        count = Int(length)
        beginSound.play()
        //timerLabel.text = "\(length / 60):\(length % 60)0"
        updateTimer()
    }
    
    func updateTimer() {
        if count >= 0 {
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
}
