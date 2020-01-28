//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Kelvin Cheng on 1/19/20.
//  Copyright © 2020 Kelvin Cheng. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // initialize variables
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalImages = 9
    var totalNumberOfSounds = 6
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    // play sound function
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name)
        {
            do
            {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch
            {
                print("ERROR: \(error.localizedDescription) could not initialize AVAudioPlayer object")
            }
            
        }
        else
        {
            print("ERROR: Could not read data from sound file.")
        }
    }
    
    // function that generates non repeating random numbers
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int
    {
        var newNumber: Int
        repeat
        {
            print("We had a repeating value")
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // array of messages
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "You are fabulous!", "You are basically Steve Jobs and Bill Gates combined!", "You are a superb programmer bro!"]
        
        // messages
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count - 1)
        messageLabel.text = messages[messageNumber]
        
        // images
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalImages - 1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        // sounds
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds - 1)
        print("Sound number is \(soundNumber)")
        playSound(name: "sound\(soundNumber)")
    }
}
