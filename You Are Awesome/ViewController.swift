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
    
    var imageNumber = -1
    var messageNumber = -1
    let totalImages = 9
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "You are fabulous!", "You are basically Steve Jobs and Bill Gates combined!", "You are a superb programmer bro!"]
        
        var newMessageNumber: Int
        repeat
        {
            print("We had a repeating value")
            newMessageNumber = Int.random(in: 0...messages.count - 1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[newMessageNumber]
        
        var newImageNumber: Int
        repeat
        {
            print("We had a repeating image")
            newImageNumber = Int.random(in: 0...totalImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0")
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
}
