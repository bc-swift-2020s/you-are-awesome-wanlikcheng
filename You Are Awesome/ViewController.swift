//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Kelvin Cheng on 1/19/20.
//  Copyright © 2020 Kelvin Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func showMessageButton(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "You are fabulous!", "You are basically Steve Jobs and Bill Gates combined!", "You are a superb programmer bro!"]
        messageLabel.text = messages[Int.random(in: 0...messages.count - 1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalImages))")
        /* messageLabel.text = messages[messageNumber]
        messageNumber += 1
        if messageNumber == messages.count {
            messageNumber = 0
        } */
        
        print(imageNumber)
        //let imageName = "image" + String(imageNumber)
        /* let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        } */
        
        //        let awesomeMessage = "You are awesome!"
        //        let greatMessage = "You are great!"
        //        let bombMessage = "You are the bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        }
        //        else if messageLabel.text == greatMessage{
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        }
        //        else {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
        
    }
}
