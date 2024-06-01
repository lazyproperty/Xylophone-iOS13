//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        let note = (sender.currentTitle)!
        
        play(sound: note)
        sender.alpha = 0.5
        
        //задержка

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            sender.alpha = 1
        }
                                      
        print("The note is \"\((sender.currentTitle)!)\"")
    }
    
    // create a func to play the sound
    
    func play(sound: String) {
        
      let url = Bundle.main.url(forResource: sound , withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
      }
    
}

