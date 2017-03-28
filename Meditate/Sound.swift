//
//  Sound.swift
//  Meditate
//
//  Created by Trent Bitterman on 3/27/17.
//  Copyright © 2017 Trent Bitterman. All rights reserved.
//

import Foundation
import AudioToolbox

class Sound {
    var soundEffect: SystemSoundID = 0
    init(name: String, type: String) {
        let path  = Bundle.main.path(forResource: name, ofType: type)!
        let pathURL = NSURL(fileURLWithPath: path)
        AudioServicesCreateSystemSoundID(pathURL as CFURL, &soundEffect)
    }
    func play() {
        AudioServicesPlaySystemSound(soundEffect)
    }
}
